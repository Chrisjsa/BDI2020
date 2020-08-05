import { ERROR_TIP, LOADING_TIP } from "./tipTypes"
import axios from "axios"
import setAuthToken from "../../utils/setAuthToken"

const config = { headers: { "Content-Type": "application/json" } }

export const setLoading = () => dispatch => {
  return dispatch({ type: LOADING_TIP })
}

export const insertarTip = cliente => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.post(`api/clientes/nuevo`, cliente, config)
    dispatch({ type: INSERTAR_CLIENTE, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_CLIENTE, payload: error.response.msg })
  }
}

export const actualizarTip = cliente => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.put(`api/clientes/actualizarTip`, cliente, config)
    dispatch({ type: ACTUALIZAR_CLIENTE, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_CLIENTE, payload: error.response.msg })
  }
}

export const eliminarTip = idTip => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.delete(`api/clientes/eliminar/${idTip}`, config)
    dispatch({ type: ELIMINAR_CLIENTE, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_CLIENTE, payload: error.response.msg })
  }
}
