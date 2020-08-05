import React, { useEffect } from "react"
import { Link, withRouter } from "react-router-dom"

import { Form, Button, Card } from "react-bootstrap"

import { login } from "../../state/auth/authActions"

import { connect } from "react-redux"
import useForm from "../../hooks/useForm"

import { setAlert } from "../../state/alert/alertActions"

const Login = ({ history, login, isAuthenticated, error }) => {
  useEffect(() => {
    if (isAuthenticated)
      setTimeout(() => {
        history.push("/dashboard")
      }, 250)
  }, [isAuthenticated, history])

  const [fields, bindFields] = useForm({
    username: "tguzmani@gmail.com",
    password: "V26150008",
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
                name="username"
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

const mapStateToProps = state => ({
  isAuthenticated: state.auth.isAuthenticated,
  error: state.auth.error,
})

export default withRouter(connect(mapStateToProps, { login, setAlert })(Login))
