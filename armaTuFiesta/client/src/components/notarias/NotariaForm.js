import React, { useState } from "react"

import { Form, Col, Button } from "react-bootstrap"
import { READ_NOTARIAS } from "../../types/notariaTypes"

const NotariaForm = () => {
  const [notaria, setNotaria] = useState({
    estado: "",
    municipio: "",
    parroquia: "",
    nombre: "",
    encargado: "",
    telefono: "",
    latitud: "",
    longitud: "",
  })

  const {
    estado,
    municipio,
    parroquia,
    nombre,
    encargado,
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

  const onSubmit = e => {
    e.preventDefault()
    console.table(notaria)
  }

  return (
    <>
      <h2>Insertar notaria</h2>
      <Form onSubmit={onSubmit}>
        <Form.Row>
          <Form.Group as={Col}>
            <Form.Label>Estado civil</Form.Label>
            <Form.Control
              as="select"
              defaultValue="Seleccionar..."
              name="estado"
              value={estado}
              onChange={onChange}
            >
              <option>Seleccionar...</option>
              <option value="Soltero">Soltero</option>
            </Form.Control>
          </Form.Group>

          <Form.Group as={Col}>
            <Form.Label>Estado civil</Form.Label>
            <Form.Control
              as="select"
              defaultValue="Seleccionar..."
              name="municipio"
              value={municipio}
              onChange={onChange}
            >
              <option>Seleccionar...</option>
              <option value="Soltero">Soltero</option>
            </Form.Control>
          </Form.Group>

          <Form.Group as={Col}>
            <Form.Label>Estado civil</Form.Label>
            <Form.Control
              as="select"
              defaultValue="Seleccionar..."
              name="parroquia"
              value={parroquia}
              onChange={onChange}
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
            <Form.Label>Nombre encargado</Form.Label>
            <Form.Control
              type="text"
              placeholder="Nombre encargado"
              name="encargado"
              value={encargado}
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
            />
          </Form.Group>
        </Form.Row>

        <div className="text-center">
          <Button>Agregar notaria</Button>
        </div>
      </Form>
    </>
  )
}

export default NotariaForm
