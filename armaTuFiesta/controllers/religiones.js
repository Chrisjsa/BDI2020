const { connection } = require("../database")
const {  } = require("../sql/religionesQueries")

exports.leerReligion = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json({ rows })
  })
}

exports.crearReligion = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json({ rows })
  })
}


exports.actualizarReligion = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json({ rows })
  })
}

exports.eliminarReligion = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json({ rows })
  })
}