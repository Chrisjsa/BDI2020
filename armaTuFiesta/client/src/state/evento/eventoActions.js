import {
  ERROR_EVENTO,
  LOADING_EVENTO,
  LEER_EVENTOS_POR_USUARIO,
  SET_CURRENT_EVENTO,
  LEER_SERVICIO_EVENTO,
  CLEAR_EVENTOS,
  LEER_CATEGORIA,
  LEER_EVENTOS,
  LEER_SALONES,
  MOSTRAR_PRESUPUESTO,
  CREAR_EVENTOS,
  AGREGAR_SERVICIOS,
  AGREGAR_PRODUCTOS,
  CONSULTAR_PRESUPUESTO,
} from "./eventoTypes"
import axios from "axios"

const config = { headers: { "Content-Type": "application/json" } }

export const setLoading = () => dispatch => {
  return dispatch({ type: LOADING_EVENTO })
}

export const leerEventosPorUsuario = usuario => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get(
      `api/eventos/leerEventosPorUsuario?correo=${usuario.username}`
    )

    dispatch({ type: LEER_EVENTOS_POR_USUARIO, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_EVENTO, payload: error.response.data.message })
  }
}

export const leerServiciosEvento = evento => async dispatch => {
  const { id_evento } = evento
  setLoading()(dispatch)
  try {
    const res = await axios.get(
      `api/eventos/leerServiciosEventos/?id_evento=${id_evento}`
    )
    dispatch({ type: LEER_SERVICIO_EVENTO, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_EVENTO, payload: error.response.data.message })
  }
}

export const setCurrentEvento = evento => dispatch => {
  dispatch({
    type: SET_CURRENT_EVENTO,
    payload: evento,
  })
}

export const clearEventos = () => dispatch => {
  dispatch({
    type: CLEAR_EVENTOS,
  })
}

export const leerCategoria = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get(`api/eventos/leerCategoria`)
    dispatch({ type: LEER_CATEGORIA, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_EVENTO, payload: error.response.msg })
  }
}

export const leerEventos = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get("api/eventos/leerEventos")
    dispatch({ type: LEER_EVENTOS, payload: res.data })
  } catch (error) {
    console.log(error.message)
    dispatch({
      type: ERROR_EVENTO,
      payload: error.response.data.message,
    })
  }
}

export const leerSalones = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get("api/eventos/leerSalones")
    dispatch({ type: LEER_SALONES, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_EVENTO, payload: error.response.data.message })
  }
}

export const mostrarPresupuesto = mostrar => dispatch => {
  setLoading()(dispatch)
  dispatch({ type: MOSTRAR_PRESUPUESTO, payload: mostrar })
}

export const crearEventos = evento => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.post("api/eventos/crearEventos", evento, config)
    dispatch({ type: CREAR_EVENTOS, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_EVENTO, payload: error.response.data.message })
  }
}

export const agregarServicios = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.post("api/eventos/agregarServicios", config)
    dispatch({ type: AGREGAR_SERVICIOS, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_EVENTO, payload: error.response.msg })
  }
}

export const agregarProductos = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.post("api/eventos/agregarProductos", config)
    dispatch({ type: AGREGAR_PRODUCTOS, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_EVENTO, payload: error.response.msg })
  }
}

export const consultarPresupuesto = evento => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get(
      `api/eventos/consultarPresupuesto?id_evento=${evento.id_evento}`
    )
    dispatch({ type: CONSULTAR_PRESUPUESTO, payload: res.data })
  } catch (error) {
    console.log(error.message)
    dispatch({ type: ERROR_EVENTO, payload: error.response.msg })
  }
}
