import React from "react"
import { withRouter, Link } from "react-router-dom"
import { connect } from "react-redux"

import Events from "../events/Events"

import { Container, Button, Alert } from "react-bootstrap"

import ballons from "../../img/ballons.png"

import Loading from "../layout/Loading"

const DashboardPage = ({ user, events, history, loading }) => {
  const NoEvents = () => (
    <div className="text-center mt-5">
      <div>
        <h4>Agrega una nueva fiesta</h4>
        <img src={ballons} className="text-icon-md mb-3" alt="ballons" />
      </div>
      <Button>Comenzar</Button>
    </div>
  )

  const done = ["Listo CRUD Tip", "Listo CRUD Cliente"]
  const warning = ["Cliente delete falla"]

  return (
    <Container>
      <Alert variant="success" className="mt-5">
        <Alert.Heading>Novedades</Alert.Heading>
        {done.map(item => (
          <ul>
            <li>{item}</li>
          </ul>
        ))}
      </Alert>

      {warning.map(item => (
        <Alert variant="warning">
          <ul>
            <li>{item}</li>
          </ul>
        </Alert>
      ))}

      {loading ? (
        <Loading />
      ) : (
        <>
          <div className="display-2 mb-4">Hola, {user.p_nombre}</div>
          <h1 className="mt-4">Tus eventos</h1>
          {events.events.length > 0 ? <Events /> : <NoEvents />}

          <h1 className="mt-4 mb-3">Tus trámites</h1>
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
