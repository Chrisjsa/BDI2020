import {
  ERROR_LUGAR,
  LOADING_LUGAR,
  READ_ESTADO,
  LEER_MUNICIPIO,
  LEER_PARROQUIA,
  SET_CURRENT_ESTADO,
  SET_CURRENT_MUNICIPIO,
  SET_CURRENT_PARROQUIA,
} from "./lugarTypes"

const initialState = {
  loading: false,
  error: null,
  estados: [],
  municipios: [],
  parroquias: [],
  currentEstado: undefined,
  currentMunicipio: undefined,
  currentParroquia: undefined,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case READ_ESTADO:
      return { ...state, loading: false, estados: action.payload }

    case LEER_MUNICIPIO:
      return { ...state, loading: false, municipios: action.payload }

    case LEER_PARROQUIA:
      return { ...state, loading: false, parroquias: action.payload }

    case SET_CURRENT_ESTADO:
      return {
        ...state,
        loading: false,
        currentEstado: action.payload === "none" ? undefined : action.payload,
      }

    case SET_CURRENT_MUNICIPIO:
      return {
        ...state,
        loading: false,
        currentMunicipio:
          action.payload === "none" ? undefined : action.payload,
      }

    case SET_CURRENT_PARROQUIA:
      return {
        ...state,
        loading: false,
        currentParroquia:
          action.payload === "none" ? undefined : action.payload,
      }

    case LOADING_LUGAR:
      return { ...state, loading: true }

    case ERROR_LUGAR:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
