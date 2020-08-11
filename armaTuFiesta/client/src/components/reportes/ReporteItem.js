import React from "react"

import { Card, Button, Row, Col } from "react-bootstrap"

import { BsFileText } from "react-icons/bs"

const ReporteItem = ({ title, children, handler }) => {
  return (
    <Card className="my-3">
      <Card.Body>
        <Row className="align-items-center">
          <Col xs={1}>
            <BsFileText size="3rem" />
          </Col>
          <Col>
            <Card.Title>{title}</Card.Title>
            <Card.Text>{children}</Card.Text>
            <Button onClick={handler}>Descargar</Button>
          </Col>
        </Row>
      </Card.Body>
    </Card>
  )
}

export default ReporteItem
