import React, { useState, useEffect } from "react"

import { Form, Col, Button } from "react-bootstrap"

import { READ_NOTARIAS } from "../../types/notariaTypes"

import { connect } from "react-redux"
import { setCurrentNotaria } from "../../actions/notariaActions"

const NotariaForm = ({ currentNotaria, setCurrentNotaria }) => {
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

  const onClick = () => {
    console.table(notaria)
    setCurrentNotaria(undefined)
    setNotaria(initialState)
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
              <option value="Soltero">Soltero</option>
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
              <option value="Soltero">Soltero</option>
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
              <option value="Soltero">Soltero</option>
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
              <Button className="mr-3" onClick={onClick}>
                Actualizar notaria
              </Button>
              <Button variant="outline-danger">Eliminar notaria</Button>
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

export default connect(mapStateToProps, { setCurrentNotaria })(NotariaForm)
