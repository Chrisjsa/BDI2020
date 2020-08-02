import React, { useState, useEffect } from "react"

import { Form, Col, Button } from "react-bootstrap"

import { connect } from "react-redux"
import {
  setCurrentNotaria,
  updateNotaria,
  readNotarias,
} from "../../state/notarias/notariaActions"

const NotariaForm = ({
  currentNotaria,
  setCurrentNotaria,
  updateNotaria,
  readNotarias,
}) => {
  const initialState = {
    estado: "",
    municipio: "",
    parroquia: "",
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

  const {
    estado,
    municipio,
    parroquia,
    nombre,
    notario,
    telefono,
    latitud,
    longitud,
  } = notaria

  const onChange = event => {
    setNotaria({
      ...notaria,
      [event.target.name]: event.target.value,
    })
  }

  const handleUpdate = () => {
    const { id_locacion, nombre, tipo, notario, latitud, longitud } = notaria
    const data = { id_locacion, nombre, tipo, notario, latitud, longitud }
    console.table(notaria)
    updateNotaria(data)
    setCurrentNotaria(undefined)
    setNotaria(initialState)
    readNotarias()
  }

  return (
    <>
      <h2>Insertar notaria</h2>
      <Form>
        <Form.Row>
          <Form.Group as={Col}>
            <Form.Label>Estado</Form.Label>
            <Form.Control
              as="select"
              defaultValue="Seleccionar..."
              name="estado"
              value={estado}
              onChange={onChange}
              disabled={currentNotaria}
            >
              <option>Seleccionar...</option>
              <option value="Estado">Soltero</option>
            </Form.Control>
          </Form.Group>

          <Form.Group as={Col}>
            <Form.Label>Municipio</Form.Label>
            <Form.Control
              as="select"
              defaultValue="Seleccionar..."
              name="municipio"
              value={municipio}
              onChange={onChange}
              disabled={currentNotaria}
            >
              <option>Seleccionar...</option>
              <option value="Municipio">Soltero</option>
            </Form.Control>
          </Form.Group>

          <Form.Group as={Col}>
            <Form.Label>Parroquia</Form.Label>
            <Form.Control
              as="select"
              defaultValue="Seleccionar..."
              name="parroquia"
              value={parroquia}
              onChange={onChange}
              disabled={currentNotaria}
            >
              <option>Seleccionar...</option>
              <option value="Parroquia">Soltero</option>
            </Form.Control>
          </Form.Group>
        </Form.Row>

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
              <Button onClick={handleUpdate} variant="outline-danger">
                Eliminar notaria
              </Button>
            </>
          ) : (
            <Button disabled={isNotariaEmpty}>Agregar notaria</Button>
          )}
        </div>
      </Form>
    </>
  )
}

const mapStateToProps = state => ({
  currentNotaria: state.notarias.currentNotaria,
})

export default connect(mapStateToProps, {
  setCurrentNotaria,
  updateNotaria,
  readNotarias,
})(NotariaForm)
