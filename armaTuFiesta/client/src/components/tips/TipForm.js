// Modificar este componente para que acepte ahora el estado de Tips
// No olvides cambiar el nombre de form por "tip" (singular)

import React, { useState } from "react"

import { Field, reduxForm, getFormValues } from "redux-form"

import { Form, Col, Button } from "react-bootstrap"



import "react-datepicker/dist/react-datepicker.css"



import { connect } from "react-redux"

import {
  insertarTip,
  actualizarTip,
  eliminarTip,
} from "../../state/tip/tipActions"

let TipForm = ({
  insertarTip,
  actualizarTip,
  eliminarTip,
  tips,
  currentTip,
  
  formValues,
}) => {
  const clearForm = () => {}

  const handleUpdate = () => {}

  const handleCreate = () => {
    console.log({
      ...formValues,
      tipo,
      
    })
  }

  const handleDelete = () => {}

  const onChange = event => {}
  const [tipo, setTipo] = useState("")

  return (
    <Form>
      <Form className="Row">
      <Form.Row>  
      <Form.Group as={Col}>
            <Form.Label>Tipo</Form.Label>
            <Form.Control
              as="select"
              defaultValue="Seleccionar..."
              name="tipo"
              value={tipo}
              onChange={e => setTipo(e.target.value)}
            >
              <option>Seleccionar...</option>
              <option value="Tip">Tip</option>
              <option value="Idea">Idea</option>
              <option value="Recomendacion">Recomendacion</option>
              
            </Form.Control>
          </Form.Group>
        
          <Form.Group as={Col}>
            <Form.Label>Descripcion</Form.Label>
            <Field
              className="form-control"
              name="descripcion"
              component="input"
              type="text"
            />
          </Form.Group>

          

        </Form.Row>
        

        <div className="text-center">
          {currentTip ? (
            <>
              <Button className="mr-3" onClick={handleUpdate}>
                Actualizar
              </Button>
              <Button onClick={handleDelete} variant="outline-danger">
                Eliminar
              </Button>
            </>
          ) : (
            <Button disabled={false} onClick={handleCreate}>
              Agregar
            </Button>
          )}
        </div>
      </Form>
    </Form>
  )
}

TipForm = reduxForm({
  form: "tip",
})(TipForm)

const mapActionsToProps = {
  insertarTip,
  actualizarTip,
  eliminarTip,
}

const mapStateToProps = state => ({
  formValues: getFormValues("tip")(state),
  tips: state.tips.tips,
  currentTip: state.tips.currentTip,
  
})

export default connect(mapStateToProps, mapActionsToProps)(TipForm)
