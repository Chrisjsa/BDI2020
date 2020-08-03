const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerTip, crearTip, actualizarTip, eliminarTip } = require("../controllers/tips")

// Read
router.get("/leer", auth, leerTip)

// // Create
router.post("/nueva", auth, crearTip)

// // Update
router.put("/actualizar", auth, actualizarTip)


module.exports = router