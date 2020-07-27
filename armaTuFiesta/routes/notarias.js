const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerNotarias, crearNotaria, actualizarNotaria, eliminarNotaria } = require("../controllers/notarias")

// Read
router.get("/", auth, leerNotarias)

// // Create
router.post("/nueva", auth, crearNotaria)

// // Update
router.put("/actualiza", auth, actualizarNotaria)

// // Delete
router.delete("/elimina", auth, eliminarNotaria)

module.exports = router

// router.type(ROUTE, [MIDDLEWARE], FUNCTION)
// routes -> queries -> controllers
// cuando crees nuevo archivo: pon el nombre en server.js
