const { connection } = require("../database")
const { LEER_NOTARIAS } = require("../sql/notariasQueries")

exports.leerNotarias = (req, res) => {
  connection.query(LEER_NOTARIAS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.crearNotaria = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json({ rows })
  })
}

exports.actualizarNotaria = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json({ rows })
  })
}

exports.eliminarNotaria = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json({ rows })
  })
}
// routes -> queries -> controllers
