import React from "react"

import { Form, Col } from "react-bootstrap"

import { connect } from "react-redux"

import { onChangeForm } from "../../state/form/formActions"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

const ClienteForm = ({ form, onChangeForm }) => {
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

  const { p_nombre, s_nombre, a_apellido, s_apellido } = form

  return (
    <>
      <h1>Insert Cliente</h1>
      <Form>
        <Form.Row>
          {field("Nombre", "p_nombre", "Inserte nombre", "text")}
          {field("Segundo nombre", "s_nombre", "...", "text")}
          {datePicker("Fecha de nacimiento", "fecha_nacimiento")}
        </Form.Row>

        <Form.Row>
          {field("Apellido", "a_apellido", "...", "text")}
          {field("Segundo apellido", "s_apellido", "...", "text")}
        </Form.Row>
      </Form>
    </>
  )
}

const mapStateToProps = state => ({
  form: state.forms,
})

export default connect(mapStateToProps, { onChangeForm })(ClienteForm)
