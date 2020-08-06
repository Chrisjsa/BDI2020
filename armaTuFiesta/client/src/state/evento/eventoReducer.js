import {
  SET_CURRENT_SERVICE,
  SET_CURRENT_EVENT,
  UPDATE_STATUS,
  CLEAR_ERROR_EVENTO,
} from "./eventoTypes"

const initialState = {
  events: [
    {
      id_evento: 1,
      nombre: "Mi boda",
      tipo: "boda",
      tema: "dorado",
      cortejo: null,
      cantidad_invitados: 60,
      fecha_reserva: new Date("07/15/2020"),
      fecha_realizacion: new Date("07/30/2020"),
      fuente: "https://source.unsplash.com/960x480/?wedding",
    },

    {
      id_evento: 2,
      nombre: "Juan cumple 30",
      tipo: "cumpleaños",
      tema: "personalizado",
      cortejo: null,
      cantidad_invitados: 48,
      fecha_reserva: new Date("07/12/2020"),
      fecha_realizacion: new Date("07/18/2020"),
      fuente: "https://source.unsplash.com/960x480/?birthday",
    },

    {
      id_evento: 3,
      nombre: "15 de Andrea",
      tipo: "quince_años",
      tema: "Dorado",
      cortejo: null,
      cantidad_invitados: 110,
      fecha_reserva: new Date("07/13/2020"),
      fecha_realizacion: new Date("08/10/2020"),
      fuente: "https://source.unsplash.com/960x480/?wine,party",
    },
  ],

  services: [
    {
      id_servicio: 1,
      categoria: "Música",
      nombre: "Daddy Yankee",
      descripcion: "Daddy Yankee es un muh reggaetonero bro",
      id_evento: 1,
    },
    {
      id_servicio: 2,
      categoria: "Música",
      nombre: "Tambor Urbano",
      descripcion: "La banda que no falta en tu hora loca",
      id_evento: 1,
    },
    {
      id_servicio: 3,
      categoria: "Fotografía",
      nombre: "Luis Pérez",
      descripcion: "Fotos de este pana xd",
      id_evento: 1,
    },
    {
      id_servicio: 4,
      categoria: "Protocolo",
      nombre: "Ultra Seguridad",
      descripcion: "Tu marca más confiable de seguridad",
      id_evento: 3,
    },
    {
      id_servicio: 5,
      categoria: "Catering",
      nombre: "Sushi",
      descripcion: "Barcos y bandejas de sushi",
      id_evento: 2,
    },
  ],

  currentService: null,

  currentEvent: null,

  categories: [
    "Floristería",
    "Mobiliario de Festejo",
    "Mobiliario Lounge",
    "Mobiliario de Acrílico y Cristal",
    "Catering",
    "Bebidas",
    "Pasapalos",
    "Minidulces",
    "Música",
    "Protocolo",
    "Utilería",
    "Toldos",
    "Luces",
    "Tarimas",
    "Personal de Festejo",
    "Transporte",
    "Audiovisual",
    "Decoración",
    "Centro de Mesa",
    "Diseñador",
    "Costura",
    "Modista",
    "Fotografía",
  ],
}

export default (state = initialState, action) => {
  switch (action.type) {
    case SET_CURRENT_EVENT:
      return {
        ...state,
        currentEvent: state.events.find(
          event => event.id_evento === action.payload
        ),
      }

      case CLEAR_ERROR_EVENTO:
      return { ...state, error: undefined }

    case SET_CURRENT_SERVICE:
      return {
        ...state,
        currentService: state.services.find(
          service => service.id_servicio === action.payload
        ),
      }

    case UPDATE_STATUS:
      return {
        ...state,
        status: action.payload,
      }
    default:
      return state
  }
}
