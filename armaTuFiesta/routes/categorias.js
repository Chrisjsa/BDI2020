const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerCategoria, crearCategoria, actualizarCategoria, eliminarCategoria } = require("../controllers/categorias")

// Read
router.get("/leer", auth, leerCategoria)

// // Create
router.post("/nueva", auth, crearCategoria)

// // Update
router.put("/actualizar", auth, actualizarCategoria)


module.exports = router