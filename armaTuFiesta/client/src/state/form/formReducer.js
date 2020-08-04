import { CREATE_FORM, ON_CHANGE_FORM, ON_SUBMIT_FORM } from "./formTypes"

const initialState = {}

export default (state = initialState, action) => {
  switch (action.type) {
    case ON_CHANGE_FORM:
      return { ...state, [action.payload.name]: action.payload.value }
    default:
      return state
  }
}
