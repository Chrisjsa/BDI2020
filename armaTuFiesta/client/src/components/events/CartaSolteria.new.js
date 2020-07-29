import React, { useState } from "react"
import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

import { Form, Button, Col, Row, Container } from "react-bootstrap"

import useForm from "../../hooks/useForm"

const CartaSolteria = () => {
  const onSubmit = e => {
    e.preventDefault()
    console.log(ppc)
    // console.log(sexo)
    // console.log(fechaNacimientoPpc)
  }

  const [ppc, bindPpc] = useForm({
    pNombrePpc: "",
    sNombrePpc: "",
  })

  // Padre Primer Conyugue (ppc)

  const conyugueForm = () => (
    <div>
      <h2>Sus datos</h2>
      <Form onSubmit={onSubmit}>
        <Form.Row>
          <Form.Group as={Col}>
            <Form.Label>Primer nombre</Form.Label>
            <Form.Control
              name="pNombrePpc"
              type="text"
              placeholder="Primer nombre"
              {...bindPpc}
            />
          </Form.Group>

          <Form.Group as={Col}>
            <Form.Label>Segundo nombre</Form.Label>
            <Form.Control
              name="sNombrePpc"
              type="text"
              placeholder="Segundo nombre"
              {...bindPpc}
            />
          </Form.Group>
        </Form.Row>

        <Button variant="primary" type="submit">
          Submit
        </Button>
      </Form>
    </div>
  )

  return (
    <Container>
      <h1>Acerca tu cónyugue</h1>
      {conyugueForm()}
    </Container>
  )
}

export default CartaSolteria
