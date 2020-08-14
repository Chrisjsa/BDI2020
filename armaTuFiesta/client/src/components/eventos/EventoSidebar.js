import React from "react"

import { ListGroup, Card } from "react-bootstrap"

import { connect } from "react-redux"

import moment from "moment"

import { BsPersonFill, BsCalendarFill, BsMap } from "react-icons/bs"

import { mostrarPresupuesto } from "../../state/evento/eventoActions"

const EventoSidebar = ({ evento, mostrarPresupuesto }) => {
  const { fecha_realizacion, cantidad_invitados, salon_fiesta } = evento

  const Description = ({ Icon, nombre, description }) => (
    <div>
      <Icon /> {nombre}: {description}
    </div>
  )
  return (
    <Card>
      <Card.Body>
        <h5>Detalles</h5>
        <Description
          Icon={BsPersonFill}
          nombre="Invitados"
          description={cantidad_invitados}
        />

        <Description
          Icon={BsCalendarFill}
          nombre="Fecha"
          description={moment(fecha_realizacion).format("DD/MM/YYYY")}
        />

        <Description Icon={BsMap} nombre="Lugar" description={salon_fiesta} />

        <hr />
        <h5>Acciones</h5>
        <ListGroup>
          <ListGroup.Item action onClick={e => mostrarPresupuesto(true)}>
            Presupuesto
          </ListGroup.Item>
          {/* <ListGroup.Item action>Citas</ListGroup.Item> */}
        </ListGroup>
      </Card.Body>
    </Card>
  )
}

const mapActionsToProps = {
  mostrarPresupuesto,
}

const mapStateToProps = state => ({})

export default connect(mapStateToProps, mapActionsToProps)(EventoSidebar)
