import React from "react"

import { Form, Col } from "react-bootstrap"

import { connect } from "react-redux"

import { createForm, onChangeForm } from "../state/form/formActions"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

const Test = ({ onSubmitForm, onChangeForm, form }) => {
  const { campo1, campo2, fecha1, fecha2, fecha3 } = form

  const field = (label, name, value, placeholder, type) => {
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

  // const Field = ({ label, name, placeholder, type }) => {
  //   return (
  //     <Form.Group as={Col}>
  //       <Form.Label>{label}</Form.Label>
  //       <Form.Control
  //         type={type}
  //         placeholder={placeholder}
  //         name={name}
  //         value={form[name]}
  //         onChange={onChangeForm}
  //       />
  //     </Form.Group>
  //   )
  // }

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

  return (
    <Form onSubmit>
      {/* <Field label="Campo 1" name="campo1" placeholder="Campo 1A" type="text" /> */}
      {field("Campo 1", "campo1", "Campo 1", "text")}
      {field("Campo 1", "campo2", "Campo 2", "password")}
      {datePicker("Fecha1", "fecha1")}
      {datePicker("Fecha1", "fecha2")}
      {datePicker("Fecha1", "fecha3")}
    </Form>
  )
}

const mapStateToProps = state => ({
  form: state.forms,
})

export default React.memo(
  connect(mapStateToProps, { createForm, onChangeForm })(Test)
)
