export const filterById = (list, object, object_id) =>
  list.filter(element => element[object_id] === object[object_id])

export const arrayOfValues = (list, key) => list.map(element => element[key])
