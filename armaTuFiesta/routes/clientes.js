const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

const {
  leerClientes,
  crearCliente,
  actualizarCliente,
} = require("../controllers/clientes")

// Read
router.get("/", auth, leerClientes)

// // Create
router.post("/nueva", middleware, crearCliente)

// // Update
router.put("/actualizar", middleware, actualizarCliente)

module.exports = router
