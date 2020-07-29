import { LOGIN, LOGOUT, ERROR, LOAD_USER } from "../types/authTypes"

const initialState = {
  loading: false,
  error: null,
  isAuthenticated: false,
  token: localStorage.getItem("token"),
  user: null,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LOGIN:
      localStorage.setItem("token", action.payload.token)
      return {
        ...state,
        token: action.payload.token,
        isAuthenticated: true,
      }

    case LOAD_USER:
      return {
        ...state,
        user: action.payload,
        isAuthenticated: true,
        loading: false,
      }

    case LOGOUT:
    case ERROR:
      localStorage.removeItem("token")
      return {
        ...state,
        token: null,
        isAuthenticated: false,
        loading: false,
        user: null,
        error: action.payload,
      }

    default:
      return state
  }
}
