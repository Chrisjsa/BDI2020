import React, { useState } from "react"

import { Field, reduxForm, getFormValues } from "redux-form"

import { Form, Col, Button } from "react-bootstrap"

import DatePicker from "react-datepicker"

import "react-datepicker/dist/react-datepicker.css"

import LugarFields from "../lugares/LugarFields"

import { connect } from "react-redux"

import {
  insertarCliente,
  actualizarCliente,
  eliminarCliente,
} from "../../state/cliente/clienteActions"

let ClienteForm = ({
  insertarCliente,
  actualizarCliente,
  eliminarCliente,
  clientes,
  currentCliente,
  currentEstado,
  currentMunicipio,
  currentParroquia,
  formValues,
}) => {
  const packData = () => ({
    ...formValues,
    sexo,
    estadoCivil,
    fecha_nacimiento: fechaNacimiento,
    estado: currentEstado,
    municipio: currentMunicipio,
    parroquia: currentParroquia,
  })

  const clearForm = () => {}

  const handleUpdate = () => {}

  const handleCreate = () => {
    console.log(packData())
  }

  const handleDelete = () => {}

  const onChange = event => {}

  const [fechaNacimiento, setFechaNacimiento] = useState(new Date())

  const [sexo, setSexo] = useState("Masculino")
  const [estadoCivil, setEstadoCivil] = useState("")

  return (
    <Form>
      <Form className="Row">
        <LugarFields currentData={false} />

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
              name="numero"
              component="input"
              type="text"
            />
          </Form.Group>

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

        <div className="text-center">
          {currentCliente ? (
            <>
              <Button className="mr-3" onClick={handleUpdate}>
                Actualizar cliente
              </Button>
              <Button onClick={handleDelete} variant="outline-danger">
                Eliminar cliente
              </Button>
            </>
          ) : (
            <Button disabled={false} onClick={handleCreate}>
              Agregar cliente
            </Button>
          )}
        </div>
      </Form>
    </Form>
  )
}

ClienteForm = reduxForm({
  form: "cliente",
})(ClienteForm)

const mapActionsToProps = {
  insertarCliente,
  actualizarCliente,
  eliminarCliente,
}

const mapStateToProps = state => ({
  formValues: getFormValues("cliente")(state),
  clientes: state.clientes.clientes,
  currentCliente: state.clientes.currentCliente,
  currentEstado: state.lugares.currentEstado,
  currentMunicipio: state.lugares.currentMunicipio,
  currentParroquia: state.lugares.currentParroquia,
})

export default connect(mapStateToProps, mapActionsToProps)(ClienteForm)
