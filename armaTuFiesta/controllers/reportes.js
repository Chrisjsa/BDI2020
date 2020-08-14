const { connection } = require("../database")
const {
  REPORTE_1,
  REPORTE_2,
  REPORTE_3,
  REPORTE_4,
  EVENTOS_POR_FECHA,
} = require("../sql/reportesQueries")

const fs = require("fs")
const carbone = require("carbone")
const moment = require("moment")

var options = {
  convertTo: "pdf",
}

const toDate = date => moment(date).format("DD / MM / YYYY")

exports.obtenerReporte1 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const queryData = [
    moment(fechaInicial).format("YYYY-MM-DD"),
    moment(fechaFinal).format("YYYY-MM-DD"),
  ]

  console.log(queryData)
  let reportData = {}

  // MySQL
  connection.query(REPORTE_1, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    const results = JSON.parse(JSON.stringify(rows[2])).pop()

    reportData = { ...reportData, ...results }
  })

  connection.query(EVENTOS_POR_FECHA, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    results = JSON.parse(JSON.stringify(rows[2]))

    console.log(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
    reportData = { ...reportData, eventos: results }
    console.log("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<")

    reportData = {
      ...reportData,
      fechaInicial: moment(fechaInicial).format("DD/MM/YYYY"),
      fechaFinal: moment(fechaFinal).format("DD/MM/YYYY"),
      s: "s",
    }

    const json = JSON.stringify(reportData)

    // reportData = {
    //   ...reportData,
    //   json,
    // }

    // Carbone
    carbone.render(
      "./reports/reporte1.docx",
      reportData,
      options,
      (error, result) => {
        if (error) return console.log(error)

        fs.writeFileSync("./reports/reporte1.pdf", result)
        return res.send(result)
      }
    )
  })
}

exports.obtenerReporte2 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const data = [fechaInicial, fechaFinal]

  connection.query(REPORTE_2, data, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    return res.json(rows)
  })
  connection.query(EVENTOS_POR_FECHA, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    console.log(rows)
    // va aca -->
  })
  // (1) esto ---> return res.json({ rows: rows.pop() })
  carbone.render("./reports/reporte1.docx", [], options, (error, result) => {
    if (error) return console.log(error)

    fs.writeFileSync("./reports/reporte1.pdf", result)
    return res.send(result)
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

  connection.query(EVENTOS_POR_FECHA, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    console.log(rows)
  })
  return res.json({ rows: rows.pop() })

  carbone.render("./reports/reporte1.docx", [], options, (error, result) => {
    if (error) return console.log(error)

    fs.writeFileSync("./reports/reporte1.pdf", result)
    return res.send(result)
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

  connection.query(EVENTOS_POR_FECHA, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    console.log(rows)
  })
  return res.json({ rows: rows.pop() })

  carbone.render("./reports/reporte1.docx", [], options, (error, result) => {
    if (error) return console.log(error)

    fs.writeFileSync("./reports/reporte1.pdf", result)
    return res.send(result)
  })
}
