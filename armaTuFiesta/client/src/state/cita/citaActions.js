import {
  LEER_SERVICIOS,
  INSERTAR_CITA,
  LEER_CITAS_USUARIO,
  ERROR_CITA,
  LOADING_CITA,
} from "./citaTypes"

import axios from "axios"
import { errorTimeOut } from "../../utils/"
const config = { headers: { "Content-Type": "application/json" } }

export const setLoading = () => dispatch => {
  return dispatch({ type: LOADING_CITA })
}

export const leerServicios = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get("api/citas/leerServicios")
    dispatch({ type: LEER_SERVICIOS, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_CITA, payload: error.response.data.message })
  }
}

export const insertarCita = cita => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.post("api/citas/insertarCita", cita, config)
    dispatch({ type: INSERTAR_CITA, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_CITA, payload: error.response.data.message })
  }
}

export const leerCitasUsuario = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get("api/citas/leerCitasUsuario")
    dispatch({ type: LEER_CITAS_USUARIO, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_CITA, payload: error.response.data.message })
  }
}
