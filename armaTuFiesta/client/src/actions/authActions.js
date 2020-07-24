import { LOGIN, LOGOUT, ERROR } from "../types/authTypes"
import axios from "axios"

const config = { headers: { "Content-Type": "application/json" } }

export const login = credentials => async dispatch => {
  try {
    const res = await axios.post("api/auth/signin", credentials, config)
    dispatch({
      type: LOGIN,
      payload: res.data,
    })
  } catch (error) {
    dispatch({
      type: ERROR,
      payload: error.response.msg,
    })
  }
}

export const logout = () => {
  return {
    type: LOGOUT,
  }
}
