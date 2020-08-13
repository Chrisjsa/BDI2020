import React, { useEffect } from "react"

import { Card } from "react-bootstrap"

import { connect } from "react-redux"

import { leerServiciosEvento } from "../../state/evento/eventoActions"

import Loading from "../layout/Loading"

const ServiciosEvento = ({
  currentEvento,
  currentEventoServicios,
  leerServiciosEvento,
}) => {
  useEffect(() => {
    leerServiciosEvento(currentEvento)
  }, [])

  if (!currentEventoServicios) return <Loading />

  const servicioPorCategoria = categoria =>
    currentEventoServicios.filter(servicio => servicio.categoria === categoria)

  return (
    <Card>
      <Card.Body>
        <h3>Servicios y productos</h3>
        {["Personal de Festejo", "Transporte"].map(categoria => (
          <>
            <h5>{categoria}</h5>
            {servicioPorCategoria(categoria).map(servicio => (
              <div>{servicio.nombre_servicio}</div>
            ))}
          </>
        ))}
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
