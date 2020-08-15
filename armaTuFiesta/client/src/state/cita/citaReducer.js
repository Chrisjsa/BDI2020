import {
  LEER_SERVICIOS,
  INSERTAR_CITA,
  LEER_CITAS_USUARIO,
  ERROR_CITA,
  LOADING_CITA,
} from "./citaTypes"

const initialState = {
  loading: false,
  error: null,
  serviciosCita: [],
  citasUsuaria: [],
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LEER_SERVICIOS:
      return { ...state, loading: false, serviciosCita: action.payload }

    case INSERTAR_CITA:
      return { ...state, loading: false, edit: this }

    case LEER_CITAS_USUARIO:
      return { ...state, loading: false, citasUsuario: action.payload }

    case LOADING_CITA:
      return { ...state, loading: true }

    case ERROR_CITA:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
