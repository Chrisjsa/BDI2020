const fs = require("fs")
const carbone = require("carbone")
const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

var data = {
  dataPpc: { p_nombre: "John " }, // poner más data si quieres probar
  dataMpc: { s_nombre: "Helena " },
}

var options = {
  convertTo: "pdf",
}

const renderReport = (req, res) => {
  carbone.render("./reports/simple.txt", data, options, (err, result) => {
    if (err) {
      return console.log(err)
    }
    fs.writeFileSync("./reports/rendered/result.pdf", result)
    res.set("Content-Type", "application/pdf")
    return res.download("./reports/rendered/result.pdf")
  })
}

router.post("/report", renderReport)

module.exports = router
