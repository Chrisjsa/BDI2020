const { connection } = require("../database")
const {  } = require("../sql/cursosQueries")

exports.leerCurso = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}

exports.crearCurso = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}


exports.actualizarCurso = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}

exports.eliminarCurso = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}