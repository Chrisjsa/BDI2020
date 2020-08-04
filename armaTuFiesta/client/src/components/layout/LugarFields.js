import React from "react"

import { Form, Col } from "react-bootstrap"

const LugarFields = ({}) => {
  return (
    <Form.Row>
      <Form.Group as={Col}>
        <Form.Label>Estado</Form.Label>
        <Form.Control
          as="select"
          defaultValue="Seleccionar..."
          name="estado"
          value={estado}
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
      </Form.Group>{" "}
      */
      <Form.Group as={Col}>
        <Form.Label>Municipio</Form.Label>
        <Form.Control
          as="select"
          defaultValue="Seleccionar..."
          name="municipio"
          value={municipio}
          onChange={onChange}
          disabled={currentNotaria}
        >
          <option>Seleccionar...</option>
          {municipios.length >= 0 &&
            municipios.map(municipio => (
              <option
                key={municipio.id_municipio}
                value={municipio.id_municipio}
              >
                {municipio.nombre}
              </option>
            ))}
        </Form.Control>
      </Form.Group>
      <Form.Group as={Col}>
        <Form.Label>Parroquia</Form.Label>
        <Form.Control
          as="select"
          defaultValue="Seleccionar..."
          name="parroquia"
          value={parroquia}
          onChange={onChange}
          disabled={currentNotaria}
        >
          <option>Seleccionar...</option>
          {parroquias.length >= 0 &&
            parroquias.map(parroquia => (
              <option
                key={parroquia.id_parroquia}
                value={parroquia.id_parroquia}
              >
                {parroquia.nombre}
              </option>
            ))}
        </Form.Control>
      </Form.Group>
    </Form.Row>
  )
}

export default LugarFields
