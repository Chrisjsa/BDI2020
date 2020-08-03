const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerRestaurante, crearRestaurante, actualizarRestaurante, eliminarRestaurante } = require("../controllers/restaurantes")

// Read
router.get("/leer", auth, leerRestaurante)

// // Create
router.post("/nueva", auth, crearRestaurante)

// // Update
router.put("/actualizar", auth, actualizarRestaurante)

// // Delete
router.delete("/eliminar/:id_restaurante", auth, eliminarRestaurante)

module.exports = router