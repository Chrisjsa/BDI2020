const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerCarta, crearCarta, actualizarCarta, eliminarCarta } = require("../controllers/cartas")

// Read
router.get("/", auth, leerCarta)

// // Create
router.post("/nueva", auth, crearCarta)

// // Update
router.put("/actualiza", auth, actualizarCarta)

// // Delete
router.delete("/elimina", auth, eliminarCarta)

module.exports = router