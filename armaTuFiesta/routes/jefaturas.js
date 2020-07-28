const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerJefatura, crearJefatura, actualizarJefatura, eliminarJefatura } = require("../controllers/jefaturas")

// Read
router.get("/", auth, leerJefatura)

// // Create
router.post("/nueva", auth, crearJefatura)

// // Update
router.put("/actualiza", auth, actualizarJefatura)

// // Delete
router.delete("/elimina", auth, eliminarJefatura)

module.exports = router