const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor] 

const { leerHorario, crearHorario, actualizarHorario, eliminarHorario } = require("../controllers/horarios")

// Read
router.get("/leer", auth, leerHorario)

// // Create
router.post("/nueva", middleware, crearHorario)

// // Update
router.put("/actualizar", middleware, actualizarHorario)


module.exports = router