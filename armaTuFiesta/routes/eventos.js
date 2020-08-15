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
  leerSalones,
  crearEventos,
  agregarServicios,
  agregarProductos,
} = require("../controllers/eventos")

// Read
router.get("/leerEventosPorUsuario", middleware, leerEventosPorUsuario)

router.get("/leerServiciosEventos", middleware, leerServiciosEvento)

router.get("/leerCategoria", middleware, leerCategoria)

router.get("/leerEventos", middleware, leerEventos)

router.get("/leerSalones", middleware, leerSalones)

router.post("/crearEventos", middleware, crearEventos)

router.post("/agregarServicios", middleware, agregarServicios)

router.post("/agregarProductos", middleware, agregarProductos)
module.exports = router
