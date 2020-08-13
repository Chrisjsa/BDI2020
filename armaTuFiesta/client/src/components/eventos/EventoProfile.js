import React, { useEffect } from "react"

import Hero from "../layout/Hero"

import { Container, Row, Col } from "react-bootstrap"

import { connect } from "react-redux"

import { setAlert } from "../../state/alert/alertActions"

import EventoSidebar from "./EventoSidebar"
import ServiciosEvento from "./ServiciosEvento"

const EventoProfile = ({ currentEvento, history }) => {
  useEffect(() => {
    if (!currentEvento) {
      history.push("/dashboard")
    }
  }, [currentEvento])

  const { tipo_evento, id_evento } = currentEvento

  return (
    <Container>
      <Hero firstLine={tipo_evento} secondLine={`Evento# ${id_evento}`} />
      <Row>
        <Col xs={3}>
          <EventoSidebar evento={currentEvento} />
          <br />
        </Col>
        <Col>
          <ServiciosEvento />
        </Col>
      </Row>
    </Container>
  )
}

const mapStateToActions = { setAlert }

const mapStateToProps = state => ({
  currentEvento: state.eventos.currentEvento,
})

export default connect(mapStateToProps, mapStateToActions)(EventoProfile)
