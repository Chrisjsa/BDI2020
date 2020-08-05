import {
  ERROR_CLIENTE,
  LOADING_CLIENTE,
  LEER_CLIENTES,
  INSERTAR_CLIENTE,
  ELIMINAR_CLIENTE,
  ACTUALIZAR_CLIENTE,
  SET_CURRENT_CLIENTE,
} from "./clienteTypes"
import axios from "axios"

const config = { headers: { "Content-Type": "application/json" } }

export const setLoading = () => dispatch => {
  return dispatch({ type: LOADING_CLIENTE })
}

export const setCurrentCliente = cliente => dispatch => {
  dispatch({
    type: SET_CURRENT_CLIENTE,
    payload: cliente,
  })
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

export const insertarCliente = cliente => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.post(`api/clientes/nuevo`, cliente, config)
    dispatch({ type: INSERTAR_CLIENTE, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_CLIENTE, payload: error.response.msg })
  }
}

export const actualizarCliente = cliente => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.put(
      `api/clientes/actualizarCliente`,
      cliente,
      config
    )
    dispatch({ type: ACTUALIZAR_CLIENTE, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_CLIENTE, payload: error.response.msg })
  }
}

export const eliminarCliente = idCliente => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.delete(`api/clientes/eliminar/${idCliente}`, config)
    dispatch({ type: ELIMINAR_CLIENTE, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_CLIENTE, payload: error.response.msg })
  }
}
