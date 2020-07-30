const jwt = require("jsonwebtoken")

exports.auth = (req, res, next) => {
  let token = req.header("x-auth-token")

  if (!token) {
    return res.status(401).json({
      msg: "Acceso negado: no se recibió un token.",
    })
  }

  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET)
    req.userId = decoded.id
  } catch (error) {
    return res.status(401).json({ msg: "Acceso negado: token inválido." })
  }

  next()
}
