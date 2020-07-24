const express = require("express")
const router = express.Router()

const { getUsers } = require("../controllers/users")

router.get("/getUsers", getUsers)

module.exports = router
