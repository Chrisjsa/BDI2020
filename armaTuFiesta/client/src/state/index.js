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

export default combineReducers({
  auth: authReducer,
  events: eventoReducer,
  notarias: notariaReducer,
  cartas: cartaReducer,
  lugares: lugarReducer,
  clientes: clienteReducer,
  form: formReducer,
  alerts: alertReducer,
  tips: tipReducer,
  reportes: reporteReducer,
})
