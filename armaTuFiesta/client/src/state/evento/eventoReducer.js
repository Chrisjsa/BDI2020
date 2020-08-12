import {
  ERROR_EVENTO,
  LOADING_EVENTO,
  LEER_EVENTOS_POR_USUARIO,
} from "./eventoTypes"

const initialState = { loading: false, error: null, eventos: [] }

export default (state = initialState, action) => {
  switch (action.type) {
    case LEER_EVENTOS_POR_USUARIO:
      return { ...state, loading: false, eventos: action.payload }

    case LOADING_EVENTO:
      return { ...state, loading: true }

    case ERROR_EVENTO:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
