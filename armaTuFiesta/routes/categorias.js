const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerCategoria, crearCategoria, actualizarCategoria, eliminarCategoria } = require("../controllers/categorias")

// Read
router.get("/", auth, leerCategoria)

// // Create
router.post("/nueva", auth, crearCategoria)

// // Update
router.put("/actualiza", auth, actualizarCategoria)

// // Delete
router.delete("/elimina", auth, eliminarCategoria)

module.exports = router