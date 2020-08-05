import React, { useState } from "react"

import { Field, reduxForm } from "redux-form"

import { Form, Col } from "react-bootstrap"

import DatePicker from "react-datepicker"

import "react-datepicker/dist/react-datepicker.css"

import LugarFields from "../lugares/LugarFields"
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


const clearForm = () => {
  
}

const handleUpdate = () => {
  
}

const handleCreate = () => {
  
}

const handleDelete = () => {
  
}

const onChange = event => {
  
}

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
  const [sexo, setSexo] = useState("Masculino")
  const [estadoCivil, setEstadoCivil] = useState("")

  return (
    <Form onSubmit={props.handleSubmit(onSubmit)}>
      <Form className="Row">
      <LugarFields currentData={false} />
        {/* Cada campo es un Form.Group */}
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
        {/* El date picker siempre es así */}
        <Form.Group as={Col}>
          <p style={{ marginBottom: "0.5rem" }}>Fecha de nacimiento</p>
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

          {/* <div className="text-center">
          {currentNotaria ? (
            <>
              <Button className="mr-3" onClick={handleUpdate}>
                Actualizar notaria
              </Button>
              <Button onClick={handleDelete} variant="outline-danger">
                Eliminar notaria
              </Button>
            </>
          ) : (
            <Button disabled={isNotariaEmpty} onClick={handleCreate}>
              Agregar notaria
            </Button>
          )}
        </div> */}

      </Form>
    </Form>
  )
}

ClienteForm = reduxForm({
  form: "contact",
})(ClienteForm)

export default ClienteForm
