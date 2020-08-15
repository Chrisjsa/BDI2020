import React, { useState, useEffect } from "react"

import { Form, Col, Button } from "react-bootstrap"

import { Field, reduxForm, getFormValues, change, reset } from "redux-form"

import "react-datepicker/dist/react-datepicker.css"

import { connect } from "react-redux"

import { changeFormByObject } from "../../utils"

import {
  setCurrentTip,
  insertarTip,
  actualizarTip,
  eliminarTip,
  leerTips,
} from "../../state/tip/tipActions"

let TipForm = ({
  leerTips,
  insertarTip,
  actualizarTip,
  eliminarTip,
  tips,
  setCurrentTip,
  currentTip,
  formValues,
  change,
  reset,
}) => {
  useEffect(() => {
    if (!currentTip) {
      reset("tip")
      setTipo("")
    } else {
      changeFormByObject(currentTip, change)
      setTipo(currentTip.tipo)
    }
  }, [currentTip, reset, change])

  const packData = () => ({
    ...formValues,
    tipo,
    descripcion,
  })

  const cleanUp = () => {
    leerTips()
    setCurrentTip(undefined)
  }

  const handleUpdate = () => {
    actualizarTip(packData())
    cleanUp()
  }

  const handleCreate = () => {
    insertarTip(packData())
    cleanUp()
  }

  const handleDelete = () => {
    eliminarTip(currentTip.id_tip)
    cleanUp()
  }

  const [tipo, setTipo] = useState("")
  const [descripcion, setDescripcion] = useState("")

  return (
    <Form onSubmit={e => e.preventDefault()}>
      <Form className="Row">
        <Form.Row>
          <Form.Group as={Col} xs={3}>
            <Form.Label>Tipo</Form.Label>
            <Form.Control
              as="select"
              defaultValue="Seleccionar..."
              name="tipo"
              value={tipo}
              disabled={currentTip}
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
            <Form.Control
              className="form-control"
              name="descripcion"
              component="input"
              type="text"
              value={descripcion}
              onChange={e => setDescripcion(e.target.value)}
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
  setCurrentTip,
  leerTips,
  change,
  reset,
}

const mapStateToProps = state => ({
  formValues: getFormValues("tip")(state),
  tips: state.tips.tips,
  currentTip: state.tips.currentTip,
})

export default connect(mapStateToProps, mapActionsToProps)(TipForm)
