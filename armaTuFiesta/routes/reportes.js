const express = require("express");
const router = express.Router();
const { monitor } = require("../middleware/monitor");
const { auth } = require("../middleware/auth");
const middleware = [auth, monitor];

const {
  obtenerReporte1,
  obtenerReporte2,
  obtenerReporte3,
  obtenerReporte4,
} = require("../controllers/reportes");

// Read
router.get("/1", auth, obtenerReporte1);

router.get("/2", auth, obtenerReporte2);

router.get("/3", auth, obtenerReporte3);

router.get("/4", auth, obtenerReporte4);

module.exports = router;
