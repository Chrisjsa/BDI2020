const express = require("express")
const app = express()
const { connection } = require("./database")
const { monitor } = require("./middleware/monitor")

const request = require("request")

const client = require("jsreport-client")("http://localhost:8000", "admin", "")

const useRoute = route => {
  app.use(`/api/${route}`, require(`./routes/${route}`))
}

require("dotenv").config()
connection.connect()

// Middleware
app.use(express.json({ extended: false }))

routes = [
  "testing",
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

app.get("/report", async (req, res) => {
  const data = {
    template: { shortid: "rJlkqWeLZw" },

    data: { nombre: "Tomás" },
  }

  const options = {
    url: "http://localhost:8000/api/report",
    method: "POST",
    json: data,
  }

  request(options).pipe(res)
})

// App Initialization
const port = process.env.PORT || 5000

app.listen(port, () => {
  console.log(`Server running on port ${port}`)
})
