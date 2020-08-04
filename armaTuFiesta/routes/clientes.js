const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor] 

const { leerCliente, crearCliente, crearOtroUsuario, actualizarCliente, eliminarCliente } = require("../controllers/clientes")

// Read
router.get("/leer", auth, leerCliente)

// // Create
router.post("/nueva", middleware, crearCliente)

//Create de otros usuarios
router.post("/agregarOtro", middleware, crearOtroUsuario)

// // Update
router.put("/actualizar", middleware, actualizarCliente)

router.delete("/eliminar/:id_cliente", middleware, eliminarCliente)

module.exports = router