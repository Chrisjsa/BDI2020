import {
  ERROR_LUGAR,
  LOADING_LUGAR,
  READ_ESTADO,
  LEER_MUNICIPIO,
  LEER_PARROQUIA,
  SET_CURRENT_ESTADO,
  SET_CURRENT_MUNICIPIO,
  SET_CURRENT_PARROQUIA,
  CLEAR_ERROR_LUGAR,
} from "./lugarTypes"
import axios from "axios"

const config = { headers: { "Content-Type": "application/json" } }

export const setLoading = () => dispatch => {
  return dispatch({ type: LOADING_LUGAR })
}

export const leerEstado = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get(`api/lugares/leerEstado`, config)
    dispatch({ type: READ_ESTADO, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_LUGAR, payload: error.response.msg })
    errorTimeOut(dispatch, CLEAR_ERROR_LUGAR)
  }
}

export const leerMunicipio = idEstado => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get(
      `api/lugares/leerMunicipio?id_estado=${idEstado}`,
      config
    )
    dispatch({ type: LEER_MUNICIPIO, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_LUGAR, payload: error.response.msg })
    errorTimeOut(dispatch, CLEAR_ERROR_LUGAR)
  }
}

export const leerParroquia = idParroquia => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get(
      `api/lugares/leerParroquia?id_municipio=${idParroquia}`,
      idParroquia,
      config
    )
    dispatch({ type: LEER_PARROQUIA, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_LUGAR, payload: error.response.msg })
    errorTimeOut(dispatch, CLEAR_ERROR_LUGAR)
  }
}

export const setCurrentEstado = idEstado => dispatch => {
  setLoading()(dispatch)
  try {
    dispatch({ type: SET_CURRENT_ESTADO, payload: idEstado })
  } catch (error) {
    dispatch({ type: ERROR_LUGAR, payload: error.response.msg })
  }
}

export const setCurrentMunicipio = idMunicipio => dispatch => {
  setLoading()(dispatch)
  try {
    dispatch({ type: SET_CURRENT_MUNICIPIO, payload: idMunicipio })
  } catch (error) {
    dispatch({ type: ERROR_LUGAR, payload: error.response.msg })
  }
}

export const setCurrentParroquia = idParroquia => dispatch => {
  setLoading()(dispatch)
  try {
    dispatch({ type: SET_CURRENT_PARROQUIA, payload: idParroquia })
  } catch (error) {
    dispatch({ type: ERROR_LUGAR, payload: error.response.msg })
  }
}
