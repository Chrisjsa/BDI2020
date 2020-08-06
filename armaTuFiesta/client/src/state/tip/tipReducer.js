import { ERROR_TIP, LOADING_TIP, SET_CURRENT_TIP, LEER_TIPS, CLEAR_ERROR_TIP } from "./tipTypes"

const initialState = {
  loading: false,
  error: null,
  tips: [],
  tipsCols: [],
  currentTip: undefined,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case SET_CURRENT_TIP:
      return {
        ...state,
        currentTip: action.payload,
      }
    case LEER_TIPS:
      return {
        ...state,
        loading: false,
        tips: action.payload.rows,
        tipsCols: action.payload.columns,
      }

    case LOADING_TIP:
      return { ...state, loading: true }

    case CLEAR_ERROR_TIP:
      return { ...state, error: undefined }

    case ERROR_TIP:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
