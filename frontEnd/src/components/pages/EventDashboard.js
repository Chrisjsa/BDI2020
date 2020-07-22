import React, { useEffect } from "react"

import { Row, Col, Container } from "react-bootstrap"

import EventDetail from "../events/EventDetails"
import ServiceDetail from "../services/ServiceDetail"

import { connect } from "react-redux"
import { updateStatus } from "../../actions/eventActions"

const EventDashboard = ({
  match: { params },
  events,
  services,
  status,
  updateStatus,
}) => {
  console.log(params.id)
  const thisEvent = events[params.id - 1]

  useEffect(() => {
    updateStatus("home")
  }, [])

  return (
    <Row className="justify-content-md-center">
      <Col>
        {status === "home" && <EventDetail event={thisEvent} />}
        {status === "service" && <ServiceDetail />}
      </Col>
    </Row>
  )
}

const mapStateToProps = state => ({
  events: state.events.events,
  services: state.events.services,
  status: state.events.status,
})

export default connect(mapStateToProps, { updateStatus })(EventDashboard)
