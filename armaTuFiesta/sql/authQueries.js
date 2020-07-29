exports.SIGN_IN =
  "SELECT * FROM usuario, persona WHERE username = ? AND password = ? AND persona.id_persona = usuario.fk_persona"
exports.SIGN_UP =
  "INSERT INTO users (username, email, password) VALUES (?, ?, ?)"
exports.LOAD_USER =
  "SELECT * FROM usuario, persona WHERE id_persona = ? AND persona.id_persona = usuario.fk_persona"
