const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerReligion, crearReligion, actualizarReligion, eliminarReligion } = require("../controllers/religiones")

// Read
router.get("/", auth, leerReligion)

// // Create
router.post("/nueva", auth, crearReligion)

// // Update
router.put("/actualiza", auth, actualizarReligion)

// // Delete
router.delete("/elimina", auth, eliminarReligion)

module.exports = router