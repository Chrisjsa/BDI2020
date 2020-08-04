import { ERROR_CLIENTE, LOADING_CLIENTE, LEER_CLIENTES } from "./clienteTypes"

const initialState = {
  loading: false,
  error: null,
  clientes: [],
  clientesCols: [],
  currentCliente: undefined,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LOADING_CLIENTE:
      return { ...state, loading: true }

    case ERROR_CLIENTE:
      return { ...state, loading: false, error: action.payload }

    case LEER_CLIENTES:
      return {
        ...state,
        loading: false,
        clientes: action.payload.rows,
        clientesCols: action.payload.columns,
      }

    default:
      return state
  }
}
