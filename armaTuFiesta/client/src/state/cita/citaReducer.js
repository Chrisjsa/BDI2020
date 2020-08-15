import { LEER_SERVICIOS } from "./citaTypes"

const initialState = {
  loading: false,
  error: null,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LEER_SERVICIOS:
      return { ...state, loading: false, edit: this }

    default:
      return state
  }
}
