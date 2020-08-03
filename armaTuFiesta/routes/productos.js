const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor] 

const { leerProducto, crearProducto, actualizarProducto, eliminarProducto } = require("../controllers/productos")

// Read
router.get("/leer", auth, leerProducto)

// // Create
router.post("/nueva", middleware, crearProducto)

// // Update
router.put("/actualizar", middleware, actualizarProducto)

// // Delete
router.delete("/eliminar/:id_producto", middleware, eliminarProducto)

module.exports = router