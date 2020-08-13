import React, { useEffect } from "react"

import { Card } from "react-bootstrap"

import { connect } from "react-redux"

import { leerServiciosEvento } from "../../state/evento/eventoActions"

const ServiciosEvento = ({
  currentEvento,
  currentEventoServicios,
  leerServiciosEvento,
}) => {
  useEffect(() => {
    leerServiciosEvento(currentEvento)
  }, [])

  return (
    <Card>
      <Card.Body>
        <h3>Servicios y productos</h3>
        <code>{JSON.stringify(currentEventoServicios)}</code>
      </Card.Body>
    </Card>
  )
}

const mapActionsToProps = { leerServiciosEvento }

const mapStateToProps = state => ({
  currentEventoServicios: state.eventos.currentEventoServicios,
  currentEvento: state.eventos.currentEvento,
})

export default connect(mapStateToProps, mapActionsToProps)(ServiciosEvento)
