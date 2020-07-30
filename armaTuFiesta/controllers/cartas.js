const { connection } = require("../database")
const {} = require("../sql/cartasQueries")

exports.leerCarta = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.crearCarta = (req, res) => {
  const {
    dataPpc,
    dataMpc,
    dataT1pc,
    dataT2pc,
    dataSc,
    dataPsc,
    dataMsc,
    dataT1sc,
    dataT2sc,
  } = req.body

  const personas = [
    dataPpc,
    dataMpc,
    dataT1pc,
    dataT2pc,
    dataSc,
    dataPsc,
    dataMsc,
    dataT1sc,
    dataT2sc,
  ]

  let usuario = undefined

  //BORRAR
  return res.json("xd")

  // {
  //   cedula
  //   p_nombre
  //   s_nombre
  //   p_apellido
  //   s_apellido
  //   fecha_nacimiento
  //   sexo
  //   estado_civil
  // } solo require id_persona

  // datos del usuario, esto sera un select
  connection.query("", [], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    usuario = rows.pop()
  })

  // todo lo que viene de aqui es un insert
  const success = { msg: "Carta agregada satisfactoriamente" }

  // el primer insert es del usuario
  connection.query("", Object.values(dataPpc), error => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(success)
  })

  // luego es de todos los demas
  personas.forEach(persona => {
    connection.query("", Object.values(persona), error => {
      if (error) {
        return res.status(400).send(error.message)
      }
      return res.json(success)
    })
  })
}

exports.actualizarCarta = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.eliminarCarta = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}
