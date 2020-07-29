import React from "react"
import { withRouter, Link } from "react-router-dom"
import { connect } from "react-redux"

import Events from "../events/Events"

import { Container, Button } from "react-bootstrap"

import ballons from "../../img/ballons.png"

import Loading from "../layout/Loading"

const DashboardPage = ({ user, events, history, loading }) => {
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
      {loading ? (
        <Loading />
      ) : (
        <>
          <div className="display-2 mb-4">Hola, {user.p_nombre}</div>
          <h1>Tus eventos</h1>
          {events.events.length > 0 ? <Events /> : <NoEvents />}

          <h1>Tus trámites</h1>
          <Button as={Link} to="/carta_solteria">
            Carta de soltería
          </Button>
        </>
      )}
    </Container>
  )
}

const mapStateToProps = state => ({
  user: state.auth.user,
  loading: state.auth.loading,
  events: state.events,
})

export default withRouter(connect(mapStateToProps)(DashboardPage))
