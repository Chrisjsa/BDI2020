const { connection } = require("../database")

const {
  LEER_EVENTOS_POR_USUARIO,
  LEER_SERVICIOS_EVENTOS,
  LEER_CATEGORIA,
} = require("../sql/eventosQueries")

exports.leerEventosPorUsuario = (req, res) => {
  connection.query(
    LEER_EVENTOS_POR_USUARIO,
    [req.query.correo],
    (error, rows) => {
      if (error) {
        return res.status(400).send(error.message)
      }
      return res.json(rows)
    }
  )
}

exports.leerServiciosEvento = (req, res) => {
  connection.query(
    LEER_SERVICIOS_EVENTOS,
    [req.query.id_evento, req.query.id_evento],
    (error, rows) => {
      if (error) {
        return res.status(400).send(error.message)
      }

      return res.json(rows.pop())
    }
  )
}

exports.leerCategoria = (req, res) => {
  connection.query(LEER_CATEGORIA, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
