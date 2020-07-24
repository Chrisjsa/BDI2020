const jwt = require("jsonwebtoken")

exports.auth = (req, res, next) => {
  let token = req.header("x-auth-token")

  if (!token) {
    return res.status(401).json({
      msg: "No token, authorization denied",
    })
  }

  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET)
    req.userId = decoded.id
    console.log("req.userId", req.userId)
  } catch (error) {
    return res.status(401).json({ msg: "Token is not valid" })
  }

  next()
}
