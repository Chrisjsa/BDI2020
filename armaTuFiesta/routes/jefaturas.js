const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerJefatura, crearJefatura, actualizarJefatura, eliminarJefatura } = require("../controllers/jefaturas")

// Read
router.get("/leer", auth, leerJefatura)

// // Create
router.post("/nueva", auth, crearJefatura)

// // Update
router.put("/actualizar", auth, actualizarJefatura)

// // Delete
router.delete("/eliminar/:id_jefatura", auth, eliminarJefatura)

module.exports = router