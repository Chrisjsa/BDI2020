import React from "react"
import { Link, withRouter } from "react-router-dom"

import { Form, Button, Card } from "react-bootstrap"

import { login } from "../../actions/authActions"

import { connect } from "react-redux"
import useForm from "../../hooks/useForm"

const Login = ({ history, login }) => {
  const [fields, bindFields] = useForm({
    email: "tomasg92@gmail.com",
    password: "perros",
  })

  const onSubmit = e => {
    e.preventDefault()
    login(fields)
  }

  return (
    <div className="form-container">
      <h1 className="text-center my-5">Login</h1>
      <Card className="bg-light">
        <Card.Body>
          <Form onSubmit={onSubmit}>
            <Form.Group>
              <Form.Label>Email </Form.Label>
              <Form.Control
                name="email"
                type="text"
                placeholder="Tu email"
                {...bindFields}
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
                {...bindFields}
              />
            </Form.Group>

            <Button variant="primary" type="submit" className="mb-3" block>
              Login
            </Button>

            <Form.Text className="text-muted text-center">
              ¿No tienes usuario aún?{" "}
              <Link to="/register">Regístrate acá.</Link>
            </Form.Text>
          </Form>
        </Card.Body>
      </Card>
    </div>
  )
}

const mapStateToProps = state => ({})

export default withRouter(connect(mapStateToProps, { login })(Login))
