const { connection } = require("../database")
const {
  LEER_CLIENTES,
  ACTUALIZAR_CLIENTES,
  CREAR_CLIENTES,
  ELIMINAR_CLIENTES,
  CREAR_OTROS_USUARIOS,
} = require("../sql/clientesQueries")

<<<<<<< HEAD
exports.leerCliente = (req, res) => {
=======
exports.leerClientes = (req, res) => {
  // agregar fields (error, rows) -> (error, rows, fields)
>>>>>>> 2ddb2bd00c4343785692308fbba490b79030889e
  connection.query(LEER_CLIENTES, (error, rows, fields) => {
    if (error) {
      return res.status(400).send(error.message)
    }

<<<<<<< HEAD
      columns = fields.map(field => ({
      name: field.name,
      selector: field.name,
    }))
    return res.json(rows, columns)
  })
}

exports.crearCliente = (req, res) => {
  connection.query(CREAR_CLIENTES, (error, rows, fields) => {
=======
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
>>>>>>> 2ddb2bd00c4343785692308fbba490b79030889e
    if (error) {
      return res.status(400).send(error.message)
    }

    columns = fields.map(field => ({
      name: field.name,
      selector: field.name,
    }))

    return res.json(rows, columns)
  })
}

<<<<<<< HEAD
exports.crearOtroUsuario = (req, res) => {
  connection.query(CREAR_OTROS_USUARIOS, (error, rows, fields) => {
    if (error) {
      return res.status(400).send(error.message)
    }

      columns = fields.map(field => ({
      name: field.name,
      selector: field.name,
    }))

    return res.json(rows, columns)
=======
exports.crearCliente = (req, res) => {
  connection.query(CREAR_CLIENTES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
>>>>>>> 2ddb2bd00c4343785692308fbba490b79030889e
  })
}

exports.actualizarCliente = (req, res) => {
  connection.query(ACTUALIZAR_CLIENTES, (error, rows, fields) => {
    if (error) {
      return res.status(400).send(error.message)
    }

      columns = fields.map(field => ({
      name: field.name,
      selector: field.name,
    }))

    return res.json(rows, columns)
  })
}
<<<<<<< HEAD

exports.eliminarCliente = (req, res) => {
  connection.query(ELIMINAR_CLIENTES, (error, rows, fields) => {
    if (error) {
      return res.status(400).send(error.message)
    }

    columns = fields.map(field => ({
      name: field.name,
      selector: field.name,
    }))

    return res.json( rows, columns )
  })
}
=======
>>>>>>> 2ddb2bd00c4343785692308fbba490b79030889e
