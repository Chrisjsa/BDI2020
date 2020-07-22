import { SET_CURRENT_SERVICE, UPDATE_STATUS } from "../types/eventTypes"

const initialState = {
  // events = join evento, usuario_evento as orden_evento, imagen
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

  // services = join servicio_tercerizado, proveedor, proveedor_servicio, detalle, presupuesto, usuario evento
  services: [
    {
      id_servicio: 1,
      categoria: "musica",
      nombre: "Daddy Yankee",
      descripcion: "Daddy Yankee es un muh reggaetonero bro",
      id_evento: 1,
    },
    {
      id_servicio: 2,
      categoria: "musica",
      nombre: "Tambor Urbano",
      descripcion: "La banda que no falta en tu hora loca",
      id_evento: 1,
    },
    {
      id_servicio: 3,
      categoria: "fotografia",
      nombre: "Luis Pérez",
      descripcion: "Fotos de este pana xd",
      id_evento: 1,
    },
    {
      id_servicio: 4,
      categoria: "protocolo",
      nombre: "Ultra Seguridad",
      descripcion: "Tu marca más confiable de seguridad",
      id_evento: 3,
    },
    {
      id_servicio: 5,
      categoria: "catering",
      nombre: "Sushi",
      descripcion: "Barcos y bandejas de sushi",
      id_evento: 2,
    },
  ],

  currentService: null,

  status: "home",
}

export default (state = initialState, action) => {
  switch (action.type) {
    case SET_CURRENT_SERVICE:
      return {
        ...state,
        status: "service",
        currentService: action.payload,
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
