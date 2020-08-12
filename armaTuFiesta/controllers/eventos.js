const { connection } = require("../database")
const { LEER_EVENTOS_POR_USUARIO } = require("../sql/eventosQueries")

exports.leerEventosPorUsuario = (req, res) => {
  connection.query(
    LEER_EVENTOS_POR_USUARIO,
    [req.body.correo],
    (error, rows) => {
      if (error) {
        return res.status(400).send(error.message)
      }
      return res.json(rows)
    }
  )
}
