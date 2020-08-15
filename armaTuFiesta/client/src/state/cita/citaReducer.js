import { LEER_SERVICIOS, INSERTAR_CITA, LEER_CITAS_USUARIO } from "./citaTypes"

const initialState = {
  loading: false,
  error: null,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LEER_SERVICIOS:
      return { ...state, loading: false, edit: this }

    case INSERTAR_CITA:
      return { ...state, loading: false, edit: this }

    case LEER_CITAS_USUARIO:
      return { ...state, loading: false, edit: this }

    default:
      return state
  }
}
