const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerReligion, crearReligion, actualizarReligion, eliminarReligion } = require("../controllers/religiones")

// Read
router.get("/leer", auth, leerReligion)

// // Create
router.post("/nueva", auth, crearReligion)

// // Update
router.put("/actualizar", auth, actualizarReligion)

// // Delete
router.delete("/eliminar", auth, eliminarReligion)

module.exports = router