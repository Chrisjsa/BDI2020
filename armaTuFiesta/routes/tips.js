const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

const {
  leerTip,
  crearTip,
  actualizarTip,
  eliminarTip,
} = require("../controllers/tips")

// Read
router.get("/leer", auth, leerTip)

// // Create
router.post("/nuevo", middleware, crearTip)

// // Update
router.put("/actualizar", middleware, actualizarTip)

router.delete("/eliminar/:id_tip", middleware, eliminarTip)
module.exports = router
