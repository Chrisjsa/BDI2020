const express = require("express")
const router = express.Router()
const { auth } = require("../middleware/auth")

const { signUp, signIn, signOut } = require("../controllers/auth")

// const { userSignUpValidator, userSignInValidator } = require("../validator")

router.post("/signup", signUp)
router.post("/signin", signIn)
router.get("/signout", signOut)

router.get("/private", auth, (req, res) => {
  return res.send("private route, this user is " + req.userId)
})

module.exports = router
