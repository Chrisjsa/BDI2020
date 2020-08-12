const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

const { leerEventosPorUsuario } = require("../controllers/eventos")

// Read
router.get("/", middleware, leerEventosPorUsuario)

module.exports = router
