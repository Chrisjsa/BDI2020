const { connection } = require("../database")
const {  } = require("../sql/caracteristicasQueries")

exports.leerCaracteristica = (req, res) => {
  connection.query("", (error, rows, fields) => {
    if (error) {
      return res.status(400).send(error.message)
    }

    columns = fields.map(field => ({
      name: field.name,
      selector: field.name,
    }))
    return res.json( {rows, columns} )
  })
}

exports.crearCaracteristica = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    
    return res.json( rows )
  })
}


exports.actualizarCaracteristica = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}

exports.eliminarCaracteristica = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    
    return res.json( {rows, columns} )
  })
}