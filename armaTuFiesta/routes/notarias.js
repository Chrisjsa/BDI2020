const express = require("express")
const router = express.Router()

const { monitor } = require("../middleware/monitor") // <-- 1
const { auth } = require("../middleware/auth")

const middleware = [auth, monitor] // <-- 2

const {
  leerNotarias,
  crearNotaria,
  actualizarNotaria,
  eliminarNotaria,
} = require("../controllers/notarias")

// Read
router.get("/leer", leerNotarias)

// // Create
router.post("/nueva", middleware, crearNotaria) // <-- 3

// // Update
router.put("/actualizar", middleware, actualizarNotaria) // <-- 4

// // Delete
router.delete("/eliminar/:id_notaria", middleware, eliminarNotaria) // <-- 5

module.exports = router
