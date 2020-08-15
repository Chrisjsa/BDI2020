const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

const {
  leerServicios,
  insertarCita,
  leerCitasUsuario,
} = require("../controllers/citas")

// Read
router.get("/leerServicios", middleware, leerServicios)

router.post("/insertarCita", middleware, insertarCita)

router.get("/leerCitasUsuario", middleware, leerCitasUsuario)
module.exports = router
