import React from "react"
import { Link } from "react-router-dom"
import Moment from "react-moment"

import { Button, Container, CardDeck } from "react-bootstrap"

import { connect } from "react-redux"

import _ from "underscore"

import { arrayOfValues } from "../../utils"

import CategoryCard from "../services/CategoryCard"

const EventDetails = ({ event, services }) => {
  const {
    fuente,
    nombre,
    fecha_realizacion,
    cantidad_invitados,
    fecha_reserva,
  } = event

  const format = "dddd, MMMM Do YYYY, h:mm:ss a"

  const thisEventServices = services.filter(
    service => service.id_evento === event.id_evento
  )

  const thisEventCategories = _.uniq(
    arrayOfValues(thisEventServices, "categoria")
  )

  console.log(thisEventServices)

  return (
    <div>
      <div className="banner">
        <img src={fuente} />
        <div className="banner-details">
          <h1>{nombre}</h1>

          <Moment date={fecha_realizacion} format={format} />
        </div>
      </div>

      <Container className="mt-3">
        <h3>Notificaciones</h3>
        <h3>Detalles</h3>
        <ul>
          <li>
            Fecha de reserva:{" "}
            <Moment date={fecha_realizacion} format={format} />
          </li>
          <li>
            Fecha de realización:{" "}
            <Moment date={fecha_reserva} format={format} />
          </li>
          <li>Cantidad de invitados: {cantidad_invitados}</li>
        </ul>

        <h3>Servicios contratados</h3>

        <div className="text-center">
          <Button as={Link} to="/newService" size="lg" className="mb-3">
            Agregar servicio
          </Button>
        </div>

        <CardDeck>
          {thisEventCategories.map(category => (
            <CategoryCard {...{ category, services }} />
          ))}
        </CardDeck>
      </Container>
    </div>
  )
}

const mapStateToProps = state => ({
  services: state.events.services,
})

export default connect(mapStateToProps)(EventDetails)
