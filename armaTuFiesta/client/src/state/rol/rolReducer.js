import {
  ERROR_ROL,
  LOADING_ROL,
  LEER_ROL,
  CREAR_ROL,
  ELIMINAR_ROL,
} from "./rolTypes"

const initialState = { loading: false, error: null }

export default (state = initialState, action) => {
  switch (action.type) {
    case LOADING_ROL:
      return { ...state, loading: true }

    case LEER_ROL:
      return { ...state, loading: false }

    case CREAR_ROL:
      return { ...state, loading: false }

    case ELIMINAR_ROL:
      return { ...state, loading: false }

    case ERROR_ROL:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
