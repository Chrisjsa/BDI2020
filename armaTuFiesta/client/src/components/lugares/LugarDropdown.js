import React from "react"

import { Form, Col } from "react-bootstrap"

const LugarDropdown = ({
  label,
  value,
  handler,
  list,
  name,
  disableIf,
  currentData,
}) => (
  <Form.Group as={Col}>
    <Form.Label>{label}</Form.Label>
    <Form.Control
      as="select"
      defaultValue="Seleccionar..."
      value={value ? value : "Seleccionar..."}
      onChange={e => handler(e.target.value)}
      disabled={disableIf || currentData}
    >
      <option value={"none"}>Seleccionar...</option>
      {list.length >= 0 &&
        list.map(element => (
          <option key={element[`id_${name}`]} value={element[`id_${name}`]}>
            {element.nombre}
          </option>
        ))}
    </Form.Control>
  </Form.Group>
)
export default LugarDropdown
