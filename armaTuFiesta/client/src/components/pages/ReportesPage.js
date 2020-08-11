import React from "react"

import Reportes from "../reportes/Reportes"

import Hero from "../layout/Hero"

import { Container } from "react-bootstrap"

const ReportesPage = () => {
  return (
    <Container>
      <Hero firstLine="Consultas" secondLine="Reportes" />
      <Reportes />
    </Container>
  )
}

export default ReportesPage
