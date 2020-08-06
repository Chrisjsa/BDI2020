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
  connection.query(CREAR_TIPS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.actualizarTip = (req, res) => {
  connection.query(ACTUALIZAR_TIPS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.eliminarTip = (req, res) => {
  connection.query(ELIMINAR_TIPS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
