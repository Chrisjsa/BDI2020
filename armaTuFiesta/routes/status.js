const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const middleware = [auth, monitor] 
const { auth } = require("../middleware/auth")
const { leerStatu, crearStatu, actualizarStatu, eliminarStatu } = require("../controllers/status")

// Read
router.get("/leer", auth, leerStatu)

// // Create
router.post("/nueva", middleware, crearStatu)

// // Update
router.put("/actualizar", middleware, actualizarStatu)


module.exports = router