import React from "react"

import { Form, Button, Card } from "react-bootstrap"

import { Link } from "react-router-dom"

import useForm from "../../hooks/useForm"

const Register = () => {
  const [fields, bindFields] = useForm({
    username: "",
    password: "",
  })

  const onSubmit = e => {
    e.preventDefault()
    console.log(fields)
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
              <Form.Control
                name="username"
                type="text"
                placeholder="Tu nombre de usuario"
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

export default Register
