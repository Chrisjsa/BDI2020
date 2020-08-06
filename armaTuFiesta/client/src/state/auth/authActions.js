import {
  LOGIN,
  LOGOUT,
  ERROR_AUTH,
  LOAD_USER,
  LOADING_AUTH,
  LEER_ROLES_PERMISOS,
} from "./authTypes"
import axios from "axios"

import setAuthToken from "../../utils/setAuthToken"

const config = { headers: { "Content-Type": "application/json" } }

export const login = credentials => async dispatch => {
  setLoading()
  try {
    const res = await axios.post("api/auth/signin", credentials, config)
    dispatch({
      type: LOGIN,
      payload: res.data,
    })
    loadUser()(dispatch)
  } catch (error) {
    dispatch({
      type: ERROR_AUTH,
      payload: error.response.data.message,
    })
  }
}

export const loadUser = () => async dispatch => {
  setLoading()(dispatch)
  if (localStorage.token) {
    setAuthToken(localStorage.token)
  }

  try {
    const res = await axios.get("/api/auth/")
    dispatch({ type: LOAD_USER, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_AUTH, payload: error.response.data.message })
  }
}

export const logout = () => {
  return {
    type: LOGOUT,
  }
}

export const setLoading = () => dispatch => {
  return dispatch({
    type: LOADING_AUTH,
  })
}

export const leerRolesPermisos = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get(`api/roles/leerRolesPermisos`, config)
    dispatch({ type: LEER_ROLES_PERMISOS, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_AUTH, payload: error.response.data.message })
  }
}
