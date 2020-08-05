import { change } from "redux-form"

export const filterById = (list, object, object_id) =>
  list.filter(element => element[object_id] === object[object_id])

export const arrayOfValues = (list, key) => list.map(element => element[key])

export const changeFormByObject = (obj, fn) => {
  Object.keys(obj).forEach(field => fn(field, obj[field]))
}

export const clearFormByObject = (obj, fn) => {
  Object.keys(obj).forEach(field => fn(field, ""))
}
