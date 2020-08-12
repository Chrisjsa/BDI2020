import React, { useState } from "react"

import { Container, Button } from "react-bootstrap"

import Hero from "../layout/Hero"

import Metodos from "../metodos/Metodos"
import TarjetaForm from "../metodos/TarjetaForm"

const MetodosPage = () => {
  const [showForm, setShowForm] = useState(false)

  return (
    <Container>
      <Hero firstLine="Administración" secondLine="Métodos de Pago" />
      <Button
        className="my-3"
        onClick={e => setShowForm(!showForm)}
        variant={showForm ? "outline-dark" : "primary"}
      >
        {showForm ? "Cerrar" : "Agregar método"}
      </Button>
      {showForm && <TarjetaForm />}

      <Metodos />
    </Container>
  )
}

export default MetodosPage
