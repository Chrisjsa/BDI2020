const express = require("express")
const router = express.Router()
const { auth } = require("../middleware/auth")

const { signUp, signIn, signOut } = require("../controllers/auth")

// const { userSignUpValidator, userSignInValidator } = require("../validator")

router.post("/signup", signUp)

router.post("/signin", signIn)

router.get("/signout", auth, signOut)

module.exports = router
