import { ERROR_REPORTE, LOADING_REPORTE } from "./reporteTypes";

const initialState = { loading: false, error: null };

export default (state = initialState, action) => {
  switch (action.type) {
    case LOADING_REPORTE:
      return { ...state, loading: true };

    case ERROR_REPORTE:
      return { ...state, loading: false, error: action.payload };

    default:
      return state;
  }
};
