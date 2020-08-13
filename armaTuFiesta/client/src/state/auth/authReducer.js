import { arrayOfValues } from "../../utils"

import {
  LOGIN,
  LOGOUT,
  ERROR_AUTH,
  LEER_ROLES_PERMISOS,
  LOAD_USER,
  LOADING_AUTH,
  CLEAR_ERROR_AUTH,
} from "./authTypes"

import _ from "underscore"

const initialState = {
  loading: false,
  error: undefined,
  isAuthenticated: false,
  token: localStorage.getItem("token"),
  user: undefined,
  roles: [],
  SIGN_UP,
}

export default (state = initialState, action) => {
  switch (action.type) {
    case CLEAR_ERROR_AUTH:
      return {
        ...state,
        error: undefined,
      }

    case SIGN_UP:
      return { ...state, loading: false, edit: this }

    case LOADING_AUTH:
      return {
        ...state,
        loading: true,
      }

    case LEER_ROLES_PERMISOS:
      return {
        ...state,
        loading: false,
        roles: _.uniq(arrayOfValues(action.payload, "rol")),
        permisos: action.payload,
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

    case ERROR_AUTH:
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
