const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerProducto, crearProducto, actualizarProducto, eliminarProducto } = require("../controllers/productos")

// Read
router.get("/", auth, leerProducto)

// // Create
router.post("/nueva", auth, crearProducto)

// // Update
router.put("/actualiza", auth, actualizarProducto)

// // Delete
router.delete("/elimina", auth, eliminarProducto)

module.exports = router