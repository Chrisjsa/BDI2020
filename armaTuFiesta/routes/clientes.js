const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerCliente, crearCliente, actualizarCliente } = require("../controllers/clientes")

// Read
router.get("/", auth, leerCliente)

// // Create
router.post("/nueva", auth, crearCliente)

// // Update
router.put("/actualiza", auth, actualizarCliente)



module.exports = router