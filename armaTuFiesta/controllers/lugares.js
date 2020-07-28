const { connection } = require("../database")
const {  } = require("../sql/lugaresQueries")

exports.leerLugar = (req, res) => {
  connection.query("", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json({ rows })
  })
}
