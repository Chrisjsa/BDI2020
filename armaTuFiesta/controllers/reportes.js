const { connection } = require("../database")
const {
  REPORTE_1,
  REPORTE_2,
  REPORTE_3,
  REPORTE_4,
} = require("../sql/reportesQueries")

const fs = require("fs")
const carbone = require("carbone")

var options = {
  convertTo: "pdf",
}

exports.obtenerReporte1 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const queryData = [fechaInicial, fechaFinal]

  // MySQL
  // connection.query(REPORTE_1, queryData, (error, rows) => {
  //   if (error) return res.status(400).send(error.message)

  //   console.log(rows)
  // })

  // Carbone
  carbone.render("./reports/reporte1.docx", [], options, (error, result) => {
    if (error) return console.log(error)

    fs.writeFileSync("./reports/reporte1.pdf", result)
    return res.send(result)
  })
}

exports.obtenerReporte2 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const data = [fechaInicial, fechaFinal]

  connection.query(REPORTE_2, data, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    return res.json(rows)
  })
}

exports.obtenerReporte3 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const data = [fechaInicial, fechaFinal]

  connection.query(REPORTE_3, data, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.obtenerReporte4 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const data = [fechaInicial, fechaFinal]

  connection.query(REPORTE_4, data, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
