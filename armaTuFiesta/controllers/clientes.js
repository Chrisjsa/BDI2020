const { connection } = require("../database")
const {
  LEER_CLIENTES,
  ACTUALIZAR_CLIENTES,
  CREAR_CLIENTES,
  ELIMINAR_CLIENTES,
  CREAR_OTROS_USUARIOS,
} = require("../sql/clientesQueries")

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
    estadoCivil: estado_civil,
    fecha_nacimiento,
    parroquia,
  } = req.body

  const data = [] // <-- aqui va la data
  return res.json("hello from backned")

  connection.query(CREAR_CLIENTES, data, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
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
  connection.query(ACTUALIZAR_CLIENTES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }

    return res.json(rows)
  })
}

exports.eliminarCliente = (req, res) => {
  connection.query(ELIMINAR_CLIENTES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }

    return res.json(rows)
  })
}
