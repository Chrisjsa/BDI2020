const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const middleware = [auth, monitor] 
const { auth } = require("../middleware/auth")
const { leerRestaurante, crearRestaurante, actualizarRestaurante, eliminarRestaurante } = require("../controllers/restaurantes")

// Read
router.get("/leer", auth, leerRestaurante)

// // Create
router.post("/nueva", middleware, crearRestaurante)

// // Update
router.put("/actualizar", middleware, actualizarRestaurante)

// // Delete
router.delete("/eliminar/:id_restaurante", middleware, eliminarRestaurante)

module.exports = router