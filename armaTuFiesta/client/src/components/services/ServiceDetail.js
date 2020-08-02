import React from "react"

import { withRouter } from "react-router-dom"

import { connect } from "react-redux"

import { Container } from "react-bootstrap"

import { setCurrentService } from "../../state/eventos/eventoActions"

const ServicesDetail = ({
  currentService,
  currentEvent,
  setCurrentService,
  match: { params },
  history,
}) => {
  return (
    <Container>
      <h1 className="my-5">{currentService.nombre}</h1>
      <h5>{currentService.descripcion}</h5>
    </Container>
  )
}

const mapStateToProps = state => ({
  currentService: state.events.currentService,
  currentEvent: state.events.currentEvent,
  services: state.events.services,
})

export default withRouter(
  connect(mapStateToProps, { setCurrentService })(ServicesDetail)
)
