// corre este codigo para generar un reporte
// usar
// $ node test.js

const fs = require("fs")
const carbone = require("carbone")

// inserta la data que quieras probar por acá
var data = {
  dataPpc: { p_nombre: "John " }, // poner más data si quieres probar
  dataMpc: { s_nombre: "Helena " },
}

// todavia no furula
var options = {
  convertTo: "pdf",
}

// aquí va la dirección de tu archivo, con todo y extensión
// si el archivo es de word es NOMBRE.docx
carbone.render("./reports/docs.docx", data, (err, result) => {
  if (err) {
    return console.log(err)
  }
  // va a guardar la salida en esta carpeta, así la puedes revisar
  fs.writeFileSync("./reports/rendered/result.docx", result)
})
