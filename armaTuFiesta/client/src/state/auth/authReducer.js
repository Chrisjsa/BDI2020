import { LOGIN, LOGOUT, ERROR, LOAD_USER, LOADING_AUTH } from "./authTypes"

const initialState = {
  loading: false,
  error: undefined,
  isAuthenticated: false,
  token: localStorage.getItem("token"),
  user: null,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LOADING_AUTH:
      return {
        ...state,
        loading: true,
      }

    case LOGIN:
      localStorage.setItem("token", action.payload.token)
      return {
        ...state,
        token: action.payload.token,
        isAuthenticated: true,
        loading: false,
      }

    case LOAD_USER:
      return {
        ...state,
        user: action.payload,
        isAuthenticated: true,
        loading: false,
      }

    case ERROR:
      return {
        ...state,
        loading: false,
        error: action.payload,
      }

    case LOGOUT:
      localStorage.removeItem("token")
      return {
        ...state,
        token: null,
        isAuthenticated: false,
        user: null,
        error: action.payload,
        loading: false,
      }

    default:
      return state
  }
}
