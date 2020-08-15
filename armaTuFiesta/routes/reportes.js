const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

const {
  obtenerReporte1,
  obtenerReporte2,
  obtenerReporte3,
  obtenerReporte4,
  obtenerReporte5,
  obtenerReporte6,
  obtenerReporte7,
} = require("../controllers/reportes")

// Read
router.get("/1", auth, obtenerReporte1)

router.get("/2", auth, obtenerReporte2)

router.get("/3", auth, obtenerReporte3)

router.get("/4", auth, obtenerReporte4)

router.get("/5", auth, obtenerReporte5)

router.get("/6", auth, obtenerReporte6)

router.get("/7", auth, obtenerReporte7)

module.exports = router
