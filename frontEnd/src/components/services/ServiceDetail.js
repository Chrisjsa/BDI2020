import React from "react"

import { connect } from "react-redux"

import { Container, Breadcrumb } from "react-bootstrap"

const ServicesDetail = ({ service }) => {
  if (!service) return <div>???</div>

  return (
    <Container>
      <h1 className="my-5">{service.nombre}</h1>
      <h5>{service.descripcion}</h5>
    </Container>
  )
}

const mapStateToProps = state => ({
  service: state.events.currentService,
  services: state.events.services,
})

export default connect(mapStateToProps)(ServicesDetail)
