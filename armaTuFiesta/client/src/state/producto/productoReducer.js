import {
  ERROR_PRODUCTO,
  AGREGAR_SERVICIOS,
  AGREGAR_PRODUCTOS,
  LEER_PRODUCTOS,
  LEER_SERVICIOS,
} from "./productoTypes"

const initialState = {
  loading: false,
  error: null,
  productosDisponibles: [],
  serviciosDisponibles: [],
}

export default (state = initialState, action) => {
  switch (action.type) {
    case AGREGAR_SERVICIOS:
      return { ...state, loading: false, edit: this }

    case AGREGAR_PRODUCTOS:
      return { ...state, loading: false, edit: this }

    case LEER_PRODUCTOS:
      return { ...state, loading: false, productosDisponibles: action.payload }

    case LEER_SERVICIOS:
      return { ...state, loading: false, serviciosDisponibles: action.payload }

    case ERROR_PRODUCTO:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
