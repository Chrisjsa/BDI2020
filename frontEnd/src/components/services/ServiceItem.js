import React from "react"

import { ListGroup } from "react-bootstrap"

import { connect } from "react-redux"
import { setCurrentService } from "../../actions/eventActions"

const ServiceItem = ({ service, setCurrentService }) => {
  const onClick = () => {
    setCurrentService(service.id_servicio)
  }
  return (
    <ListGroup.Item className="clickable" onClick={onClick}>
      {service.nombre}
    </ListGroup.Item>
  )
}

export default connect(state => ({}), { setCurrentService })(ServiceItem)
