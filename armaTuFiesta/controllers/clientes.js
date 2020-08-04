const { connection } = require("../database")
const { LEER_CLIENTES, ACTUALIZAR_CLIENTES, CREAR_CLIENTES, ELIMINAR_CLIENTES, CREAR_OTROS_USUARIOS } = require("../sql/clientesQueries")

exports.leerCliente = (req, res) => {
  connection.query(LEER_CLIENTES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.crearCliente = (req, res) => {
  connection.query(CREAR_CLIENTES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

<<<<<<< HEAD
=======

exports.crearOtroUsuario = (req, res) => {
  connection.query(CREAR_OTROS_USUARIOS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}

>>>>>>> 657ee0db447209566bb3e2194642f717b3052e4e
exports.actualizarCliente = (req, res) => {
  connection.query(ACTUALIZAR_CLIENTES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
<<<<<<< HEAD
=======


exports.eliminarCliente = (req, res) => {
  connection.query(ELIMINAR_CLIENTES, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}
>>>>>>> 657ee0db447209566bb3e2194642f717b3052e4e
