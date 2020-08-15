const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

const { leerServicios } = require("../controllers/citas")

// Read
router.get("/leerServicios", middleware, leerServicios)

module.exports = router
