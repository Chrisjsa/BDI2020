const { connection } = require("../database")
const {
  REPORTE_1,
  REPORTE_2,
  REPORTE_3,
  REPORTE_4,
  EVENTOS_POR_FECHA,
  EGRESOS,
  INGRESOS,
  DETALLE_EGRESOS,
  DETALLE_INGRESOS,
  WINKLER,
  TOMAS,
  CHRIS,
} = require("../sql/reportesQueries")

const fs = require("fs")
const carbone = require("carbone")
const moment = require("moment")

var options = {
  convertTo: "pdf",
}

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

    let results = JSON.parse(JSON.stringify(rows[2])).pop()

    reportData = { ...reportData, ...results }
  })

  connection.query(EVENTOS_POR_FECHA, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    results = JSON.parse(JSON.stringify(rows[2]))

    reportData = { ...reportData, eventos: results }

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

  const queryData = [
    moment(fechaInicial).format("YYYY-MM-DD"),
    moment(fechaFinal).format("YYYY-MM-DD"),
  ]

  console.log(queryData)
  let reportData = {}

  connection.query(REPORTE_2, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    results = JSON.parse(JSON.stringify(rows[2]))

    reportData = { ...reportData, servicios: results }

    reportData = {
      ...reportData,
      fechaInicial: moment(fechaInicial).format("DD/MM/YYYY"),
      fechaFinal: moment(fechaFinal).format("DD/MM/YYYY"),
      s: "s",
    }

    carbone.render(
      "./reports/reporte2.docx",
      reportData,
      options,
      (error, result) => {
        if (error) return console.log(error)

        fs.writeFileSync("./reports/reporte2.pdf", result)
        return res.send(result)
      }
    )
  })
}

exports.obtenerReporte3 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const queryData = [
    moment(fechaInicial).format("YYYY-MM-DD"),
    moment(fechaFinal).format("YYYY-MM-DD"),
  ]

  console.log(queryData)
  let reportData = {}

  connection.query(EGRESOS, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    let results = JSON.parse(JSON.stringify(rows[2])).pop()

    reportData = { ...reportData, ...results }
  })

  connection.query(DETALLE_EGRESOS, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    results = JSON.parse(JSON.stringify(rows[2]))

    reportData = { ...reportData, egresos: results }
  })

  connection.query(INGRESOS, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    let results = JSON.parse(JSON.stringify(rows[2])).pop()

    reportData = { ...reportData, ...results }
  })

  connection.query(DETALLE_INGRESOS, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    results = JSON.parse(JSON.stringify(rows[2]))

    reportData = { ...reportData, ingresos: results }

    reportData = {
      ...reportData,
      fechaInicial: moment(fechaInicial).format("DD/MM/YYYY"),
      fechaFinal: moment(fechaFinal).format("DD/MM/YYYY"),
      s: "s",
    }

    const json = JSON.stringify(reportData)

    reportData = { ...reportData, json }

    carbone.render(
      "./reports/reporte3.docx",
      reportData,
      options,
      (error, result) => {
        if (error) return console.log(error)

        fs.writeFileSync("./reports/reporte3.pdf", result)
        return res.send(result)
      }
    )
  })
}

exports.obtenerReporte4 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const queryData = [
    moment(fechaInicial).format("YYYY-MM-DD"),
    moment(fechaFinal).format("YYYY-MM-DD"),
  ]

  console.log(queryData)
  let reportData = {}

  connection.query(REPORTE_4, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    reportData = {
      ...reportData,
      fechaInicial: moment(fechaInicial).format("DD/MM/YYYY"),
      fechaFinal: moment(fechaFinal).format("DD/MM/YYYY"),
      s: "s",
    }

    results = JSON.parse(JSON.stringify(rows[2]))

    reportData = { ...reportData, top: results }

    const json = JSON.stringify(reportData)

    reportData = { ...reportData, json }

    carbone.render(
      "./reports/reporte4.docx",
      reportData,
      options,
      (error, result) => {
        if (error) return console.log(error)

        fs.writeFileSync("./reports/reporte4.pdf", result)
        return res.send(result)
      }
    )
  })
}

