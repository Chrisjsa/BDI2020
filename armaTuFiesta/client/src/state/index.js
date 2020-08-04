import { combineReducers } from "redux"

import authReducer from "./auth/authReducer"
import eventoReducer from "./evento/eventoReducer"
import notariaReducer from "./notaria/notariaReducer"
import cartaReducer from "./carta/cartaReducer"
import lugarReducer from "./lugar/lugarReducer"
import clienteReducer from "./cliente/clienteReducer"

export default combineReducers({
  auth: authReducer,
  events: eventoReducer,
  notarias: notariaReducer,
  cartas: cartaReducer,
  lugares: lugarReducer,
  clientes: clienteReducer,
})
