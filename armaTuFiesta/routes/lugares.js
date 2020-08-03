const express = require("express")
const router = express.Router()

const {
  leerLugarMunicipio,
  leerLugarEstado,
  leerLugarParroquia,
} = require("../controllers/lugares")

// Read
router.get("/leerEstado", leerLugarEstado)

router.get("/leerMunicipio", leerLugarMunicipio)

router.get("/leerParroquia", leerLugarParroquia)

module.exports = router