exports.obtenerReporteTomas = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const queryData = [
    moment(fechaInicial).format("YYYY-MM-DD"),
    moment(fechaFinal).format("YYYY-MM-DD"),
  ]

  console.log(queryData)
  let reportData = {}

  connection.query(REPORTE_2, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    results = JSON.parse(JSON.stringify(rows[2]))

    reportData = { ...reportData, servicios: results }

    reportData = {
      ...reportData,
      fechaInicial: moment(fechaInicial).format("DD/MM/YYYY"),
      fechaFinal: moment(fechaFinal).format("DD/MM/YYYY"),
      s: "s",
    }

    carbone.render(
      "./reports/reporte2.docx",
      reportData,
      options,
      (error, result) => {
        if (error) return console.log(error)

        fs.writeFileSync("./reports/reporte2.pdf", result)
        return res.send(result)
      }
    )
  })
}

exports.obtenerReporte5 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const queryData = [
    moment(fechaInicial).format("YYYY-MM-DD"),
    moment(fechaFinal).format("YYYY-MM-DD"),
  ]

  console.log(queryData)
  let reportData = {}

  connection.query(CHRIS, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    results = JSON.parse(JSON.stringify(rows))

    reportData = { ...reportData, col: results }

    reportData = {
      ...reportData,
      fechaInicial: moment(fechaInicial).format("DD/MM/YYYY"),
      fechaFinal: moment(fechaFinal).format("DD/MM/YYYY"),
      col1_nombre: "Username",
      col2_nombre: "Fecha reserva",
      nombre: "Christian",
    }

    const json = JSON.stringify(reportData)

    reportData = { ...reportData, json }

    carbone.render(
      "./reports/reporte5.docx",
      reportData,
      options,
      (error, result) => {
        if (error) return console.log(error)

        fs.writeFileSync("./reports/reporte5.pdf", result)
        return res.send(result)
      }
    )
  })
}

exports.obtenerReporte6 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const queryData = [
    moment(fechaInicial).format("YYYY-MM-DD"),
    moment(fechaFinal).format("YYYY-MM-DD"),
  ]

  console.log(queryData)
  let reportData = {}

  connection.query(TOMAS, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    results = JSON.parse(JSON.stringify(rows))

    reportData = { ...reportData, col: results }

    reportData = {
      ...reportData,
      fechaInicial: moment(fechaInicial).format("DD/MM/YYYY"),
      fechaFinal: moment(fechaFinal).format("DD/MM/YYYY"),
      s: "s",
      col1_nombre: "Nombre locacion",
      col2_nombre: "Cantidad invitados",
      nombre: "Tomás",
    }

    const json = JSON.stringify(reportData)

    reportData = { ...reportData, json }

    carbone.render(
      "./reports/reporte5.docx",
      reportData,
      options,
      (error, result) => {
        if (error) return console.log(error)

        fs.writeFileSync("./reports/reporte6.pdf", result)
        return res.send(result)
      }
    )
  })
}

exports.obtenerReporte7 = (req, res) => {
  const { fechaInicial, fechaFinal } = req.query

  const queryData = [
    moment(fechaInicial).format("YYYY-MM-DD"),
    moment(fechaFinal).format("YYYY-MM-DD"),
  ]

  console.log(queryData)
  let reportData = {}

  connection.query(WINKLER, queryData, (error, rows) => {
    if (error) return res.status(400).send(error.message)

    results = JSON.parse(JSON.stringify(rows))

    reportData = { ...reportData, col: results }

    reportData = {
      ...reportData,
      fechaInicial: moment(fechaInicial).format("DD/MM/YYYY"),
      fechaFinal: moment(fechaFinal).format("DD/MM/YYYY"),
      s: "s",
      col1_nombre: "Cantidad invitados",
      col2_nombre: "Fecha presupuesto",
      nombre: "Winkler",
    }

    const json = JSON.stringify(reportData)

    reportData = { ...reportData, json }

    carbone.render(
      "./reports/reporte5.docx",
      reportData,
      options,
      (error, result) => {
        if (error) return console.log(error)

        fs.writeFileSync("./reports/reporte7.pdf", result)
        return res.send(result)
      }
    )
  })
}
