import { combineReducers } from "redux"

import { reducer as formReducer } from "redux-form"
import authReducer from "./auth/authReducer"
import eventoReducer from "./evento/eventoReducer"
import notariaReducer from "./notaria/notariaReducer"
import cartaReducer from "./carta/cartaReducer"
import lugarReducer from "./lugar/lugarReducer"
import clienteReducer from "./cliente/clienteReducer"
import alertReducer from "./alert/alertReducer"
import tipReducer from "./tip/tipReducer"
import reporteReducer from "./reporte/reporteReducer"
import rolReducer from "./rol/rolReducer"
import citaReducer from "./cita/citaReducer"
import productoReducer from "./producto/productoReducer"

export default combineReducers({
  auth: authReducer,
  eventos: eventoReducer,
  notarias: notariaReducer,
  cartas: cartaReducer,
  lugares: lugarReducer,
  clientes: clienteReducer,
  form: formReducer,
  alerts: alertReducer,
  tips: tipReducer,
  reportes: reporteReducer,
  rols: rolReducer,
  cita: citaReducer,
  producto: productoReducer,
})
