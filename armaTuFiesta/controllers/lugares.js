const { connection } = require("../database")
const {
  LEER_LUGARES_ESTADOS,
  LEER_LUGARES_MUNICIPIOS,
  LEER_LUGARES_PARROQUIAS,
} = require("../sql/lugaresQueries")

exports.leerLugarEstado = (req, res) => {
  connection.query(LEER_LUGARES_ESTADOS, (error, rows, fields) => {
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

exports.leerLugarMunicipio = (req, res) => {
  connection.query(
    LEER_LUGARES_MUNICIPIOS,
    req.query.id_estado,
    (error, rows, fields) => {
      if (error) {
        return res.status(400).send(error.message)
      }
      columns = fields.map(field => ({
        name: field.name,
        selector: field.name,
      }))
      return res.json(rows, columns)
    }
  )
}

exports.leerLugarParroquia = (req, res) => {
  connection.query(
    LEER_LUGARES_PARROQUIAS,
    req.query.id_municipio,
    (error, rows, fields) => {
      if (error) {
        return res.status(400).send(error.message)
      }
      columns = fields.map(field => ({
        name: field.name,
        selector: field.name,
      }))
      return res.json(rows, columns)
    }
  )
}
