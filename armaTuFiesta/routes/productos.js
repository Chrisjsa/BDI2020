const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerProducto, crearProducto, actualizarProducto, eliminarProducto } = require("../controllers/productos")

// Read
router.get("/leer", auth, leerProducto)

// // Create
router.post("/nueva", auth, crearProducto)

// // Update
router.put("/actualizar", auth, actualizarProducto)

// // Delete
router.delete("/eliminar/:id_producto", auth, eliminarProducto)

module.exports = router