import {
  ERROR_EVENTO,
  LOADING_EVENTO,
  LEER_EVENTOS_POR_USUARIO,
  SET_CURRENT_EVENTO,
} from "./eventoTypes"

const initialState = {
  loading: false,
  error: null,
  eventos: [],
  currentEvento: undefined,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LEER_EVENTOS_POR_USUARIO:
      return { ...state, loading: false, eventos: action.payload }

    case LOADING_EVENTO:
      return { ...state, loading: true }

    case SET_CURRENT_EVENTO:
      return {
        ...state,
        loading: false,
        currentEvento: action.payload,
      }

    case ERROR_EVENTO:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
