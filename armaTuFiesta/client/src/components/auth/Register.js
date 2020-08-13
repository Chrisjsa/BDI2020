import React from "react"

import { Form, Button, Card } from "react-bootstrap"

<<<<<<< HEAD
import { Link } from "react-router-dom"

import useForm from "../../hooks/useForm"
import { conenct } from "react-redux"
import { Field, reduxForm } from "redux-form"
let Register = () => {
  const onSubmit = (e) => {
    e.preventDefault()

=======
import { connect } from "react-redux"
import { Field, reduxForm } from "redux-form"

import { Link } from "react-router-dom"

let Register = () => {
  const onSubmit = e => {
    e.preventDefault()
>>>>>>> a4a65482e2ac5234e3cd1e9ae2fd27bb00f6185a
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
<<<<<<< HEAD
                placeholder="Tu usuario"
=======
>>>>>>> a4a65482e2ac5234e3cd1e9ae2fd27bb00f6185a
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
              <Form.Label>Contraseña</Form.Label>
              <Field
                className="form-control"
                name="password2"
                component="input"
                type="password"
<<<<<<< HEAD
                placeholder="Tu contraseña"
=======
>>>>>>> a4a65482e2ac5234e3cd1e9ae2fd27bb00f6185a
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

<<<<<<< HEAD
const mapStateToProps = (state) => ({})

export default Register
=======
const mapStateToProps = state => ({})

export default connect(mapStateToProps, mapActionsToProps)(Register)
>>>>>>> a4a65482e2ac5234e3cd1e9ae2fd27bb00f6185a
