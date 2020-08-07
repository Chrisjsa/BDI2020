const fs = require("fs")
const carbone = require("carbone")
const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

var data = {
  titulo: "John",
  nombre: "Doe",
}

var options = {
  convertTo: "docx", //can be docx, txt, ...
}

const renderReport = (req, res) => {
  carbone.render("./reports/simple.txt", data, (err, result) => {
    if (err) {
      return console.log(err)
    }
    fs.writeFileSync("./reports/rendered/result.txt", result)
    return res.send(result)
  })
}

router.post("/report", renderReport)

module.exports = router
