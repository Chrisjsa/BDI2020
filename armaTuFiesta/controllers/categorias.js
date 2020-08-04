const { connection } = require("../database")
const {
  LEER_CATEGORIAS,
  CREAR_CATEGORIAS,
  ELIMINAR_CATEGORIAS,
  ACTUALIZAR_CATEGORIAS,
} = require("../sql/categoriasQueries")

exports.leerCategoria = (req, res) => {
  connection.query(LEER_CATEGORIAS, (error, rows, fields) => {
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

exports.crearCategoria = (req, res) => {
  connection.query(CREAR_CATEGORIAS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }

    return res.json(rows)
  })
}

exports.actualizarCategoria = (req, res) => {
  connection.query(ACTUALIZAR_CATEGORIAS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }

    return res.json(rows)
  })
}

exports.eliminarCategoria = (req, res) => {
  connection.query(ELIMINAR_CATEGORIAS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
