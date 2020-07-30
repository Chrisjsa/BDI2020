import {
  READ_NOTARIAS,
  CREATE_NOTARIA,
  UPDATE_NOTARIA,
  DELETE_NOTARIA,
  ERROR_NOTARIA,
  LOADING_NOTARIA,
  SET_CURRENT_NOTARIA,
} from "../types/notariaTypes"

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
  }
}

export const createNotaria = notaria => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.post("api/notarias/nueva", notaria, config)
    dispatch({
      type: CREATE_NOTARIA,
      payload: res.data,
    })
  } catch (error) {
    dispatch({
      type: ERROR_NOTARIA,
      payload: error.response.msg,
    })
  }
}

export const updateNotaria = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.put("api/notarias/actualiza")
    dispatch({
      type: UPDATE_NOTARIA,
      payload: res.data,
    })
  } catch (error) {
    dispatch({
      type: ERROR_NOTARIA,
      payload: error.response.msg,
    })
  }
}

export const deleteNotaria = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.delete("api/notarias/elimina")
    dispatch({
      type: DELETE_NOTARIA,
      payload: res.data,
    })
  } catch (error) {
    dispatch({
      type: ERROR_NOTARIA,
      payload: error.response.msg,
    })
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
