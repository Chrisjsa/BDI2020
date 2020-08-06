import { CREATE_CARTA, ERROR_CARTA, LOADING_CARTA, CLEAR_ERROR_CARTA } from "./cartaTypes"

import axios from "axios"

const config = { headers: { "Content-Type": "application/json" } }

export const createCarta = carta => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.post("api/cartas/nueva", carta, config)
    dispatch({
      type: CREATE_CARTA,
      payload: res.data,
    })
  } catch (error) {
    dispatch({
      type: ERROR_CARTA,
      payload: error.response.msg,
    })

    errorTimeOut(dispatch, CLEAR_ERROR_CARTA)
  }
}

export const setLoading = () => dispatch => {
  return dispatch({
    type: LOADING_CARTA,
  })
  
  
}
