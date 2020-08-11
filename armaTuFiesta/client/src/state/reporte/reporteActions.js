import {
  ERROR_REPORTE,
  LOADING_REPORTE,
  OBTENER_REPORTE_1,
  OBTENER_REPORTE_2,
  OBTENER_REPORTE_3,
  OBTENER_REPORTE_4,
} from "./reporteTypes"
import axios from "axios"

import moment from "moment"

const config = { headers: { "Content-Type": "application/json" } }

export const setLoading = () => dispatch => {
  return dispatch({ type: LOADING_REPORTE })
}

export const obtenerReporte1 = fechas => async dispatch => {
  const fechaInicial = moment(fechas.fechaInicial).format("YYYY-MM-DD")
  const fechaFinal = moment(fechas.fechaFinal).format("YYYY-MM-DD")

  setLoading()(dispatch)
  try {
    const res = await axios.get(
      `api/reportes/1?fechaInicial=${fechaInicial}&fechaFinal=${fechaFinal}`
    )
    dispatch({ type: OBTENER_REPORTE_1, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_REPORTE, payload: error.response.msg })
  }
}

export const obtenerReporte2 = fechas => async dispatch => {
  const fechaInicial = moment(fechas.fechaInicial).format("YYYY-MM-DD")
  const fechaFinal = moment(fechas.fechaFinal).format("YYYY-MM-DD")
  setLoading()(dispatch)
  try {
    const res = await axios.get(
      `api/reportes/2?fechaInicial=${fechaInicial}&fechaFinal=${fechaFinal}`
    )
    dispatch({ type: OBTENER_REPORTE_2, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_REPORTE, payload: error.response.msg })
  }
}

export const obtenerReporte3 = fechas => async dispatch => {
  const fechaInicial = moment(fechas.fechaInicial).format("YYYY-MM-DD")
  const fechaFinal = moment(fechas.fechaFinal).format("YYYY-MM-DD")
  setLoading()(dispatch)
  try {
    const res = await axios.get(
      `api/reportes/3?fechaInicial=${fechaInicial}&fechaFinal=${fechaFinal}`
    )
    dispatch({ type: OBTENER_REPORTE_3, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_REPORTE, payload: error.response.msg })
  }
}

export const obtenerReporte4 = fechas => async dispatch => {
  const fechaInicial = moment(fechas.fechaInicial).format("YYYY-MM-DD")
  const fechaFinal = moment(fechas.fechaFinal).format("YYYY-MM-DD")
  setLoading()(dispatch)
  try {
    const res = await axios.get(
      `api/reportes/4?fechaInicial=${fechaInicial}&fechaFinal=${fechaFinal}`
    )
    dispatch({ type: OBTENER_REPORTE_4, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_REPORTE, payload: error.response.msg })
  }
}
