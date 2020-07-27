const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerTip, crearTip, actualizarTip, eliminarTip } = require("../controllers/tips")

// Read
router.get("/", auth, leerTip)

// // Create
router.post("/nueva", auth, crearTip)

// // Update
router.put("/actualiza", auth, actualizarTip)

// // Delete
router.delete("/elimina", auth, eliminarTip)

module.exports = router