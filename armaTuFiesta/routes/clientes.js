const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerCliente, crearCliente, actualizarCliente } = require("../controllers/clientes")

// Read
router.get("/leer", auth, leerCliente)

// // Create
router.post("/nueva", auth, crearCliente)

// // Update
router.put("/actualizar", auth, actualizarCliente)



module.exports = router