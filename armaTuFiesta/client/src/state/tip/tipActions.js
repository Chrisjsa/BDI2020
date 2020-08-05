import { ERROR_TIP, LOADING_TIP } from "./tipTypes"
import axios from "axios"
import setAuthToken from "../../utils/setAuthToken"

const config = { headers: { "Content-Type": "application/json" } }

export const setLoading = () => dispatch => {
  return dispatch({ type: LOADING_TIP })
}

export const insertarTip = tip => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.post(`api/tips/nuevo`, tip, config)
    dispatch({ type: INSERTAR_TIP, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_TIP, payload: error.response.msg })
  }
}

export const actualizarTip = tip => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.put(`api/tips/actualizar`, tip, config)
    dispatch({ type: ACTUALIZAR_TIP, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_TIP, payload: error.response.msg })
  }
}

export const eliminarTip = idTip => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.delete(`api/tips/eliminar/${idTip}`, config)
    dispatch({ type: ELIMINAR_TIP, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_TIP, payload: error.response.msg })
  }
}
