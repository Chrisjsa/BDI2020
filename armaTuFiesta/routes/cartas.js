const express = require("express")
const router = express.Router()

const { monitor } = require("../middleware/monitor") 


const { auth } = require("../middleware/auth")
const middleware = [auth, monitor] 

const { leerCarta, crearCarta } = require("../controllers/cartas")


// Read
router.get("/leer", auth, leerCarta)

// // Create
router.post("/nueva",middleware, crearCarta)


module.exports = router