import {
  ERROR_EVENTO,
  LOADING_EVENTO,
  LEER_EVENTOS_POR_USUARIO,
  SET_CURRENT_EVENTO,
  LEER_SERVICIO_EVENTO,
  CLEAR_EVENTOS,
  LEER_CATEGORIA,
  LEER_EVENTOS,
  LEER_SALONES,
  CAMBIAR_MODO,
  CREAR_EVENTOS,
  AGREGAR_SERVICIOS,
  AGREGAR_PRODUCTOS,
  CONSULTAR_PRESUPUESTO,
} from "./eventoTypes"

import { arrayOfValues } from "../../utils/"

const initialState = {
  loading: false,
  error: null,
  tiposEvento: [],
  eventos: [],
  currentEvento: undefined,
  modo: "servicio",
  salones: [],
}

export default (state = initialState, action) => {
  switch (action.type) {
    case CONSULTAR_PRESUPUESTO:
      return {
        ...state,
        loading: false,
        currentEvento: { ...state.currentEvento, presupuesto: action.payload },
      }

    case LEER_EVENTOS_POR_USUARIO:
      return { ...state, loading: false, eventos: action.payload }

    case CAMBIAR_MODO:
      return { ...state, loading: false, modo: action.payload }

    case LEER_SERVICIO_EVENTO:
      return {
        ...state,
        loading: false,
        currentEventoServicios: action.payload,
      }

    case AGREGAR_SERVICIOS:
      return { ...state, loading: false, edit: this }

    case AGREGAR_PRODUCTOS:
      return { ...state, loading: false, edit: this }

    case CREAR_EVENTOS:
      return { ...state, loading: false, edit: this }

    case LEER_SALONES:
      return { ...state, loading: false, salones: action.payload }

    case LEER_EVENTOS:
      console.log(action.payload)
      return { ...state, loading: false, tiposEvento: action.payload }

    case LEER_CATEGORIA:
      return {
        ...state,
        loading: false,
        categorias: arrayOfValues(action.payload, "nombre"),
      }

    case LOADING_EVENTO:
      return { ...state, loading: true }

    case SET_CURRENT_EVENTO:
      return {
        ...state,
        loading: false,
        currentEvento: action.payload,
      }

    case CLEAR_EVENTOS:
      return {
        ...state,
        loading: false,
        currentEvento: undefined,
        eventos: [],
      }

    case ERROR_EVENTO:
      return { ...state, loading: false, error: action.payload }

    default:
      return state
  }
}
