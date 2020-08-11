import React from "react"

import { Card, Button } from "react-bootstrap"

const ReporteItem = ({ title, subtitle, children, handler }) => {
  return (
    <Card className="my-3">
      <Card.Body>
        <Card.Title>{title}</Card.Title>
        <Card.Subtitle className="mb-2 text-muted">{subtitle}</Card.Subtitle>
        <Card.Text>{children}</Card.Text>
        <Button onClick={handler}>Descargar</Button>
      </Card.Body>
    </Card>
  )
}

export default ReporteItem
