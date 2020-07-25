exports.SIGN_IN = "SELECT * FROM users WHERE email = ?"
exports.SIGN_UP =
  "INSERT INTO users (username, email, password) VALUES (?, ?, ?)"
