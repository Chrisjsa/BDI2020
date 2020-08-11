const { connection } = require("../database")
const {
  LEER_CLIENTES,
  ACTUALIZAR_CLIENTES,
  CREAR_CLIENTES,
  ELIMINAR_CLIENTES,
  CREAR_OTROS_USUARIOS,
} = require("../sql/clientesQueries")

const moment = require("moment")

exports.leerCliente = (req, res) => {
  connection.query(LEER_CLIENTES, (error, rows, fields) => {
    if (error) {
      return res.status(400).send(error.message)
    }

    columns = fields.map(field => ({
      name: field.name,
      selector: field.name,
    }))

    return res.json({ rows, columns })
  })
}

exports.crearCliente = (req, res) => {
  const {
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

  const password = "gibberish"

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
    telefono,
    correo,
    correo,
    password,
  ]

  connection.query(CREAR_CLIENTES, [...data], (error, rows) => {
    if (error) {
      return res.status(400).send({ message: error.message })
    }
    return res.json(rows)
  })
}

exports.crearOtroUsuario = (req, res) => {
  connection.query(CREAR_OTROS_USUARIOS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }

    return res.json(rows)
  })
}

exports.actualizarCliente = (req, res) => {
  const { id_persona, telefono, correo } = req.body

  password = "gibberish"

  const data = [id_persona, telefono, correo, correo, password]

  connection.query(ACTUALIZAR_CLIENTES, data, (error, rows) => {
    if (error) {
      return res.status(400).send({ message: error.message })
    }

    return res.json(rows)
  })
}

exports.eliminarCliente = (req, res) => {
  connection.query(
    ELIMINAR_CLIENTES,
    [req.params.id_cliente],
    (error, rows) => {
      if (error) {
        return res.status(400).send({ message: error.message })
      }

      return res.json(rows)
    }
  )
}
