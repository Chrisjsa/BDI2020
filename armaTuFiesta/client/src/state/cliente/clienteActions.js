import { ERROR_CLIENTE, LOADING_CLIENTE, LEER_CLIENTES } from "./clienteTypes"
import axios from "axios"
import setAuthToken from "../../utils/setAuthToken"

const config = { headers: { "Content-Type": "application/json" } }

export const setLoading = () => dispatch => {
  return dispatch({ type: LOADING_CLIENTE })
}

export const leerClientes = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get(`api/clientes/`, config)
    dispatch({ type: LEER_CLIENTES, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_CLIENTE, payload: error.response.msg })
  }
}
