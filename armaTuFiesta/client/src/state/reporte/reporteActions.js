import {
  ERROR_REPORTE,
  LOADING_REPORTE,
  OBTENER_REPORTE_1,
} from "./reporteTypes"
import axios from "axios"
import setAuthToken from "../../utils/setAuthToken"

import moment from "moment"

const config = { headers: { "Content-Type": "application/json" } }

export const setLoading = () => dispatch => {
  return dispatch({ type: LOADING_REPORTE })
}

export const obtenerReporte1 = fechas => async dispatch => {
  const fechaInicial = moment(fechas.fechaInicial).format("MM-DD-YYYY")
  const fechaFinal = moment(fechas.fechaFinal).format("MM-DD-YYYY")

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
