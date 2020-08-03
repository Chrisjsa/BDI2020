import {
  ERROR_LUGAR,
  LOADING_LUGAR,
  READ_ESTADO,
  LEER_MUNICIPIO,
  LEER_PARROQUIA,
} from "./lugarTypes"

const initialState = {
  loading: false,
  error: null,
  estados: [],
  municipios: [],
  parroquias: [],
}

export default (state = initialState, action) => {
  switch (action.type) {
    case READ_ESTADO:
      return { ...state, loading: false, estados: action.payload }

    case LEER_MUNICIPIO:
      return { ...state, loading: false, municipios: action.payload }

    case LEER_PARROQUIA:
      return { ...state, loading: false, parroquias: action.payload }

    case LOADING_LUGAR:
      return { ...state, loading: true }

    case ERROR_LUGAR:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
