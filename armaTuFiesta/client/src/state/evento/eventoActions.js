import {
  ERROR_EVENTO,
  LOADING_EVENTO,
  LEER_EVENTOS_POR_USUARIO,
  SET_CURRENT_EVENTO,
  LEER_SERVICIO_EVENTO,
  CLEAR_EVENTOS,
} from "./eventoTypes"
import axios from "axios"

const config = { headers: { "Content-Type": "application/json" } }

export const setLoading = () => (dispatch) => {
  return dispatch({ type: LOADING_EVENTO })
}

export const leerEventosPorUsuario = (usuario) => async (dispatch) => {
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

export const leerServiciosEvento = () => async (dispatch) => {
  setLoading()(dispatch)
  try {
    const res = await axios.get(`api/eventos/leerServiciosEventos`, config)
    dispatch({ type: LEER_SERVICIO_EVENTO, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_EVENTO, payload: error.response.msg })
  }
}

export const setCurrentEvento = (evento) => (dispatch) => {
  dispatch({
    type: SET_CURRENT_EVENTO,
    payload: evento,
  })
}

export const clearEventos = () => (dispatch) => {
  dispatch({
    type: CLEAR_EVENTOS,
  })
}
