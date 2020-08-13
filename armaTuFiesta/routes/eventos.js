const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

const {
  leerEventosPorUsuario,
  leerServiciosEvento,
} = require("../controllers/eventos")

// Read
router.get("/leerEventosPorUsuario", middleware, leerEventosPorUsuario)

router.get("/leerServiciosEventos", auth, leerServiciosEvento)
module.exports = router
