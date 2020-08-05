import { ERROR_TIP, LOADING_TIP } from "./tipTypes"

const initialState = {
  loading: false,
  error: null,
  tips: [],
  tipsCols: [],
  currentTip: undefined,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LOADING_TIP:
      return { ...state, loading: true }

    case ERROR_TIP:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
