const { connection } = require("../database")
const {LEER_CARTAS, CREAR_CARTAS} = require("../sql/cartasQueries")

exports.leerCarta = (req, res) => {
  connection.query(LEER_CARTAS, (error, rows) => {
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
  connection.query("SELECT per.cedula, per.p_nombre, per.s_nombre, per.p_apellido, per.s_apellido, per.fecha_nacimiento, per.sexo, per.estado_civil FROM arma_tu_fiesta.solicitud as sol, arma_tu_fiesta.usuario as usu, arma_tu_fiesta.persona as per WHERE sol.fk_usuario = usu.id_usuario AND usu.fk_persona = per.id_persona;", [], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    usuario = rows.pop()
  })

  // todo lo que viene de aqui es un insert
  const success = { msg: "Carta agregada satisfactoriamente" }

  // el primer insert es del usuario
  connection.query(CREAR_CARTAS, Object.values(dataPpc), error => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(success)
  })

  // luego es de todos los demas
  personas.forEach(persona => {
    connection.query(CREAR_CARTAS, Object.values(persona), error => {
      if (error) {
        return res.status(400).send(error.message)
      }
      return res.json(success)
    })
  })
}


