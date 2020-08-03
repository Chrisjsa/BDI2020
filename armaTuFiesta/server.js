const express = require("express")
const app = express()
const { connection } = require("./database")
const { monitor } = require("./middleware/monitor")

const useRoute = route => {
  app.use(`/api/${route}`, require(`./routes/${route}`))
}

require("dotenv").config()
connection.connect()

// Middleware
app.use(express.json({ extended: false }))

routes = [
  "users",
  "auth",
  "notarias",
  "caracteristicas",
  "categorias",
  "clientes",
  "cursos",
  "floristerias",
  "horarios",
  "jefaturas",
  "lugares",
  "productos",
  "religiones",
  "restaurantes",
  "templos",
  "tips",
  "cartas",
  "roles",
  "status",
]
routes.forEach(route => useRoute(route))

app.get("/", (req, res) => {
  res.send("Welcome to Bases API")
})

// App Initialization
const port = process.env.PORT || 5000

app.listen(port, () => {
  console.log(`Server running on port ${port}`)
})
