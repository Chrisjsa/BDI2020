const { connection } = require("../database")
const { SIGN_UP, SIGN_IN, LOAD_USER } = require("../sql/authQueries")
const jwt = require("jsonwebtoken")

exports.signUp = async (req, res) => {
  const { username, email, password } = req.body

  try {
    connection.query(SIGN_UP, [username, email, password], error => {
      if (error) {
        return res.status(400).send(error)
      }
      return res.json({ mgs: "User successfully created" })
    })
  } catch (error) {
    res.status(400).json({ error })
  }
}

exports.signIn = (req, res) => {
  const { username, password } = req.body

  if (!username || !password)
    return res.status(500).send({ msg: "Credentials are required" })

  connection.query(SIGN_IN, [username, password], async (error, rows) => {
    if (error) {
      return res.status(400).send(error)
    }

    const user = rows.pop()

    // Check if user exists
    if (!user) {
      return res.status(400).json({
        msg: "There is no user with that username. Please sign up",
      })
    }

    try {
      // Check if req.body.password matches database password
      if (!(password === user.password)) {
        return res.status(400).json({ msg: "Email and password don't match" })
      }
      user.password = undefined

      // Generate sign token with secret
      const token = jwt.sign({ id: user.id_usuario }, process.env.JWT_SECRET)
      res.cookie("t", token, { expire: new Date() + 9999 })
      return res.json({ token, user })
      //
    } catch (error) {
      return res.status(400).json({ error: "Server error" })
    }
  })
}

exports.signOut = (req, res) => {
  res.clearCookie("t")
  res.json({ mgs: "Signout success" })
}

exports.loadUser = (req, res) => {
  connection.query(LOAD_USER, [req.userId], async (error, rows) => {
    if (error) {
      return res.status(400).send(error)
    }

    const user = rows.pop()
    user.password = undefined

    try {
      return res.json(user)
      //
    } catch (error) {
      return res.status(400).json({ error: "Server error" })
    }
  })
}
