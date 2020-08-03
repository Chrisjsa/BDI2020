const express = require("express")
const router = express.Router()

const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const {
  leerNotarias,
  crearNotaria,
  actualizarNotaria,
  eliminarNotaria,
} = require("../controllers/notarias")

// Read
router.get("/leer", leerNotarias)

// // Create
router.post("/nueva", auth, crearNotaria)

// // Update
router.put("/actualizar", auth, actualizarNotaria)

// // Delete
router.delete("/eliminar/:id_notaria", auth, eliminarNotaria)

module.exports = router
