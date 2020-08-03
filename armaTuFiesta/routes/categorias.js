const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const middleware = [auth, monitor] 
const { auth } = require("../middleware/auth")
const { leerCategoria, crearCategoria, actualizarCategoria, eliminarCategoria } = require("../controllers/categorias")

// Read
router.get("/leer", auth, leerCategoria)

// // Create
router.post("/nueva", middleware, crearCategoria)

// // Update
router.put("/actualizar", middleware, actualizarCategoria)


module.exports = router