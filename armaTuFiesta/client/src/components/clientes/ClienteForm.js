import React, { useState, useEffect } from "react"
import { connect } from "react-redux"
import { Field, reduxForm, getFormValues, change, reset } from "redux-form"

import { Form, Col, Button } from "react-bootstrap"
import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

import LugarFields from "../lugares/LugarFields"

import { changeFormByObject } from "../../utils/index"
import {
  leerClientes,
  insertarCliente,
  actualizarCliente,
  eliminarCliente,
  setCurrentCliente,
} from "../../state/cliente/clienteActions"

import { leerRoles } from "../../state/rol/rolActions"

let ClienteForm = ({
  leerClientes,
  insertarCliente,
  actualizarCliente,
  eliminarCliente,
  setCurrentCliente,
  currentCliente,
  currentEstado,
  currentMunicipio,
  currentParroquia,
  formValues,
  change,
  reset,
  leerRoles,
  roles,
}) => {
  const [fechaNacimiento, setFechaNacimiento] = useState(new Date())
  const [sexo, setSexo] = useState("Masculino")
  const [estadoCivil, setEstadoCivil] = useState("")
  const [rol, setRol] = useState("")

  useEffect(() => {
    leerRoles()
    // eslint-disable-next-line
  }, [])

  useEffect(() => {
    console.log("use efffect:", currentCliente)
    if (!currentCliente) {
      reset("cliente")
      setSexo("Masculino")
      setFechaNacimiento(new Date())
      setEstadoCivil("")
      setRol("")
    } else {
      changeFormByObject(currentCliente, change)
      setFechaNacimiento(new Date(currentCliente.fecha_nacimiento))
      setSexo(currentCliente.sexo)
      setEstadoCivil(currentCliente.estado_civil)
      setRol(currentCliente.id_rol)
    }
    // eslint-disable-next-line
  }, [currentCliente])

  const packData = () => ({
    ...formValues,
    sexo,
    estadoCivil,
    fecha_nacimiento: fechaNacimiento,
    estado: currentEstado,
    municipio: currentMunicipio,
    parroquia: currentParroquia,
    id_rol: rol,
  })

  const cleanUp = () => {
    setCurrentCliente(undefined)
    leerClientes()
  }

  const handleUpdate = () => {
    actualizarCliente(packData())
    cleanUp()
  }

  const handleCreate = () => {
    insertarCliente(packData())
    cleanUp()
  }

  const handleDelete = () => {
    eliminarCliente(currentCliente.id_persona)
    cleanUp()
  }

  return (
    <Form>
      <Form className="Row">
        <LugarFields currentData={currentCliente} />

        <Form.Row>
          <Form.Group as={Col}>
            <Form.Label>Primer Nombre</Form.Label>
            <Field
              className="form-control"
              name="p_nombre"
              component="input"
              type="text"
              disabled={currentCliente}
            />
          </Form.Group>

          <Form.Group as={Col}>
            <Form.Label>Segundo Nombre</Form.Label>
            <Field
              className="form-control"
              name="s_nombre"
              component="input"
              type="text"
              disabled={currentCliente}
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
              disabled={currentCliente}
            />
          </Form.Group>

          <Form.Group as={Col}>
            <Form.Label>Segundo Apellido</Form.Label>
            <Field
              className="form-control"
              name="s_apellido"
              component="input"
              disabled={currentCliente}
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
              disabled={currentCliente}
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
              disabled={currentCliente}
              dropdownMode="select"
            />
          </Form.Group>

          <Form.Group as={Col}>
            <Form.Label>Estado civil</Form.Label>
            <Form.Control
              as="select"
              defaultValue="Seleccionar..."
              name="estadoCivil"
              value={estadoCivil}
              disabled={currentCliente}
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

          <Form.Group as={Col}>
            <Form.Label>Rol</Form.Label>
            <Form.Control
              as="select"
              defaultValue="Seleccionar..."
              name="estadoCivil"
              value={rol}
              onChange={e => setRol(e.target.value)}
            >
              <option>Seleccionar...</option>
              {roles.map(rol => (
                <option value={rol.id_rol}>{rol.nombre}</option>
              ))}
            </Form.Control>
          </Form.Group>
        </Form.Row>

        <fieldset>
          <Form.Group>
            <Form.Label className="mr-3">Sex</Form.Label>
            <Form.Check
              inline
              type="radio"
              label="M"
              name="sexo"
              disabled={currentCliente}
              value="Masculino"
              onChange={e => setSexo(e.target.value)}
              checked={sexo === "Masculino"}
            />
            <Form.Check
              inline
              type="radio"
              disabled={currentCliente}
              label="F"
              name="sexo"
              value="Femenino"
              onChange={e => setSexo(e.target.value)}
              checked={sexo === "Femenino"}
            />
          </Form.Group>
        </fieldset>

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
            <Button disabledd={false} onClick={handleCreate}>
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
  setCurrentCliente,
  leerClientes,
  change,
  reset,
  leerRoles,
}

const mapStateToProps = state => ({
  formValues: getFormValues("cliente")(state),
  clientes: state.clientes.clientes,
  currentCliente: state.clientes.currentCliente,
  currentEstado: state.lugares.currentEstado,
  currentMunicipio: state.lugares.currentMunicipio,
  currentParroquia: state.lugares.currentParroquia,
  roles: state.rols.roles,
})

export default connect(mapStateToProps, mapActionsToProps)(ClienteForm)
