const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerHorario, crearHorario, actualizarHorario, eliminarHorario } = require("../controllers/horarios")

// Read
router.get("/leer", auth, leerHorario)

// // Create
router.post("/nueva", auth, crearHorario)

// // Update
router.put("/actualizar", auth, actualizarHorario)


module.exports = router