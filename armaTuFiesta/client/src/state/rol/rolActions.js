import {
  ERROR_ROL,
  LOADING_ROL,
  LEER_ROL,
  CREAR_ROL,
  ELIMINAR_ROL,
  LEER_PERMISO,
} from "./rolTypes"
import axios from "axios"
import setAuthToken from "../../utils/setAuthToken"

const config = { headers: { "Content-Type": "application/json" } }

export const setLoading = () => dispatch => {
  return dispatch({ type: LOADING_ROL })
}

export const leerRoles = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get(`api/roles/leer`)
    dispatch({ type: LEER_ROL, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_ROL, payload: error.response.data.message })
  }
}

export const crearRol = rol => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.post(`api/roles/nueva`, rol, config)
    dispatch({ type: CREAR_ROL, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_ROL, payload: error.response.data.message })
  }
}

export const eliminarRol = idRoll => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.delete(`api/roles/eliminar/${idRoll}`, config)
    dispatch({ type: ELIMINAR_ROL, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_ROL, payload: error.response.data.message })
  }
}

export const leerPermisos = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get(`api/roles/leerPermiso`)
    dispatch({ type: LEER_PERMISO, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_ROL, payload: error.response.data.message })
  }
}
