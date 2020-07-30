import {
  READ_NOTARIAS,
  CREATE_NOTARIA,
  UPDATE_NOTARIA,
  DELETE_NOTARIA,
  ERROR_NOTARIA,
  LOADING_NOTARIA,
} from "../types/notariaTypes"

const initialState = {
  notarias: [],
  error: undefined,
  loading: false,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LOADING_NOTARIA:
      return {
        ...state,
        loading: true,
      }

    case READ_NOTARIAS:
      return {
        ...state,
        loading: false,
        notarias: action.payload,
      }

    case CREATE_NOTARIA:
      return {
        ...state,
        loading: false,
      }

    case UPDATE_NOTARIA:
      return {
        ...state,
        loading: false,
      }

    case DELETE_NOTARIA:
      return {
        ...state,
        loading: false,
      }

    case ERROR_NOTARIA:
      return state

    default:
      return state
  }
}
