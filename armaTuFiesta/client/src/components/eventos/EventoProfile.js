import React, { useEffect } from "react"

import Hero from "../layout/Hero"

import { Container, Row, Col } from "react-bootstrap"

import { connect } from "react-redux"

import { setAlert } from "../../state/alert/alertActions"

import EventoSidebar from "./EventoSidebar"

const EventoProfile = ({ currentEvento, history }) => {
  useEffect(() => {
    if (!currentEvento) {
      history.push("/dashboard")
    }
  }, [currentEvento])

  return (
    <Container>
      <Hero firstLine={} secondLine={} />
      <Row>
        <Col xs={3}>
          <EventoSidebar evento={currentEvento} />
          <br />
        </Col>
        <Col></Col>
      </Row>
    </Container>
  )
}

const mapStateToActions = { setAlert }

const mapStateToProps = state => ({
  currentEvento: state.eventos.currentEvento,
})

export default connect(mapStateToProps, mapStateToActions)(EventoProfile)
