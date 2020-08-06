const { connection } = require("../database")
const {
  LEER_TIPS,
  ACTUALIZAR_TIPS,
  ELIMINAR_TIPS,
  CREAR_TIPS,
} = require("../sql/tipsQueries")

exports.leerTip = (req, res) => {
  connection.query(LEER_TIPS, (error, rows, fields) => {
    if (error) {
      return res.status(400).send(error.message)
    }

    columns = fields.map(field => ({
      name: field.name,
      selector: field.name,
    }))

    return res.json({ rows, columns })
  })
}

exports.crearTip = (req, res) => {
  const { tipo, descripcion } = req.body

  const data = [tipo, descripcion]

  connection.query(CREAR_TIPS, data, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.actualizarTip = (req, res) => {
  const { id_tip, descripcion } = req.body

  const data = [id_tip, descripcion]

  connection.query(ACTUALIZAR_TIPS, data, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.eliminarTip = (req, res) => {
  connection.query(ELIMINAR_TIPS, [req.params.id_tip], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
