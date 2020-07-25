import React from "react"

import { Link } from "react-router-dom"

import { ListGroup } from "react-bootstrap"

import { connect } from "react-redux"
import { setCurrentService } from "../../actions/eventActions"

const ServiceItem = ({ service, setCurrentService }) => {
  const onClick = () => {
    setCurrentService(service.id_servicio)
  }

  return (
    <ListGroup.Item
      onClick={onClick}
      as={Link}
      to={`/services/${service.id_servicio}`}
    >
      {service.nombre}
    </ListGroup.Item>
  )
}

export default connect(state => ({}), { setCurrentService })(ServiceItem)
