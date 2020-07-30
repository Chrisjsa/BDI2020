const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerLugar } = require("../controllers/lugares")

// Read
router.get("/leer", auth, leerLugar)


module.exports = router