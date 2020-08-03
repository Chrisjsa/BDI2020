const express = require("express")
const router = express.Router()

const { monitor } = require("../middleware/monitor") 


const { auth } = require("../middleware/auth")
const middleware = [auth, monitor] 

const { leerCarta, crearCarta, actualizarCarta, eliminarCarta } = require("../controllers/cartas")


// Read
router.get("/leer", auth, leerCarta)

// // Create
router.post("/nueva",middleware, crearCarta)

// // Update
router.put("/actualizar", middleware, actualizarCarta)

// // Delete
router.delete("/eliminar/:id_carta", middleware, eliminarCarta)

module.exports = router