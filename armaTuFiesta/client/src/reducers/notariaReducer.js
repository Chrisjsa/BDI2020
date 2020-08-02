import {
  READ_NOTARIAS,
  CREATE_NOTARIA,
  UPDATE_NOTARIA,
  DELETE_NOTARIA,
  ERROR_NOTARIA,
  LOADING_NOTARIA,
  SET_CURRENT_NOTARIA,
} from "../types/notariaTypes"

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

    case CREATE_NOTARIA:
      return {
        ...state,
        loading: false,
      }

    case UPDATE_NOTARIA:
      console.log(action.payload)
      return {
        ...state,
        loading: false,
        notarias: [...state.notarias, action.payload],
      }

    case DELETE_NOTARIA:
      return {
        ...state,
        loading: false,
      }

    case ERROR_NOTARIA:
      return {
        ...state,
        error: action.payload,
      }

    default:
      return state
  }
}
