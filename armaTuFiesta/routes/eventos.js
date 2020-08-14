const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

const {
  leerEventosPorUsuario,
  leerServiciosEvento,
  leerCategoria,
  leerEventos,
} = require("../controllers/eventos")

// Read
router.get("/leerEventosPorUsuario", middleware, leerEventosPorUsuario)

router.get("/leerServiciosEventos", middleware, leerServiciosEvento)

router.get("/leerCategoria", middleware, leerCategoria)

router.get("/leerEventos", middleware, leerEventos)
module.exports = router
