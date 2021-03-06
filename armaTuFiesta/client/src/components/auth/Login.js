import React, { useEffect, useState } from "react"
import { Link, withRouter } from "react-router-dom"

import { Form, Button, Card } from "react-bootstrap"

import { login } from "../../state/auth/authActions"

import { connect } from "react-redux"
import useForm from "../../hooks/useForm"

import { setAlert } from "../../state/alert/alertActions"

const Login = ({ history, login, isAuthenticated, user }) => {
  const [showButtons, setShowButtons] = useState(false)

  useEffect(() => {
    if (isAuthenticated && user) history.push("/dashboard")
  }, [isAuthenticated, user, history])

  const [fields, bindFields] = useForm({
    username: "",
    password: "",
  })

  const onSubmit = e => {
    e.preventDefault()
    login(fields)
  }

  return (
    <div className="form-container">
      <h1
        className="text-center my-5"
        onClick={e => setShowButtons(!showButtons)}
      >
        Login
      </h1>
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

            {showButtons && (
              <>
                <Button
                  variant="primary"
                  type="submit"
                  className="mb-3"
                  block
                  onClick={e =>
                    login({
                      username: "tguzmani@gmail.com",
                      password: "V26150008",
                    })
                  }
                >
                  Tomás
                </Button>
                <Button
                  variant="primary"
                  type="submit"
                  className="mb-3"
                  block
                  onClick={e =>
                    login({
                      username: "winkler07@gmail.com",
                      password: "V25253807",
                    })
                  }
                >
                  Winkler
                </Button>
                <Button
                  variant="primary"
                  type="submit"
                  className="mb-3"
                  block
                  onClick={e =>
                    login({
                      username: "amandasuarez@gmail.com",
                      password: "V20000007",
                    })
                  }
                >
                  Amanda
                </Button>{" "}
              </>
            )}

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
  user: state.auth.user,
})

export default withRouter(connect(mapStateToProps, { login, setAlert })(Login))
