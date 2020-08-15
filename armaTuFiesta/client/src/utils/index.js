import moment from "moment"

String.prototype.capitalize = function () {
  return this.charAt(0).toUpperCase() + this.slice(1)
}

export const filterById = (list, object, object_id) =>
  list.filter(element => element[object_id] === object[object_id])

export const arrayOfValues = (list, key) => list.map(element => element[key])

export const changeFormByObject = (obj, fn) => {
  Object.keys(obj).forEach(field => fn(field, obj[field]))
}

export const errorTimeOut = (dispatch, type) => {
  setTimeout(() => {
    dispatch({ type })
  }, 3000)
}

export const canCrud = (entity, entityList) => {
  const capitalizedEntity = entity.capitalize()

  const operations = [
    `insertar${capitalizedEntity}`,
    `eliminar${capitalizedEntity}`,
    `leer${capitalizedEntity}`,
    `actualizar${capitalizedEntity}`,
  ]

  console.log("operations", operations)

  operations.forEach(op => console.log(op))

  console.log("entityList", entityList)

  return operations.every(element => entityList.includes(element))
}

export const formatDate = date => moment(date).format("YYYY-MM-DD")
