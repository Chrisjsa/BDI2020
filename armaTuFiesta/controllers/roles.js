const { connection } = require("../database")
const {
  LEER_ROLES,
  LEER_PERMISOS,
  ACTUALIZAR_ROLES,
  ELIMINAR_ROLES,
  CREAR_ROL,
  ASIGNAR_ROL_PERMISO,
  LEER_ROL_PERMISOS,
  LEER_ROL_USUARIO,
  LEER_PERMISOS_USUARIO,
} = require("../sql/rolesQueries")

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
  connection.query(LEER_ROL_PERMISOS, (error, rows) => {
    if (error) {
      return res.status(400).send({ message: error.message })
    }

    return res.json(rows)
  })
}

exports.asignarRolPermisos = (req, res) => {
  const { nombre, permisos } = req.body

  // Se crea el rol por nombre
  connection.query(CREAR_ROL, [nombre], (error, rows) => {
    if (error) return res.status(400).send({ message: error.message })

    permisos.map((permiso) => {
      connection.query(
        ASIGNAR_ROL_PERMISO,
        [nombre, permiso],
        (error, rows) => {
          if (error) return res.status(400).send({ message: error.message })
        }
      )
    })

    return res.send("Success")
  })
}

exports.crearRol = (req, res) => {
  connection.query(CREAR_ROL, (error, rows) => {
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

exports.leerRolesUsuario = (req, res) => {
  connection.query(LEER_ROL_USUARIO, (error, rows) => {
    if (error) {
      return res.status(400).send({ message: error.message })
    }

    return res.json(rows)
  })
}

exports.leerPermisosUsuario = (req, res) => {
  connection.query(LEER_PERMISOS_USUARIO, (error, rows) => {
    if (error) {
      return res.status(400).send({ message: error.message })
    }

    return res.json(rows)
  })
}
