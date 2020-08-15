const { connection } = require("../database")
const { LEER_SERVICIOS } = require("../sql/citasQueries")

exports.leerServicios = (req, res) => {
  const data = []
  connection.query(LEER_SERVICIOS, [data], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
