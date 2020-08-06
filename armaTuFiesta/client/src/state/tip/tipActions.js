import {
  ERROR_TIP,
  LOADING_TIP,
  INSERTAR_TIP,
  ACTUALIZAR_TIP,
  ELIMINAR_TIP,
  SET_CURRENT_TIP,
  LEER_TIPS,
  CLEAR_ERROR_TIP,
} from "./tipTypes";
import axios from "axios";
import { errorTimeOut } from "../../utils/";
const config = { headers: { "Content-Type": "application/json" } };

export const leerTips = () => async (dispatch) => {
  setLoading()(dispatch);
  try {
    const res = await axios.get(`api/tips/`, config);
    dispatch({ type: LEER_TIPS, payload: res.data });
  } catch (error) {
    dispatch({ type: ERROR_TIP, payload: error.response.data.message });
    errorTimeOut(dispatch, CLEAR_ERROR_TIP);
  }
};

export const setLoading = () => (dispatch) => {
  return dispatch({ type: LOADING_TIP });
};

export const insertarTip = (tip) => async (dispatch) => {
  setLoading()(dispatch);
  try {
    const res = await axios.post(`api/tips/nuevo`, tip, config);
    dispatch({ type: INSERTAR_TIP, payload: res.data });
  } catch (error) {
    dispatch({ type: ERROR_TIP, payload: error.response.msg });
    errorTimeOut(dispatch, CLEAR_ERROR_TIP);
  }
};

export const actualizarTip = (tip) => async (dispatch) => {
  setLoading()(dispatch);
  try {
    const res = await axios.put(`api/tips/actualizar`, tip, config);
    dispatch({ type: ACTUALIZAR_TIP, payload: res.data });
  } catch (error) {
    dispatch({ type: ERROR_TIP, payload: error.response.msg });
    errorTimeOut(dispatch, CLEAR_ERROR_TIP);
  }
};

export const eliminarTip = (idTip) => async (dispatch) => {
  setLoading()(dispatch);
  try {
    const res = await axios.delete(`api/tips/eliminar/${idTip}`, config);
    dispatch({ type: ELIMINAR_TIP, payload: res.data });
  } catch (error) {
    dispatch({ type: ERROR_TIP, payload: error.response.msg });
    errorTimeOut(dispatch, CLEAR_ERROR_TIP);
  }
};

export const setCurrentTip = (tip) => (dispatch) => {
  dispatch({
    type: SET_CURRENT_TIP,
    payload: tip,
  });
};
