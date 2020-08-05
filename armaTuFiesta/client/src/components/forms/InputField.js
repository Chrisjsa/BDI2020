import React from "react"

import { Field, reduxForm } from "redux-form"

import { Form, Col } from "react-bootstrap"

let ClienteForm = props => {
  const { handleSubmit } = props

  return (
    <Form>
      <Form.Group as={Col}>
        <Form.Label>Nombre notaria</Form.Label>
        <Field
          className="form-control"
          name="p_nombre"
          component="input"
          type="text"
        />
      </Form.Group>
    </Form>
  )
}

ClienteForm = reduxForm({
  form: "cliente",
})(ClienteForm)

export default ClienteForm
