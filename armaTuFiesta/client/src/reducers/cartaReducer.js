import { CREATE_CARTA, ERROR_CARTA, LOADING_CARTA } from "../types/cartaTypes"

const initialState = {
  loading: false,
  error: null,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LOADING_CARTA:
      return {
        ...state,
        loading: true,
      }

    case CREATE_CARTA:
      return {
        ...state,
        loading: false,
      }

    default:
      return state
  }
}
