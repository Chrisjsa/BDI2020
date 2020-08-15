import React, { useEffect } from "react"

import { Button, CardColumns, Card } from "react-bootstrap"

import { connect } from "react-redux"

import {
  leerServiciosEvento,
  leerCategoria,
  cambiarModo,
} from "../../state/evento/eventoActions"

import Loading from "../layout/Loading"

import ServicioCategoria from "./ServicioCategoria"

const ServiciosEvento = ({
  currentEvento,
  currentEventoServicios,
  leerServiciosEvento,
  categorias,
  leerCategoria,
  cambiarModo,
  modo,
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
    <>
      <h3>Servicios y productos</h3>
      <Button
        variant="primary"
        className="my-3"
        size="lg"
        onClick={e => cambiarModo("nuevo-servicio")}
      >
        Agregar servicio o producto
      </Button>
      <CardColumns>
        {categorias.map(
          categoria =>
            !categoriaConServicios(categoria) && (
              <ServicioCategoria
                categoria={categoria}
                servicios={servicioPorCategoria(categoria)}
              />
            )
        )}
      </CardColumns>
    </>
  )
}

const mapActionsToProps = { leerServiciosEvento, leerCategoria, cambiarModo }

const mapStateToProps = state => ({
  currentEventoServicios: state.eventos.currentEventoServicios,
  currentEvento: state.eventos.currentEvento,
  categorias: state.eventos.categorias,
  modo: state.eventos.modo,
})

export default connect(mapStateToProps, mapActionsToProps)(ServiciosEvento)
