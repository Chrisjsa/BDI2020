const { connection } = require("../database")
const {
  LEER_ROLES,
  LEER_PERMISOS,
  ACTUALIZAR_ROLES,
  ELIMINAR_ROLES,
  CREAR_ROLES,
} = require("../sql/rolesQueries")

const { LISTAR_ROL_PERMISO } = require("../sql/authQueries")

exports.leerRoles = (req, res) => {
  connection.query(LEER_ROLES, (error, rows) => {
    if (error) {
      return res.status(400).send({ message: error.message })
    }

    return res.json(rows)
  })
}

exports.leerPermisos = (req, res) => {
  connection.query(LEER_PERMISOS, (error, rows) => {
    if (error) {
      return res.status(400).send({ message: error.message })
    }

    return res.json(rows)
  })
}

exports.leerRolesPermisos = (req, res) => {
  connection.query(LISTAR_ROL_PERMISO, (error, rows) => {
    if (error) {
      return res.status(400).send({ message: error.message })
    }

    return res.json(rows)
  })
}

exports.crearRol = (req, res) => {
  connection.query(CREAR_ROLES, (error, rows) => {
    if (error) {
      return res.status(400).send({ message: error.message })
    }
    return res.json(rows)
  })
}

exports.actualizarRol = (req, res) => {
  connection.query(ACTUALIZAR_ROLES, (error, rows) => {
    if (error) {
      return res.status(400).send({ message: error.message })
    }
    return res.json(rows)
  })
}

exports.eliminarRol = (req, res) => {
  connection.query(ELIMINAR_ROLES, (error, rows) => {
    if (error) {
      return res.status(400).send({ message: error.message })
    }
    return res.json(rows)
  })
}
