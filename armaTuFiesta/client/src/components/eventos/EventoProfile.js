import React, { useEffect } from "react"

import Hero from "../layout/Hero"

import { Container, Row, Col } from "react-bootstrap"

import { connect } from "react-redux"

import { setAlert } from "../../state/alert/alertActions"

import EventoSidebar from "./EventoSidebar"
import ServiciosEvento from "./ServiciosEvento"

import Presupuesto from "./Presupuesto"

import AgregarServicio from "./AgregarServicio"

import Cita from "./Cita"

const EventoProfile = ({ currentEvento, history, modo }) => {
  useEffect(() => {
    if (!currentEvento) {
      history.push("/dashboard")
    }
  }, [currentEvento])

  const { tipo_evento, id_evento, salon_fiesta } = currentEvento

  return (
    <Container>
      <Hero firstLine={tipo_evento} secondLine={salon_fiesta} />
      <Row>
        <Col xs={3}>
          <EventoSidebar evento={currentEvento} />
          <br />
        </Col>
        <Col>
          {modo === "presupuesto" ? (
            <Presupuesto />
          ) : modo === "cita" ? (
            <Cita />
          ) : modo === "servicio" ? (
            <ServiciosEvento />
          ) : (
            <AgregarServicio />
          )}
        </Col>
      </Row>
    </Container>
  )
}

const mapStateToActions = { setAlert }

const mapStateToProps = state => ({
  currentEvento: state.eventos.currentEvento,
  modo: state.eventos.modo,
})

export default connect(mapStateToProps, mapStateToActions)(EventoProfile)
