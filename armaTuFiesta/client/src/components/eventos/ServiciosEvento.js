import React, { useEffect } from "react"

import { Card } from "react-bootstrap"

import { connect } from "react-redux"

import {
  leerServiciosEvento,
  leerCategoria,
} from "../../state/evento/eventoActions"

import Loading from "../layout/Loading"

const ServiciosEvento = ({
  currentEvento,
  currentEventoServicios,
  leerServiciosEvento,
  categorias,
  leerCategoria,
}) => {
  useEffect(() => {
    leerServiciosEvento(currentEvento)
    leerCategoria()
  }, [])

  if (!currentEventoServicios || !categorias) return <Loading />

  const servicioPorCategoria = categoria =>
    currentEventoServicios.filter(servicio => servicio.categoria === categoria)

  const categoriaConServicios = categoria =>
    currentEventoServicios.filter(servicio => servicio.categoria === categoria)
      .length === 0

  return (
    <Card>
      <Card.Body>
        <h3>Servicios y productos</h3>
        {categorias.map(
          categoria =>
            !categoriaConServicios(categoria) && (
              <>
                <h5>{categoria}</h5>
                {servicioPorCategoria(categoria).map(servicio => (
                  <div>{servicio.nombre_servicio}</div>
                ))}
              </>
            )
        )}
      </Card.Body>
    </Card>
  )
}

const mapActionsToProps = { leerServiciosEvento, leerCategoria }

const mapStateToProps = state => ({
  currentEventoServicios: state.eventos.currentEventoServicios,
  currentEvento: state.eventos.currentEvento,
  categorias: state.eventos.categorias,
})

export default connect(mapStateToProps, mapActionsToProps)(ServiciosEvento)
