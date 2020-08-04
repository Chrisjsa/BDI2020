import { CREATE_FORM, ON_CHANGE_FORM, ON_SUBMIT_FORM } from "./formTypes"
import axios from "axios"
import setAuthToken from "../../utils/setAuthToken"

const config = { headers: { "Content-Type": "application/json" } }

export const createForm = value => dispatch =>
  dispatch({ type: CREATE_FORM, payload: value })

export const onChangeForm = event => dispatch =>
  dispatch({ type: ON_CHANGE_FORM, payload: event.target })

export const onSubmitForm = (handler, data) => dispatch => {
  handler(data)
  dispatch({ type: ON_SUBMIT_FORM })
}
