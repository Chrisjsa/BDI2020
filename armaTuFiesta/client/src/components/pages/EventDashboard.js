import React from "react"

import { Row, Col } from "react-bootstrap"

import EventDetail from "../events/EventDetails"

import { connect } from "react-redux"
import { updateStatus } from "../../state/eventos/eventoActions"

const EventDashboard = ({ currentEvent }) => {
  if (!currentEvent) return <div className="error">currentEvent es nulo</div>
  return (
    <Row className="justify-content-md-center">
      <Col>
        <EventDetail event={currentEvent} />
      </Col>
    </Row>
  )
}

const mapStateToProps = state => ({
  currentEvent: state.events.currentEvent,
})

export default connect(mapStateToProps, { updateStatus })(EventDashboard)
