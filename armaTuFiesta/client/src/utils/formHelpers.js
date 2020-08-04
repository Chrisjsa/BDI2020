import React from "react"

import { Form, Col } from "react-bootstrap"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

export const field = (
  label,
  name,
  value,
  placeholder,
  type,
  form,
  onChangeForm
) => {
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

export const datePicker = (label, name, date, onChangeForm) => (
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
