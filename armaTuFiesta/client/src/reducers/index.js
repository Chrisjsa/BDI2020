import { combineReducers } from "redux"

import authReducer from "./authReducer"
import eventReducer from "./eventReducer"
import notariaReducer from "./notariaReducer"

export default combineReducers({
  auth: authReducer,
  events: eventReducer,
  notarias: notariaReducer,
})
