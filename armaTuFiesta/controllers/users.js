const { connection } = require("../database")

exports.getUsers = (req, res) => {
  connection.query("select * from users", (error, rows) => {
    if (error) {
      return res.status(400).send(error.message)
    }
    return res.json({ rows })
  })
}
