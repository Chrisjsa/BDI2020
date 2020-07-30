const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const {
  leerCaracteristica,
  crearCaracteristica,
  actualizarCaracteristica,
  eliminarCaracteristica,
} = require("../controllers/caracteristicas")

// Read
router.get("/leer", auth, leerCaracteristica)

// // Create
router.post("/nueva", auth, crearCaracteristica)

// // Update
router.put("/actualizar", auth, actualizarCaracteristica)

// // Delete
router.delete("/eliminar", auth, eliminarCaracteristica)

module.exports = router
