const { connection } = require("../database")
const {} = require("../sql/clientesQueries")

exports.leerClientes = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.crearCliente = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.actualizarCliente = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
