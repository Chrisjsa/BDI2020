const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerRol, crearRol, actualizarRol, eliminarRol } = require("../controllers/roles")

// Read
router.get("/leer", auth, leerRol)

// // Create
router.post("/nueva", auth, crearRol)

// // Update
router.put("/actualizar", auth, actualizarRol)


module.exports = router