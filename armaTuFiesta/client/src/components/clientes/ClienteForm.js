import React, { useState } from "react"

import { Field, reduxForm } from "redux-form"

import { Form, Col } from "react-bootstrap"

import DatePicker from "react-datepicker"

import "react-datepicker/dist/react-datepicker.css"

// tomas
// conectar con el estado cliente
// conectar con acciones
// agregar botones
// conectar funcionalidad

// winkler
// hacer el form con todos sus campos
// revisar en consola si se envián los valores
// (presionar enter para enviar valores)
// agregar el campo de Lugares (<LugarField />)

let ClienteForm = props => {
  const { handleSubmit } = props

  const onSubmit = formValues => {
    console.log(formValues) // la consola se abre con CTRL+SHIFT+I
  }

  // (2) el componente guarda un estado, como una especie de memoria de qué pasa en si mismo
  const [fechaNacimiento, setFechaNacimiento] = useState(new Date()) // la fecha de hoy
  // fechaNacimiento y setFechaNacimiento son nombres arbitrarios
  // la primera es el valor, la segunda es la función que la modifica
  // useState() recibe un valor para el estado, en este caso la fecha

  return (
    <Form onSubmit={props.handleSubmit(onSubmit)}>
      <Form className="Row">
        {/* Cada campo es un Form.Group */}
        <Form.Group as={Col}>
          <Form.Label>Primer Nombre</Form.Label>
          <Field
            className="form-control"
            name="p_nombre" // se escribe el atributo con convencio de base de datos (p_nombre, etc...)
            component="input"
            type="text" // creo que hay tipo number para campos numero
          />
        </Form.Group>

        {/* El date picker siempre es así */}
        <Form.Group as={Col}>
          <p style={{ marginBottom: "0.5rem" }}>From</p>
          <DatePicker
            selected={fechaNacimiento} // asi se llama la variable de estado que declaramos en la linea 27
            onChange={date => setFechaNacimiento(date)} // onChange (en cada seleccion de fecha), la fecha "date" se asigna a fechaDeNacimiento
            peekNextMonth
            showMonthDropdown
            showYearDropdown
            className="form-control"
            dropdownMode="select"
          />
        </Form.Group>
      </Form>
    </Form>
  )
}

ClienteForm = reduxForm({
  form: "contact",
})(ClienteForm)

export default ClienteForm
