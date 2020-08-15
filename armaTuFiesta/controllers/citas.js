const { connection } = require("../database")
const {
  LEER_SERVICIOS,
  INSERTAR_CITA,
  LEER_CITAS_USUARIO,
} = require("../sql/citasQueries")

exports.leerServicios = (req, res) => {
  const data = []
  connection.query(LEER_SERVICIOS, [data], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.insertarCita = (req, res) => {
  const { id_usuario, id_servicio, fecha } = req.body
  const data = [id_usuario, id_servicio, fecha]

  connection.query(INSERTAR_CITA, data, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.leerCitasUsuario = (req, res) => {
  connection.query(
    LEER_CITAS_USUARIO,
    [req.query.id_usuario],
    (error, rows) => {
      if (error) {
        return res.status(400).send(error.message)
      }
      return res.json(rows[1])
    }
  )
}
