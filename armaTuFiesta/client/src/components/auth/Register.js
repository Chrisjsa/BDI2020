import React from "react"

import { Form, Button, Card, Col } from "react-bootstrap"

import { connect } from "react-redux"
import { Field, reduxForm } from "redux-form"

import { Link } from "react-router-dom"

let Register = () => {
  const onSubmit = (e) => {
    e.preventDefault()
    console.log("Register.onClick()")
  }

  return (
    <div className="register-container">
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
              />

              <Form.Text className="text-muted">
                No compartimos tu información con nadie.
              </Form.Text>
            </Form.Group>

            <Form.Group>
              <Form.Label>Contraseña</Form.Label>
              <Field
                className="form-control"
                name="password"
                component="input"
                type="password"
              />
            </Form.Group>

            <Form.Group>
              <Form.Label>Repetir Contraseña</Form.Label>
              <Field
                className="form-control"
                name="password2"
                component="input"
                type="password"
              />
            </Form.Group>

            <Form.Row>
              <Form.Group as={Col}>
                <Form.Label>Primer Nombre</Form.Label>
                <Field
                  className="form-control"
                  name="p_nombre"
                  component="input"
                  type="text"
                />
              </Form.Group>

              <Form.Group as={Col}>
                <Form.Label>Segundo Nombre</Form.Label>
                <Field
                  className="form-control"
                  name="s_nombre"
                  component="input"
                  type="text"
                />
              </Form.Group>
            </Form.Row>

            <Form.Row>
              <Form.Group as={Col}>
                <Form.Label>Primer Apellido</Form.Label>
                <Field
                  className="form-control"
                  name="p_apellido"
                  component="input"
                  type="text"
                />
              </Form.Group>

              <Form.Group as={Col}>
                <Form.Label>Segundo Apellido</Form.Label>
                <Field
                  className="form-control"
                  name="s_apellido"
                  component="input"
                  type="text"
                />
              </Form.Group>
            </Form.Row>

            <Form.Row>
              <Form.Group as={Col}>
                <Form.Label>Correo Electronico</Form.Label>
                <Field
                  className="form-control"
                  name="correo"
                  component="input"
                  type="text"
                />
              </Form.Group>

              <Form.Group as={Col}>
                <Form.Label>Telefono</Form.Label>
                <Field
                  className="form-control"
                  name="telefono"
                  component="input"
                  type="text"
                />
              </Form.Group>
            </Form.Row>

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

export default connect(mapStateToProps, mapActionsToProps)(Register)
