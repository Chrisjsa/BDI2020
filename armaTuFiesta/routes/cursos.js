const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor] 

const { leerCurso, crearCurso, actualizarCurso, eliminarCurso } = require("../controllers/cursos")

// Read
router.get("/leer", auth, leerCurso)

// // Create
router.post("/nueva", middleware, crearCurso)

// // Update
router.put("/actualizar", middleware, actualizarCurso)

// // Delete
router.delete("/eliminar/:id_curso", middleware, eliminarCurso)

module.exports = router