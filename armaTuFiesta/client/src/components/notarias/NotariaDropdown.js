import React from "react"

import { Form, Col } from "react-bootstrap"

const NotariaDropdown = ({ label, name }) => {
  return (
    <Form.Group as={Col}>
      <Form.Label>label</Form.Label>
      <Form.Control
        as="select"
        defaultValue="Seleccionar..."
        name={`${name}`} // string
        value={name}
        onChange={onChange}
        disabled={currentNotaria}
      >
        <option>Seleccionar...</option>
        {estados.length >= 0 &&
          estados.map(estado => (
            <option key={estado.id_estado} value={estado.id_estado}>
              {estado.nombre}
            </option>
          ))}
      </Form.Control>
    </Form.Group>
  )
}

export default NotariaDropdown
