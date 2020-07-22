import React from "react"

import { ListGroup } from "react-bootstrap"

import { connect } from "react-redux"

import { setCurrentService } from "../../actions/eventActions"

const ServiceItem = ({ service, setCurrentService }) => {
  const onClick = () => {
    setCurrentService(service)
  }

  return (
    <ListGroup.Item className="bg-light" onClick={onClick}>
      {service.nombre}
    </ListGroup.Item>
  )
}

export default connect(state => ({}), { setCurrentService })(ServiceItem)
