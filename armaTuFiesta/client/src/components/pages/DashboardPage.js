import React, { useEffect } from "react"
import { withRouter, Link } from "react-router-dom"
import { connect } from "react-redux"

import { Container, Button, CardColumns } from "react-bootstrap"

import ballons from "../../img/ballons.png"

import NuevoEventoModal from "../eventos/NuevoEventoModal"

import Loading from "../layout/Loading"

import { leerCitasUsuario } from "../../state/cita/citaActions"

import {
  leerEventosPorUsuario,
  leerEventos,
  cambiarModo,
} from "../../state/evento/eventoActions"

import EventoItem from "../eventos/EventoItem"

const DashboardPage = ({
  user,
  eventos,
  history,
  loading,
  leerEventos,
  leerEventosPorUsuario,
  cambiarModo,
  leerCitasUsuario,
}) => {
  useEffect(() => {
    if (user) {
      leerEventosPorUsuario(user)
      leerCitasUsuario(user)
    }
    // eslint-disable-nextline
  }, [user])

  useEffect(() => {
    cambiarModo("servicio")
  }, [])

  const NoEvents = () => (
    <div className="text-center mt-5">
      <div>
        <h4>Agrega una nueva fiesta</h4>
        <img src={ballons} className="text-icon-md mb-3" alt="ballons" />
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
          <h1 className="mt-4">Tus eventos</h1>

          <NuevoEventoModal />

          {eventos.length >= 0 ? (
            <div className="scrollable" style={{ maxHeight: "50vh" }}>
              <CardColumns>
                {eventos.map(evento => (
                  <EventoItem key={evento.id_evento} evento={evento} />
                ))}
              </CardColumns>
            </div>
          ) : (
            <NoEvents />
          )}
        </>
      )}
    </Container>
  )
}

const mapActionsToProps = {
  leerEventos,
  leerEventosPorUsuario,
  cambiarModo,
  leerCitasUsuario,
}

const mapStateToProps = state => ({
  user: state.auth.user,
  loading: state.auth.loading,
  eventos: state.eventos.eventos,
  tiposEvento: state.eventos.tiposEvento,
})

export default withRouter(
  connect(mapStateToProps, mapActionsToProps)(DashboardPage)
)
