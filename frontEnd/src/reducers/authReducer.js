import { LOGIN, LOGOUT } from "../types/authTypes"

const user = {
  p_nombre: "Tomás",
  p_apellido: "Guzmán",
  rol: "usuario",
}

const initialState = {
  user,
  loading: false,
  error: null,
  isAuthorized: false,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LOGIN:
      return {
        ...state,
        isAuthorized: true,
      }

    case LOGOUT:
      return {
        ...state,
        isAuthorized: false,
      }

    default:
      return state
  }
}
