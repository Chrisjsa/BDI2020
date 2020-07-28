const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerStatu, crearStatu, actualizarStatu, eliminarStatu } = require("../controllers/status")

// Read
router.get("/", auth, leerStatu)

// // Create
router.post("/nueva", auth, crearStatu)

// // Update
router.put("/actualiza", auth, actualizarStatu)

// // Delete
router.delete("/elimina", auth, eliminarStatu)

module.exports = router