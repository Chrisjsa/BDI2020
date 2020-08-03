const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor] 

const { leerRol, crearRol, actualizarRol, eliminarRol } = require("../controllers/roles")

// Read
router.get("/leer", auth, leerRol)

// // Create
router.post("/nueva", middleware, crearRol)

// // Update
router.put("/actualizar", middleware, actualizarRol)


module.exports = router