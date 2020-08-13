import React from "react"

import { ListGroup, Card } from "react-bootstrap"

import moment from "moment"

import { BsPersonFill, BsCalendarFill, BsMap } from "react-icons/bs"

const EventoSidebar = ({ evento }) => {
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
          <ListGroup.Item action>Presupuesto</ListGroup.Item>
          <ListGroup.Item action>Citas</ListGroup.Item>
        </ListGroup>
      </Card.Body>
    </Card>
  )
}

export default EventoSidebar
