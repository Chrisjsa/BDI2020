const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerRol, crearRol, actualizarRol, eliminarRol } = require("../controllers/roles")

// Read
router.get("/", auth, leerRol)

// // Create
router.post("/nueva", auth, crearRol)

// // Update
router.put("/actualiza", auth, actualizarRol)

// // Delete
router.delete("/elimina", auth, eliminarRol)

module.exports = router