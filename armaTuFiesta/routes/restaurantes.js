const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerRestaurante, crearRestaurante, actualizarRestaurante, eliminarRestaurante } = require("../controllers/restaurantes")

// Read
router.get("/", auth, leerRestaurante)

// // Create
router.post("/nueva", auth, crearRestaurante)

// // Update
router.put("/actualiza", auth, actualizarRestaurante)

// // Delete
router.delete("/elimina", auth, eliminarRestaurante)

module.exports = router