import React from "react"

import { Card } from "react-bootstrap"

import Icon from "../layout/Icon"

const ServicioCategoria = ({ categoria, servicios }) => {
  return (
    <Card>
      <Card.Header>
        <Icon type={categoria} /> {categoria}
      </Card.Header>
      <Card.Body>
        {servicios.map(servicio => (
          <div>{servicio.nombre_servicio}</div>
        ))}
      </Card.Body>
    </Card>
  )
}

export default ServicioCategoria
