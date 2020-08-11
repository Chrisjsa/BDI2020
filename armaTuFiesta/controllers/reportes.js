const { connection } = require("../database")
const {
  REPORTE_1,
  REPORTE_2,
  REPORTE_3_INGRESOS,
  REPORTE_3_EGRESOS,
  REPORTE_4,
} = require("../sql/reportesQueries")

exports.obtenerReporte1 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const data = [fechaInicial, fechaFinal]

  connection.query(REPORTE_1, data, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.obtenerReporte2 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  connection.query(REPORTE_2, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.obtenerReporteIngreso = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  connection.query(REPORTE_3_INGRESOS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.obtenerReporteEgreso = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  connection.query(REPORTE_3_EGRESOS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.obtenerReporte4 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  connection.query(REPORTE_4, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
