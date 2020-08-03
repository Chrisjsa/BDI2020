const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const middleware = [auth, monitor] 
const { auth } = require("../middleware/auth")
const { leerCliente, crearCliente, actualizarCliente } = require("../controllers/clientes")

// Read
router.get("/leer", auth, leerCliente)

// // Create
router.post("/nueva", middleware, crearCliente)

// // Update
router.put("/actualizar", middleware, actualizarCliente)



module.exports = router