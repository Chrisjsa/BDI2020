const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const middleware = [auth, monitor] 
const { auth } = require("../middleware/auth")
const { leerTip, crearTip, actualizarTip, eliminarTip } = require("../controllers/tips")

// Read
router.get("/leer", auth, leerTip)

// // Create
router.post("/nueva", middleware, crearTip)

// // Update
router.put("/actualizar", middleware, actualizarTip)


module.exports = router