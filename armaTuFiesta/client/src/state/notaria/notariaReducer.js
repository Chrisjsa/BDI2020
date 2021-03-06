import {
  READ_NOTARIAS,
  CREAR_NOTARIA,
  UPDATE_NOTARIA,
  ELIMINAR_NOTARIA,
  ERROR_NOTARIA,
  LOADING_NOTARIA,
  SET_CURRENT_NOTARIA,
  CLEAR_ERROR_NOTARIA,
} from "./notariaTypes"

const initialState = {
  notarias: [],
  notariasCols: [],
  error: undefined,
  loading: false,
  currentNotaria: undefined,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LOADING_NOTARIA:
      return {
        ...state,
        loading: true,
      }

    case READ_NOTARIAS:
      console.log(action.payload)
      return {
        ...state,
        loading: false,
        notarias: action.payload.rows,
        notariasCols: action.payload.columns,
      }

    case SET_CURRENT_NOTARIA:
      return {
        ...state,
        loading: false,
        currentNotaria: action.payload,
      }

    case CREAR_NOTARIA:
      return { ...state, loading: false }

    case UPDATE_NOTARIA:
      console.log(action.payload)
      return {
        ...state,
        loading: false,
        notarias: [...state.notarias, action.payload],
      }

    case ELIMINAR_NOTARIA:
      return { ...state, loading: false }

    case CLEAR_ERROR_NOTARIA:
      return { ...state, error: undefined }

    case ERROR_NOTARIA:
      return {
        ...state,
        error: action.payload,
      }

    default:
      return state
  }
}
