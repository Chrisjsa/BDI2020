const { connection } = require("../database")
const {
  LEER_CLIENTES,
  ACTUALIZAR_CLIENTES,
  CREAR_CLIENTES,
  ELIMINAR_CLIENTES,
  CREAR_OTROS_USUARIOS,
} = require("../sql/clientesQueries")

exports.leerClientes = (req, res) => {
  // agregar fields (error, rows) -> (error, rows, fields)
  connection.query(LEER_CLIENTES, (error, rows, fields) => {
    if (error) {
      return res.status(400).send(error.message)
    }

    // esto tal cual
    columns = fields.map(field => ({
      name: field.name,
      selector: field.name,
    }))

    // rows -> { rows, columns }
    return res.json({ rows, columns })
  })
}

exports.leerCliente = (req, res) => {
  connection.query(LEER_CLIENTES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.crearCliente = (req, res) => {
  connection.query(CREAR_CLIENTES, (error, rows) => {
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
