import {
  SET_CURRENT_SERVICE,
  SET_CURRENT_EVENT,
  UPDATE_STATUS,
} from "../types/eventTypes"

export const setCurrentService = serviceId => dispatch => {
  console.log("eventAct, serviceId =", serviceId)
  dispatch({
    type: SET_CURRENT_SERVICE,
    payload: serviceId,
  })
}

export const setCurrentEvent = eventId => dispatch => {
  console.log("eventAct, eventId =", eventId)
  dispatch({
    type: SET_CURRENT_EVENT,
    payload: eventId,
  })
}

export const updateStatus = status => dispatch => {
  dispatch({
    type: UPDATE_STATUS,
    payload: status,
  })
}
