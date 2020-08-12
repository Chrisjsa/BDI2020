import React from "react"

import { Card, Accordion, Button } from "react-bootstrap"

const RolItem = ({ rol }) => {
  const { nombre, permisos } = rol

  return (
    <Card>
      <Card.Header>
        <Accordion.Toggle as={Button} variant="link" eventKey={rol.id}>
          {nombre}
        </Accordion.Toggle>
      </Card.Header>
      <Accordion.Collapse eventKey={rol.id}>
        <Card.Body>culo</Card.Body>
      </Accordion.Collapse>
    </Card>
  )
}

export default RolItem
