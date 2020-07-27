const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerHorario, crearHorario, actualizarHorario, eliminarHorario } = require("../controllers/horarios")

// Read
router.get("/", auth, leerHorario)

// // Create
router.post("/nueva", auth, crearHorario)

// // Update
router.put("/actualiza", auth, actualizarHorario)

// // Delete
router.delete("/elimina", auth, eliminarHorario)

module.exports = router