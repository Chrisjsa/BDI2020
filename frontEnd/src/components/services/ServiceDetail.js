import React from "react"

import { connect } from "react-redux"

import { elegant } from "../../utils"

import { Row, Col, ListGroup } from "react-bootstrap"

const ServicesDetail = ({ service }) => {
  if (!service) return <div>???</div>

  return (
    <div className="service-container">
      <h1 className="mb-5">{service.nombre}</h1>
      <h5>{service.descripcion}</h5>
    </div>
  )
}

const mapStateToProps = state => ({
  service: state.events.currentService,
  services: state.events.services,
})

export default connect(mapStateToProps)(ServicesDetail)
