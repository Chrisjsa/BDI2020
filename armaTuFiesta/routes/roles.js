const express = require("express")
const router = express.Router()
const { monitor } = require("../middleware/monitor")
const { auth } = require("../middleware/auth")
const middleware = [auth, monitor]

const {
  leerRoles,
  leerPermisos,
  leerRolesPermisos,
  asignarRolPermisos,
  crearRol,
  actualizarRol,
  eliminarRol,
} = require("../controllers/roles")

// Read
router.get("/leer", auth, leerRoles)

router.get("/leerPermiso", auth, leerPermisos)

router.get("/leerRolesPermisos", auth, leerRolesPermisos)

// // Create
router.post("/nueva", middleware, crearRol)

router.post("/asignarRolPermisos", middleware, asignarRolPermisos)

// // Update
router.put("/actualizar", middleware, actualizarRol)

router.delete("/eliminar/:id_rol", middleware, eliminarRol)

module.exports = router
