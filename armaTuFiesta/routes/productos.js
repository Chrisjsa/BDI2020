const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

const {
  agregarServicios,
  agregarProductos,
  leerProductos,
  leerServicios,
} = require("../controllers/productos")

router.post("/agregarServicios", middleware, agregarServicios)

router.post("/agregarProductos", middleware, agregarProductos)

router.get("/leerProductos", middleware, leerProductos)

router.get("/leerServicios", middleware, leerServicios)

module.exports = router
