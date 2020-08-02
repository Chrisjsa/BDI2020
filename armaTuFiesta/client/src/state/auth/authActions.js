import { LOGIN, LOGOUT, ERROR, LOAD_USER, LOADING } from "./authTypes"
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
      type: ERROR,
      payload: error.response.msg,
    })
  }
}

export const loadUser = () => async dispatch => {
  setLoading()(dispatch)
  if (localStorage.token) {
    setAuthToken(localStorage.token)
  }

  try {
    const res = await axios.get(`/api/auth/`)
    dispatch({ type: LOAD_USER, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR, payload: error.response.msg })
  }
}

export const logout = () => {
  return {
    type: LOGOUT,
  }
}

export const setLoading = () => dispatch => {
  return dispatch({
    type: LOADING,
  })
}
