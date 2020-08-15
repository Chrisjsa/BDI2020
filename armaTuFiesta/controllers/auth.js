const moment = require("moment")

const { connection } = require("../database")
const { SIGN_UP, SIGN_IN, LOAD_USER } = require("../sql/authQueries")

const {
  LEER_ROL_USUARIO,
  LEER_PERMISOS_USUARIO,
} = require("../sql/rolesQueries")

const jwt = require("jsonwebtoken")

exports.signUp = async (req, res) => {
  const {
    username,
    password,
    p_nombre,
    s_nombre,
    p_apellido,
    s_apellido,
    correo,
    telefono,
    sexo,
    cedula,
    estadoCivil: estado_civil,
    fecha_nacimiento,
    parroquia,
  } = req.body

  const data = [
    parroquia,
    cedula,
    p_nombre,
    s_nombre,
    p_apellido,
    s_apellido,
    moment(fecha_nacimiento).format("YYYY-MM-DD"),
    sexo,
    estado_civil,
    cedula,
    username,
    password,
    telefono,
  ]

  connection.query(SIGN_UP, data, error => {
    if (error) return res.status(400).send(error)
  })

  connection.query(SIGN_IN, [username], (error, rows) => {
    if (error) return res.status(400).send({ message: error })

    const user = rows.pop()

    console.table(user)

    const token = jwt.sign({ id: user.id_usuario }, process.env.JWT_SECRET)
    return res.json({ token, user })
  })
}

exports.signIn = (req, res) => {
  const { username, password } = req.body

  if (!username || !password)
    return res.status(500).send({ message: "Todos los campos son requeridos" })

  connection.query(SIGN_IN, [username], async (error, rows) => {
    if (error) return res.status(400).send({ message: error })

    const user = rows.pop()

    // Check if user exists
    if (!user) {
      return res.status(400).json({
        message: "No hay usuario con este correo. Regístratre",
      })
    }

    if (!(password === user.password)) {
      return res
        .status(400)
        .json({ message: "Usuario y/o contraseña incorrectos" })
    }
    user.password = undefined

    // Generate sign token with secret
    const token = jwt.sign({ id: user.id_usuario }, process.env.JWT_SECRET)
    res.cookie("t", token, { expire: new Date() + 9999 })
    return res.json({ token, user })
  })
}

exports.signOut = (req, res) => {
  res.clearCookie("t")
  res.json({ mgs: "Signout success" })
}

exports.loadUser = (req, res) => {
  var user = undefined
  var fk_persona = undefined

  connection.query(LOAD_USER, [req.userId], async (error, rows) => {
    if (error) {
      return res.status(400).send(error)
    }

    user = rows.pop()
    console.log("query3", user)
  })

  connection.query(LEER_PERMISOS_USUARIO, [req.userId], async (error, rows) => {
    if (error) {
      return res.status(400).send(error)
    }

    user.permisos = rows[1].map(row => row.permiso)
  })

  connection.query(LEER_ROL_USUARIO, [req.userId], async (error, rows) => {
    if (error) {
      return res.status(400).send(error)
    }

    return res.json(user)
  })
}
