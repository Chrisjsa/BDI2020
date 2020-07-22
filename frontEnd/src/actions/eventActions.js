import { SET_CURRENT_SERVICE, UPDATE_STATUS } from "../types/eventTypes"

export const setCurrentService = serviceId => dispatch => {
  console.log("eventAct, serviceId =", serviceId)
  dispatch({
    type: SET_CURRENT_SERVICE,
    payload: serviceId,
  })
}

export const updateStatus = status => dispatch => {
  dispatch({
    type: UPDATE_STATUS,
    payload: status,
  })
}
