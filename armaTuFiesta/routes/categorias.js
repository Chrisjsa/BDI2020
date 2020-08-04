const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 

const { auth } = require("../middleware/auth")
const middleware = [auth, monitor] 

const { leerCategoria, crearCategoria, actualizarCategoria, eliminarCategoria } = require("../controllers/categorias")

// Read
router.get("/leer", auth, leerCategoria)

// // Create
router.post("/nueva", auth, crearCategoria)

// // Update
router.put("/actualizar", auth, actualizarCategoria)

router.delete("/eliminar/:id_categoria", middleware, eliminarCategoria)


module.exports = router