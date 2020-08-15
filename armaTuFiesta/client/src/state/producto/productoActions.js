import {
  ERROR_PRODUCTO,
  AGREGAR_SERVICIOS,
  AGREGAR_PRODUCTOS,
  LEER_PRODUCTOS,
  LEER_SERVICIOS,
} from "./productoTypes"
import axios from "axios"

const config = { headers: { "Content-Type": "application/json" } }

export const agregarServicios = () => async (dispatch) => {
  setLoading()(dispatch)
  try {
    const res = await axios.post("api/productos/agregarServicios", config)
    dispatch({ type: AGREGAR_SERVICIOS, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_PRODUCTO, payload: error.response.msg })
  }
}

export const agregarProductos = () => async (dispatch) => {
  setLoading()(dispatch)
  try {
    const res = await axios.post("api/productos/agregarProductos", config)
    dispatch({ type: AGREGAR_PRODUCTOS, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_PRODUCTO, payload: error.response.msg })
  }
}

export const leerProductos = () => async (dispatch) => {
  setLoading()(dispatch)
  try {
    const res = await axios.get("api/productos/leerProductos")
    dispatch({ type: LEER_PRODUCTOS, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_PRODUCTO, payload: error.response.msg })
  }
}

export const leerServicios = () => async (dispatch) => {
  setLoading()(dispatch)
  try {
    const res = await axios.get("api/productos/leerServicios")
    dispatch({ type: LEER_SERVICIOS, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_PRODUCTO, payload: error.response.msg })
  }
}
