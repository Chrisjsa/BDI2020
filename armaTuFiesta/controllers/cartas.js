const { connection } = require("../database")
const {} = require("../sql/cartasQueries")

exports.leerCarta = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.crearCarta = (req, res) => {
  const {
    dataPpc,
    dataMpc,
    dataT1pc,
    dataT2pc,
    dataSc,
    dataPsc,
    dataMsc,
    dataT1sc,
    dataT2sc,
  } = req.body

  const success = { msg: "Carta agregada satisfactoriamente" }

  connection.query("", Object.values(dataPpc), error => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(success)
  })

  connection.query("", Object.values(dataT2sc), error => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(success)
  })
}

exports.actualizarCarta = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.eliminarCarta = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
