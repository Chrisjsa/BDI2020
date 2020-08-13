import {
  ERROR_ROL,
  LOADING_ROL,
  LEER_ROL,
  CREAR_ROL,
  ELIMINAR_ROL,
  LEER_PERMISO,
  ASIGNAR_ROL_PERMISO,
  LEER_ROL_PERMISOS,
} from "./rolTypes"

const initialState = {
  loading: false,
  error: null,
  rolesPermisos: [],
  permisos: [],
  roles: [],
}

export default (state = initialState, action) => {
  switch (action.type) {
    case LEER_ROL_PERMISOS:
      return { ...state, loading: false, rolesPermisos: action.payload }

    case ASIGNAR_ROL_PERMISO:
      return { ...state }

    case LEER_PERMISO:
      return { ...state, loading: false, permisos: action.payload }

    case LOADING_ROL:
      return { ...state, loading: true }

    case LEER_ROL:
      return { ...state, loading: false, roles: action.payload }

    case CREAR_ROL:
      return { ...state, loading: false }

    case ELIMINAR_ROL:
      return { ...state, loading: false }

    case ERROR_ROL:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
