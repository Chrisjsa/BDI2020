const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

const {
  leerRoles,
  leerRolesPermisos,
  crearRol,
  actualizarRol,
  eliminarRol,
} = require("../controllers/roles")

// Read
router.get("/leer", auth, leerRoles)

router.get("/leerRolesPermisos", auth, leerRolesPermisos)

// // Create
router.post("/nueva", middleware, crearRol)

// // Update
router.put("/actualizar", middleware, actualizarRol)

router.delete("/eliminar/:id_rol", middleware, eliminarRol)

module.exports = router
