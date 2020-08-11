import React from "react"

import { Container } from "react-bootstrap"

import Hero from "../layout/Hero"

import Metodos from "../metodos/Metodos"

const MetodosPage = () => {
  return (
    <Container>
      <Hero firstLine="Administración" secondLine="Métodos de Pago" />
      <Metodos />
    </Container>
  )
}

export default MetodosPage
