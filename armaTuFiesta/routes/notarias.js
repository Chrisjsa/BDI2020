const express = require("express")
const router = express.Router()

const { auth } = require("../middleware/auth")
const { leerNotarias, crearNotaria } = require("../controllers/notarias")

// Read
router.get("/", auth, leerNotarias)

// // Create
router.post("/nueva", auth, crearNotaria)

// // Update
// router.update()

// // Delete
// router.delete()

module.exports = router

// router.type(ROUTE, [MIDDLEWARE], FUNCTION)
// routes -> queries -> controllers
// cuando crees nuevo archivo: pon el nombre en server.js
