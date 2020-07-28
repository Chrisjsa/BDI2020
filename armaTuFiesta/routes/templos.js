const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerTemplo, crearTemplo, actualizarTemplo, eliminarTemplo } = require("../controllers/templos")

// Read
router.get("/", auth, leerTemplo)

// // Create
router.post("/nueva", auth, crearTemplo)

// // Update
router.put("/actualiza", auth, actualizarTemplo)

// // Delete
router.delete("/elimina", auth, eliminarTemplo)

module.exports = router