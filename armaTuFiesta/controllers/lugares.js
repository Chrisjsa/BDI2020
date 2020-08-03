const { connection } = require("../database")
const {
  LEER_LUGARES_ESTADOS,
  LEER_LUGARES_MUNICIPIOS,
  LEER_LUGARES_PARROQUIAS,
} = require("../sql/lugaresQueries")

exports.leerLugarEstado = (req, res) => {
  connection.query(LEER_LUGARES_ESTADOS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.leerLugarMunicipio = (req, res) => {
  connection.query(
    LEER_LUGARES_MUNICIPIOS,
    req.query.id_estado,
    (error, rows) => {
      if (error) {
        return res.status(400).send(error.message)
      }
      return res.json(rows)
    }
  )
}

exports.leerLugarParroquia = (req, res) => {
  connection.query(
    LEER_LUGARES_PARROQUIAS,
    req.query.id_municipio,
    (error, rows) => {
      if (error) {
        return res.status(400).send(error.message)
      }
      return res.json(rows)
    }
  )
}
