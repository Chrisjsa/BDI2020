const mysql = require("mysql")

exports.connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "arma_tu_fiesta",
  password: "4225741",
})
