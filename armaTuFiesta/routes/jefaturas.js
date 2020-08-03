const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const middleware = [auth, monitor] 
const { auth } = require("../middleware/auth")
const { leerJefatura, crearJefatura, actualizarJefatura, eliminarJefatura } = require("../controllers/jefaturas")

// Read
router.get("/leer", auth, leerJefatura)

// // Create
router.post("/nueva", middleware, crearJefatura)

// // Update
router.put("/actualizar", middleware, actualizarJefatura)

// // Delete
router.delete("/eliminar/:id_jefatura", middleware, eliminarJefatura)

module.exports = router