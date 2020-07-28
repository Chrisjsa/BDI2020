const mysql = require("mysql")

const user = process.argv[2]
let password = undefined

switch (user) {
  case "tomas":
    password = "gh1290yu"
    break
  case "winkler":
    password = "4225741"
    break
  case "chris":
    password = "olakase"
    break
}

if (!password) {
  console.log(`\tERR: Usuario "${user}" desconocido`)
  process.exit(2)
}

exports.connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "arma_tu_fiesta",
  password,
})
