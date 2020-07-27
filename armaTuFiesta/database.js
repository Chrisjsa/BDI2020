const mysql = require("mysql")

exports.connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "arma_tu_fiesta",
  password: "olakase", // gh1290yu - olakase - 4225741
})
