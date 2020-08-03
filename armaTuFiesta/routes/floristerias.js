const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor] 

const { leerFloristeria, crearFloristeria, actualizarFloristeria, eliminarFloristeria } = require("../controllers/floristerias")

// Read
router.get("/leer", auth, leerFloristeria)

// // Create
router.post("/nueva", middleware, crearFloristeria)

// // Update
router.put("/actualizar", middleware, actualizarFloristeria)

// // Delete
router.delete("/eliminar/:id_floristeria", middleware, eliminarFloristeria)

module.exports = router