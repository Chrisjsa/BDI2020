const { connection } = require("../database")

const {
  LEER_EVENTOS_POR_USUARIO,
  LEER_SERVICIOS_EVENTOS,
  LEER_CATEGORIA,
  LEER_EVENTOS,
  LEER_SALONES,
  CREAR_EVENTOS,
  AGREGAR_SERVICIOS,
  AGREGAR_PRODUCTOS,
  CONSULTAR_PRESUPUESTO,
} = require("../sql/eventosQueries")

exports.leerEventosPorUsuario = (req, res) => {
  connection.query(
    LEER_EVENTOS_POR_USUARIO,
    [req.query.correo],
    (error, rows) => {
      if (error) {
        return res.status(400).send(error.message)
      }
      return res.json(rows)
    }
  )
}

exports.leerServiciosEvento = (req, res) => {
  connection.query(
    LEER_SERVICIOS_EVENTOS,
    [req.query.id_evento, req.query.id_evento],
    (error, rows) => {
      if (error) {
        return res.status(400).send(error.message)
      }

      return res.json(rows.pop())
    }
  )
}

exports.leerCategoria = (req, res) => {
  connection.query(LEER_CATEGORIA, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.leerEventos = (req, res) => {
  const data = []
  connection.query(LEER_EVENTOS, [data], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.leerSalones = (req, res) => {
  const data = []
  connection.query(LEER_SALONES, [data], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.crearEventos = (req, res) => {
  const {
    fecha_actual,
    fecha_realizacion,
    id_evento,
    id_usuario,
    id_locacion,
    num_invitados,
  } = req.body

  const data = [
    fecha_actual,
    fecha_realizacion,
    id_evento,
    id_usuario,
    id_locacion,
    num_invitados,
  ]

  connection.query(CREAR_EVENTOS, data, (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.agregarServicios = (req, res) => {
  const data = []
  connection.query(AGREGAR_SERVICIOS, [data], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.agregarProductos = (req, res) => {
  const data = []
  connection.query(AGREGAR_PRODUCTOS, [data], (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json(rows)
  })
}

exports.consultarPresupuesto = (req, res) => {
  connection.query(
    CONSULTAR_PRESUPUESTO,
    [req.query.id_evento],
    (error, rows) => {
      if (error) {
        return res.status(400).send(error.message)
      }
      return res.json(rows[1])
    }
  )
}
