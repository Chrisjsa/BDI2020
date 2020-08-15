import { LEER_SERVICIOS } from "./citaTypes"

import axios from "axios"
import { errorTimeOut } from "../../utils/"
const config = { headers: { "Content-Type": "application/json" } }

export const leerServicios = () => async dispatch => {
  setLoading()(dispatch)
  try {
    const res = await axios.get("api/citas/leerServicios")
    dispatch({ type: LEER_SERVICIOS, payload: res.data })
  } catch (error) {
    dispatch({ type: ERROR_CITA, payload: error.response.data.message })
  }
}
