const { connection } = require("../database")
const { LEER_NOTARIAS, CREAR_NOTARIAS, ACTUALIZAR_NOTARIAS, ELIMINAR_NOTARIAS } = require("../sql/notariasQueries")

exports.leerNotarias = (req, res) => {
  connection.query(LEER_NOTARIAS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
<<<<<<< HEAD
    return res.json(rows)
=======
    return res.json( rows )
>>>>>>> ae7595e92f197d1f932105785d77d0b737ee79fd
  })
}

exports.crearNotaria = (req, res) => {
  connection.query(CREAR_NOTARIAS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}

exports.actualizarNotaria = (req, res) => {
  connection.query(ACTUALIZAR_NOTARIAS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}

exports.eliminarNotaria = (req, res) => {
  connection.query(ELIMINAR_NOTARIAS, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json( rows )
  })
}
// routes -> queries -> controllers
