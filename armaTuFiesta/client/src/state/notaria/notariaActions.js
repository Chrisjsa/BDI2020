import {
  READ_NOTARIAS,
  CREAR_NOTARIA,
  UPDATE_NOTARIA,
  ELIMINAR_NOTARIA,
  ERROR_NOTARIA,
  LOADING_NOTARIA,
  SET_CURRENT_NOTARIA,
  CLEAR_ERROR_NOTARIA,
} from "./notariaTypes"

import axios from "axios"

const config = { headers: { "Content-Type": "application/json" } }

export const readNotarias = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get("api/notarias/leer")
    dispatch({
      type: READ_NOTARIAS,
      payload: res.data,
    })
  } catch (error) {
    dispatch({
      type: ERROR_NOTARIA,
      payload: error.response.msg,
    })
    errorTimeOut(dispatch, CLEAR_ERROR_NOTARIA)
  }
}

export const crearNotaria = notaria => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.post(`api/notarias/nueva`, notaria, config)
    dispatch({ type: CREAR_NOTARIA, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_NOTARIA, payload: error.response.msg })
    errorTimeOut(dispatch, CLEAR_ERROR_NOTARIA)
  }
}

export const updateNotaria = notaria => async dispatch => {
  setLoading()(dispatch)
  try {
    await axios.put("api/notarias/actualizar", notaria, config)
    dispatch({
      type: UPDATE_NOTARIA,
      payload: notaria,
    })
  } catch (error) {
    dispatch({
      type: ERROR_NOTARIA,
      payload: error.message,
    })
    errorTimeOut(dispatch, CLEAR_ERROR_NOTARIA)
  }
}

export const eleminarNotaria = notaria => async dispatch => {
  console.table(notaria)
  setLoading()(dispatch)
  try {
    const res = await axios.delete(
      `api/notarias/eliminar/${notaria.id_locacion}`,
      notaria,
      config
    )
    dispatch({ type: ELIMINAR_NOTARIA, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_NOTARIA, payload: error.response.msg })
    errorTimeOut(dispatch, CLEAR_ERROR_NOTARIA)
  }
}

export const setCurrentNotaria = notaria => dispatch => {
  dispatch({
    type: SET_CURRENT_NOTARIA,
    payload: notaria,
  })
}

export const setLoading = () => dispatch => {
  return dispatch({
    type: LOADING_NOTARIA,
  })
}
