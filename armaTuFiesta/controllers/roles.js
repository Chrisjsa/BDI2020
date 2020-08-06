const { connection } = require("../database")
const { LEER_ROLES, ACTUALIZAR_ROLES, ELIMINAR_ROLES, CREAR_ROLES } = require("../sql/rolesQueries")

exports.leerRol = (req, res) => {
  connection.query(LEER_ROLES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}

exports.crearRol = (req, res) => {
  connection.query(CREAR_ROLES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}


exports.actualizarRol = (req, res) => {
  connection.query(ACTUALIZAR_ROLES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}

exports.eliminarRol = (req, res) => {
  connection.query(ELIMINAR_ROLES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}