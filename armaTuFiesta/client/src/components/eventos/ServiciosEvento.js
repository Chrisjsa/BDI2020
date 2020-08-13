import React, { useEffect } from "react"

import { Card, CardColumns } from "react-bootstrap"

import { connect } from "react-redux"

import {
  leerServiciosEvento,
  leerCategoria,
} from "../../state/evento/eventoActions"

import Loading from "../layout/Loading"

import ServicioCategoria from "./ServicioCategoria"

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
    <>
      <h3>Servicios y productos</h3>
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

const mapActionsToProps = { leerServiciosEvento, leerCategoria }

const mapStateToProps = state => ({
  currentEventoServicios: state.eventos.currentEventoServicios,
  currentEvento: state.eventos.currentEvento,
  categorias: state.eventos.categorias,
})

export default connect(mapStateToProps, mapActionsToProps)(ServiciosEvento)
