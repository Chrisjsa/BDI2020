import React, { useState, useEffect } from "react"

import { Form, Col, Button } from "react-bootstrap"

import { connect } from "react-redux"

import {
  setCurrentNotaria,
  updateNotaria,
  readNotarias,
  crearNotaria,
  eleminarNotaria,
} from "../../state/notaria/notariaActions"

import {
  leerEstado,
  leerMunicipio,
  leerParroquia,
} from "../../state/lugar/lugarActions"

import { setAlert } from "../../state/alert/alertActions"

import LugarFields from "../lugares/LugarFields"

// Inicio del componente
const NotariaForm = ({
  currentNotaria,
  setCurrentNotaria,
  updateNotaria,
  readNotarias,
  crearNotaria,
  eleminarNotaria,
  lugares,
  setAlert,
}) => {
  const initialState = {
    nombre: "",
    notario: "",
    telefono: "",
    latitud: "",
    longitud: "",
  }

  const [notaria, setNotaria] = useState(initialState)

  const isNotariaEmpty = Object.values(notaria).some(value => value === "")

  useEffect(() => {
    if (!currentNotaria) setNotaria(initialState)
    else setNotaria({ ...notaria, ...currentNotaria })

    // eslint-disable-next-line
  }, [currentNotaria])

  const { nombre, notario, telefono, latitud, longitud } = notaria

  const onChange = event => {
    setNotaria({
      ...notaria,
      estado: lugares.currentEstado,
      municipio: lugares.currentMunicipio,
      parroquia: lugares.currentParroquia,
      [event.target.name]: event.target.value,
    })
  }

  const clearForm = () => {
    setCurrentNotaria(undefined)
    setNotaria(initialState)
    readNotarias()
  }

  const handleUpdate = () => {
    setAlert("Notaria actualizada", "success")
    updateNotaria(notaria)
    clearForm()
  }

  const handleCreate = () => {
    setAlert("Notaria agregada", "success")
    crearNotaria(notaria)
    clearForm()
  }

  const handleDelete = () => {
    setAlert("Notaria eliminada", "warning")
    eleminarNotaria(notaria)
    clearForm()
  }

  return (
    <>
      <h2>Insertar notaria</h2>
      <Form>
        <LugarFields currentData={currentNotaria} />

        <Form.Row>
          <Form.Group as={Col}>
            <Form.Label>Nombre notaria</Form.Label>
            <Form.Control
              type="text"
              placeholder="Nombre notaria"
              name="nombre"
              value={nombre}
              onChange={onChange}
            />
          </Form.Group>

          <Form.Group as={Col}>
            <Form.Label>Nombre notario</Form.Label>
            <Form.Control
              type="text"
              placeholder="Nombre notario"
              name="notario"
              value={notario}
              onChange={onChange}
            />
          </Form.Group>

          <Form.Group as={Col}>
            <Form.Label>Teléfono</Form.Label>
            <Form.Control
              type="text"
              placeholder="Teléfono"
              name="telefono"
              value={telefono}
              onChange={onChange}
              disabled={currentNotaria}
            />
          </Form.Group>
        </Form.Row>

        <Form.Row>
          <Form.Group as={Col}>
            <Form.Label>Latitud</Form.Label>
            <Form.Control
              type="text"
              placeholder="Latitud"
              name="latitud"
              value={latitud}
              onChange={onChange}
              disabled={currentNotaria}
            />
          </Form.Group>

          <Form.Group as={Col}>
            <Form.Label>Longitud</Form.Label>
            <Form.Control
              type="text"
              placeholder="Longitud"
              name="longitud"
              value={longitud}
              onChange={onChange}
              disabled={currentNotaria}
            />
          </Form.Group>
        </Form.Row>

        <div className="text-center">
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
        </div>
      </Form>
    </>
  )
}

const mapStateToProps = state => ({
  currentNotaria: state.notarias.currentNotaria,
  lugares: state.lugares,
})

export default connect(mapStateToProps, {
  setCurrentNotaria,
  updateNotaria,
  readNotarias,
  leerEstado,
  leerMunicipio,
  leerParroquia,
  crearNotaria,
  eleminarNotaria,
  setAlert,
})(NotariaForm)
