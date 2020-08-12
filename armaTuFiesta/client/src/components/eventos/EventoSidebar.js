import React from "react"

import { ListGroup, Card } from "react-bootstrap"

import moment from "moment"

const EventoSidebar = ({ evento }) => {
  const { fecha_realizacion, cantidad_invitados } = evento
  return (
    <Card>
      <Card.Body>
        <h5>Detalles</h5>
        <div>Invitados: {cantidad_invitados}</div>
        <div>
          Fecha de realización: {moment(fecha_realizacion).format("DD/MM/YYYY")}
        </div>

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
