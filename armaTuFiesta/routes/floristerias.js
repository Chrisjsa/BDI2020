const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerFloristeria, crearFloristeria, actualizarFloristeria, eliminarFloristeria } = require("../controllers/floristerias")

// Read
router.get("/", auth, leerFloristeria)

// // Create
router.post("/nueva", auth, crearFloristeria)

// // Update
router.put("/actualiza", auth, actualizarFloristeria)

// // Delete
router.delete("/elimina", auth, eliminarFloristeria)

module.exports = router