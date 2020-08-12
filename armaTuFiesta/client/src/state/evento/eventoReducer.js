import { ERROR_EVENTO, LOADING_EVENTO } from "./eventoTypes"

const initialState = { loading: false, error: null }

export default (state = initialState, action) => {
  switch (action.type) {
    case LOADING_EVENTO:
      return { ...state, loading: true }

    case ERROR_EVENTO:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
