const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerTemplo, crearTemplo, actualizarTemplo, eliminarTemplo } = require("../controllers/templos")

// Read
router.get("/leer", auth, leerTemplo)

// // Create
router.post("/nueva", auth, crearTemplo)

// // Update
router.put("/actualizar", auth, actualizarTemplo)

// // Delete
router.delete("/eliminar", auth, eliminarTemplo)

module.exports = router