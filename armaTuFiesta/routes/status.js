const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerStatu, crearStatu, actualizarStatu, eliminarStatu } = require("../controllers/status")

// Read
router.get("/leer", auth, leerStatu)

// // Create
router.post("/nueva", auth, crearStatu)

// // Update
router.put("/actualizar", auth, actualizarStatu)

// // Delete
router.delete("/eliminar", auth, eliminarStatu)

module.exports = router