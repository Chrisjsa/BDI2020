export const filterById = (list, object, object_id) =>
  list.filter(element => element[object_id] === object[object_id])

export const arrayOfValues = (list, key) => list.map(element => element[key])

export const elegant = category => {
  switch (category) {
    case "musica":
      return "Música"

    case "fotografia":
      return "Fotografía"

    case "catering":
      return "Catering"

    case "protocolo":
      return "Protocolo"

    default:
      return `[[${category}??]]`
  }
}
