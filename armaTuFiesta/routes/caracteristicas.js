const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")

const { monitor } = require("../middleware/monitor") 
const middleware = [auth, monitor] 


const {
  leerCaracteristica,
  crearCaracteristica,
  actualizarCaracteristica,
  eliminarCaracteristica,
} = require("../controllers/caracteristicas")

// Read
router.get("/leer", auth, leerCaracteristica)

// // Create
router.post("/nueva", middleware, crearCaracteristica)

// // Update
router.put("/actualizar", middleware, actualizarCaracteristica)



module.exports = router
