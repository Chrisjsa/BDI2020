const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerFloristeria, crearFloristeria, actualizarFloristeria, eliminarFloristeria } = require("../controllers/floristerias")

// Read
router.get("/leer", auth, leerFloristeria)

// // Create
router.post("/nueva", auth, crearFloristeria)

// // Update
router.put("/actualizar", auth, actualizarFloristeria)

// // Delete
router.delete("/eliminar/:id_floristeria", auth, eliminarFloristeria)

module.exports = router