import React, { useState, useEffect } from "react"
import { Form, Button, Card, Col } from "react-bootstrap"

import { connect } from "react-redux"
import { Field, reduxForm, getFormValues } from "redux-form"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

import { Link } from "react-router-dom"
import LugarFields from "../lugares/LugarFields"

import { signup } from "../../state/auth/authActions"

let Register = ({
  formValues,
  currentEstado,
  currentMunicipio,
  currentParroquia,
  signup,
  isAuthenticated,
  user,
  history,
}) => {
  useEffect(() => {
    if (isAuthenticated && user) history.push("/dashboard")

    // setTimeout(() => {
    //   history.push("/dashboard")
    // }, 250)
  }, [isAuthenticated, user, history])
  const [fechaNacimiento, setFechaNacimiento] = useState(new Date())
  const [sexo, setSexo] = useState("Masculino")
  const [estadoCivil, setEstadoCivil] = useState("")

  const packData = () => ({
    ...formValues,
    sexo,
    estadoCivil,
    fecha_nacimiento: fechaNacimiento,
    estado: currentEstado,
    municipio: currentMunicipio,
    parroquia: currentParroquia,
  })

  const onSubmit = e => {
    e.preventDefault()
    signup(packData())
  }

  return (
    <div className="register-container mb-5">
      <h1 className="text-center my-5">Registro</h1>
      <Card className="bg-light">
        <Card.Body>
          <Form onSubmit={onSubmit}>
            <Form.Group>
              <Form.Label>Usuario (Correo Electronico)</Form.Label>
              <Field
                className="form-control"
                name="username"
                component="input"
                type="text"
              />
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
                <Form.Label>Estado civil</Form.Label>
                <Form.Control
                  as="select"
                  defaultValue="Seleccionar..."
                  name="estadoCivil"
                  value={estadoCivil}
                  onChange={e => setEstadoCivil(e.target.value)}
                >
                  <option>Seleccionar...</option>
                  <option value="Soltero">Soltero</option>
                  <option value="Casado">Casado</option>
                  <option value="Divorciado">Divorciado</option>
                  <option value="Viudo">Viudo</option>
                </Form.Control>
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
            <Form.Row>
              <Form.Group as={Col}>
                <Form.Label>Cedula</Form.Label>
                <Field
                  className="form-control"
                  name="cedula"
                  component="input"
                  type="text"
                />
              </Form.Group>

              <Form.Group as={Col}>
                <p style={{ marginBottom: "0.5rem" }}>Fecha de nacimiento</p>
                <DatePicker
                  selected={fechaNacimiento}
                  onChange={date => setFechaNacimiento(date)}
                  peekNextMonth
                  showMonthDropdown
                  showYearDropdown
                  className="form-control"
                  dropdownMode="select"
                />
              </Form.Group>
            </Form.Row>

            <Form.Row>
              <fieldset>
                <Form.Group>
                  <Form.Label className="mr-3">Sex</Form.Label>
                  <Form.Check
                    inline
                    type="radio"
                    label="M"
                    name="sexo"
                    value="Masculino"
                    onChange={e => setSexo(e.target.value)}
                    checked={sexo === "Masculino"}
                  />
                  <Form.Check
                    inline
                    type="radio"
                    label="F"
                    name="sexo"
                    value="Femenino"
                    onChange={e => setSexo(e.target.value)}
                    checked={sexo === "Femenino"}
                  />
                </Form.Group>
              </fieldset>
            </Form.Row>
            <LugarFields />
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

const mapActionsToProps = { signup }

const mapStateToProps = state => ({
  formValues: getFormValues("registro")(state),
  currentEstado: state.lugares.currentEstado,
  currentMunicipio: state.lugares.currentMunicipio,
  currentParroquia: state.lugares.currentParroquia,
  isAuthenticated: state.auth.isAuthenticated,
  error: state.auth.error,
  user: state.auth.user,
})

export default connect(mapStateToProps, mapActionsToProps)(Register)
