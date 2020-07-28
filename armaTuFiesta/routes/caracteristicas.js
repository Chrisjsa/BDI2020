const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerCaracteristica, crearCaracteristica, actualizarCaracteristica, eliminarCaracteristica } = require("../controllers/caracteristicas")

// Read
router.get("/", auth, leerCaracteristica)

// // Create
router.post("/nueva", auth, crearCaracteristica)

// // Update
router.put("/actualiza", auth, actualizarCaracteristica)

// // Delete
router.delete("/elimina", auth, eliminarCaracteristica)

module.exports = router