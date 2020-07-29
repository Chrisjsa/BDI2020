import React from "react"
import { withRouter } from "react-router-dom"
import { connect } from "react-redux"

import Events from "../events/Events"

import { Container, Button } from "react-bootstrap"

import ballons from "../../img/ballons.png"

const DashboardPage = ({ user, events, history }) => {
  console.log(user)
  const NoEvents = () => (
    <div className="text-center mt-5">
      <div>
        <h4>Agrega una nueva fiesta</h4>
        <img src={ballons} className="text-icon-md mb-3" />
      </div>
      <Button>Comenzar</Button>
    </div>
  )

  return (
    <Container>
      <div className="display-2 mb-4">Hola, {user.p_nombre}</div>
      {events.events.length > 0 ? <Events /> : <NoEvents />}
    </Container>
  )
}

const mapStateToProps = state => ({
  user: state.auth.user,
  events: state.events,
})

export default withRouter(connect(mapStateToProps)(DashboardPage))
