import React from "react"

import { ListGroup, Row, Col } from "react-bootstrap"

import Icon from "../layout/Icon"

import { connect } from "react-redux"

import ServiceItem from "./ServiceItem"

const Category = ({ category, services }) => {
  const thisCategoryServices = services.filter(
    service => service.categoria === category
  )

  return (
    <ListGroup.Item className="bg-light">
      <Row>
        <Col xs={1}>
          <Icon type={category} size={"1.5rem"} />
        </Col>
        <Col>{category}</Col>
      </Row>
      <ListGroup variant="flush">
        {thisCategoryServices.map(service => (
          <ServiceItem service={service} />
        ))}
      </ListGroup>
    </ListGroup.Item>
  )
}

const mapStateToProps = state => ({
  services: state.events.services,
})

export default connect(mapStateToProps)(Category)
