const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const middleware = [auth, monitor] 
const { auth } = require("../middleware/auth")
const { leerTemplo, crearTemplo, actualizarTemplo, eliminarTemplo } = require("../controllers/templos")

// Read
router.get("/leer", auth, leerTemplo)

// // Create
router.post("/nueva", middleware, crearTemplo)

// // Update
router.put("/actualizar", middleware, actualizarTemplo)

// // Delete
router.delete("/eliminar/:id_templo", middleware, eliminarTemplo)

module.exports = router