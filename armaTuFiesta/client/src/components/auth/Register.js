import React from "react"

import { Form, Button, Card } from "react-bootstrap"

import { Link } from "react-router-dom"

import useForm from "../../hooks/useForm"
import { conenct } from "react-redux"
import { Field, reduxForm } from "redux-form"
let Register = () => {
  const onSubmit = (e) => {
    e.preventDefault()

    console.log("Register.onClick()")
  }

  return (
    <div className="form-container">
      <h1 className="text-center my-5">Registro</h1>
      <Card className="bg-light">
        <Card.Body>
          <Form onSubmit={onSubmit}>
            <Form.Group>
              <Form.Label>Usuario</Form.Label>
              <Field
                className="form-control"
                name="username"
                component="input"
                type="text"
                placeholder="Tu usuario"
              />

              <Form.Text className="text-muted">
                No compartimos tu información con nadie.
              </Form.Text>
            </Form.Group>

            <Form.Group>
              <Form.Label>Contraseña</Form.Label>
              <Form.Control
                name="password"
                type="password"
                placeholder="Tu contraseña"
              />
            </Form.Group>

            <Button variant="primary" type="submit" className="mb-3" block>
              Registrarse
            </Button>

            <Form.Text className="text-muted text-center">
              ¿Ya tienes usuario? <Link to="/login">Inicia sesión acá</Link>.
            </Form.Text>
          </Form>
        </Card.Body>
      </Card>
    </div>
  )
}

Register = reduxForm({
  form: "registro",
})(Register)

const mapActionsToProps = {}

const mapStateToProps = (state) => ({})

export default Register
