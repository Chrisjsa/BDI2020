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
      name: field.name,
      selector: field.name,
    }))

    return res.json({ rows, columns })
  })
}

exports.crearNotaria = (req, res) => {
  console.table(req.body)

  const { estado, nombre, notario, telefono, latitud, longitud } = req.body

  const data = [estado, nombre, nombre, notario, telefono, latitud, longitud]

  connection.query(CREAR_NOTARIAS, data, (error, rows) => {
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
  connection.query(
    ELIMINAR_NOTARIAS,
    [req.params.id_notaria],
    (error, rows) => {
      if (error) {
        return res.status(400).send(error.message)
      }

      return res.json(rows)
    }
  )
}
