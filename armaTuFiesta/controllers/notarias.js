const { connection } = require("../database")
const {
  LEER_NOTARIAS,
  CREAR_NOTARIAS,
  ACTUALIZAR_NOTARIAS,
  ELIMINAR_NOTARIAS,
} = require("../sql/notariasQueries")

exports.leerNotarias = (req, res) => {
  connection.query(LEER_NOTARIAS, (error, rows, fields) => {
    if (error) {
      return res.status(400).send(error.message)
    }

    columns = fields.map(field => ({
      label: field.name,
      field: field.name,
      width: 100,
    }))

    return res.json({ rows, columns })
  })
}

exports.crearNotaria = (req, res) => {
  connection.query(CREAR_NOTARIAS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.actualizarNotaria = (req, res) => {
  const { id_locacion, nombre, notario } = req.body

  connection.query(
    ACTUALIZAR_NOTARIAS,
    [id_locacion, nombre, notario],
    (error, rows) => {
      if (error) {
        return res.status(400).send(error.message)
      }
      return res.json(rows)
    }
  )
}

exports.eliminarNotaria = (req, res) => {
  connection.query(ELIMINAR_NOTARIAS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
// routes -> queries -> controllers
