import React from "react"

import { Form, Col } from "react-bootstrap"

import { connect } from "react-redux"

import { onChangeForm } from "../../state/form/formActions"

import LugarFields from "../lugares/LugarFields"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

const ClienteForm = ({ form, onChangeForm, currentCliente }) => {
  const field = (label, name, placeholder, type) => {
    return (
      <Form.Group as={Col}>
        <Form.Label>{label}</Form.Label>
        <Form.Control
          type={type}
          placeholder={placeholder}
          name={name}
          value={form[name]}
          onChange={onChangeForm}
        />
      </Form.Group>
    )
  }

  const datePicker = (label, name, date) => (
    <Form.Group as={Col}>
      <p style={{ marginBottom: "0.5rem" }}>{label}</p>
      <DatePicker
        selected={date ? date : new Date()}
        onChange={date => onChangeForm({ target: { name, value: date } })}
        peekNextMonth
        showMonthDropdown
        showYearDropdown
        className="form-control"
        dropdownMode="select"
      />
    </Form.Group>
  )

  const { p_nombre, s_nombre, p_apellido, s_apellido, cedula, correo, sexo, estadoCivil } = form

  return (
    <>
      <h1>Insert Cliente</h1>
      <Form>
        <Form.Row>
          <LugarFields currentData={currentCliente} />
        </Form.Row>
        <Form.Row>
          {field("Nombre", "p_nombre", "Inserte nombre", "text")}
          {field("Segundo nombre", "s_nombre", "Inserte segundo nombre", "text")}
          {datePicker("Fecha de nacimiento", "fecha_nacimiento")}
        </Form.Row>

        <Form.Row>
          {field("Apellido", "p_apellido", "Inserte apellido", "text")}
          {field("Segundo apellido", "s_apellido", "Inserte segundo apellido", "text")}
          {field("Correo electronico", "correo", "Inserte correo electronico", "text")}
        </Form.Row>

        <Form.Row>
          {field("Telefono", "telefono", "Inserte telefono", "text")}

          <Form.Group as={Col}>
          <Form.Label>Estado civil</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="estadoCivil"
            value={estadoCivil}
            onChange={onChangeForm}
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
              onChange={onChangeForm}
              checked={sexo === "Masculino"}
            />
            <Form.Check
              inline
              type="radio"
              label="F"
              name="sexo"
              value="Femenino"
              onChange={onChangeForm}
              checked={sexo === "Femenino"}
            />
          </Form.Group>
        </fieldset>
      </Form.Row>
      </Form>
    </>
  )
}

const mapStateToProps = state => ({
  form: state.forms,
  currentCliente: state.clientes.currentCliente,
})

export default connect(mapStateToProps, { onChangeForm })(ClienteForm)
