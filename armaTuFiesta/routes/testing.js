const fs = require("fs")
const carbone = require("carbone")
const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

var options = {
  convertTo: "pdf",
}

const renderReport = (req, res) => {
  let data = JSON.parse(req.query.data)
  carbone.render("./reports/simple.txt", data, options, (err, result) => {
    if (err) {
      return console.log(err)
    }
    return res.send(result)
  })
}

router.get("/report", renderReport)

module.exports = router
