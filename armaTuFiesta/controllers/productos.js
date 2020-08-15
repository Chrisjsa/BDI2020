const { connection } = require("../database")
const {
  AGREGAR_SERVICIOS,
  AGREGAR_PRODUCTOS,
  LEER_PRODUCTOS,
  LEER_SERVICIOS,
} = require("../sql/productosQueries")

exports.agregarServicios = (req, res) => {
  const data = []
  connection.query(AGREGAR_SERVICIOS, [data], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.agregarProductos = (req, res) => {
  const data = []
  connection.query(AGREGAR_PRODUCTOS, [data], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.leerProductos = (req, res) => {
  const data = []
  connection.query(LEER_PRODUCTOS, [data], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.leerServicios = (req, res) => {
  const data = []
  connection.query(LEER_SERVICIOS, [data], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
