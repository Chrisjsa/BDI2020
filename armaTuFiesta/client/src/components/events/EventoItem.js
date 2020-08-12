import React from "react"

import { Card } from "react-bootstrap"

import moment from "moment"

const EventoItem = ({ evento }) => {
  const { nombre, descripcion, fecha_realizacion } = evento

  return (
    <Card>
      <Card.Body>
        <Card.Title>{nombre}</Card.Title>
        <Card.Text>{descripcion}</Card.Text>
      </Card.Body>
      <Card.Footer>
        <small className="text-muted">
          {moment(fecha_realizacion).format("DD / MM / YYYY")}
        </small>
      </Card.Footer>
    </Card>
  )
}

export default EventoItem
