import { combineReducers } from "redux"

import authReducer from "./auth/authReducer"
import eventoReducer from "./eventos/eventoReducer"
import notariaReducer from "./notarias/notariaReducer"
import cartaReducer from "./cartas/cartaReducer"

export default combineReducers({
  auth: authReducer,
  events: eventoReducer,
  notarias: notariaReducer,
  carta: cartaReducer,
})
