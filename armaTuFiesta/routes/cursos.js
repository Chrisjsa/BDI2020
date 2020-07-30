const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerCurso, crearCurso, actualizarCurso, eliminarCurso } = require("../controllers/cursos")

// Read
router.get("/leer", auth, leerCurso)

// // Create
router.post("/nueva", auth, crearCurso)

// // Update
router.put("/actualizar", auth, actualizarCurso)

// // Delete
router.delete("/eliminar", auth, eliminarCurso)

module.exports = router