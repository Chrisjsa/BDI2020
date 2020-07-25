import React from "react"

import EventItem from "./EventItem"

import { CardDeck } from "react-bootstrap"

import { connect } from "react-redux"

const Events = ({ events, services }) => {
  return (
    <CardDeck>
      {events.map(event => (
        <EventItem event={event} services={services} />
      ))}
    </CardDeck>
  )
}

const mapStateToProps = state => ({
  events: state.events.events,
  services: state.events.services,
})

export default connect(mapStateToProps)(Events)
