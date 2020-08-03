const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor") 
const middleware = [auth, monitor] 
const { auth } = require("../middleware/auth")
const { leerReligion, crearReligion, actualizarReligion, eliminarReligion } = require("../controllers/religiones")

// Read
router.get("/leer", auth, leerReligion)

// // Create
router.post("/nueva", middleware, crearReligion)

// // Update
router.put("/actualizar", middleware, actualizarReligion)



module.exports = router