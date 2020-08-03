const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerCarta, crearCarta, actualizarCarta, eliminarCarta } = require("../controllers/cartas")

// Read
router.get("/leer", auth, leerCarta)

// // Create
router.post("/nueva", crearCarta)

// // Update
router.put("/actualizar", auth, actualizarCarta)

// // Delete
router.delete("/eliminar/:id_carta", auth, eliminarCarta)

module.exports = router