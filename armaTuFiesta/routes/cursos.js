const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerCurso, crearCurso, actualizarCurso, eliminarCurso } = require("../controllers/cursos")

// Read
router.get("/", auth, leerCurso)

// // Create
router.post("/nueva", auth, crearCurso)

// // Update
router.put("/actualiza", auth, actualizarCurso)

// // Delete
router.delete("/elimina", auth, eliminarCurso)

module.exports = router