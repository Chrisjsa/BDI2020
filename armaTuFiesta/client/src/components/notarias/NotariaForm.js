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

// Inicio del componente
const NotariaForm = ({
  currentNotaria,
  setCurrentNotaria,
  updateNotaria,
  readNotarias,
  crearNotaria,
  lugares,
  leerEstado,
  leerMunicipio,
  leerParroquia,
  eleminarNotaria,
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

  const { estados, municipios, parroquias } = lugares

  const [notaria, setNotaria] = useState(initialState)

  const isNotariaEmpty = Object.values(notaria).some(value => value === "")

  useEffect(() => {
    leerEstado()

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

  useEffect(() => {
    console.log(estado)
    leerMunicipio(estado) // estado = id_estado
  }, [estado])

  useEffect(() => {
    console.log(municipio)
    leerParroquia(municipio) // municipio = id_municipio
  }, [municipio])

  const onChange = event => {
    setNotaria({
      ...notaria,
      [event.target.name]: event.target.value,
    })
  }

  const handleUpdate = () => {
    updateNotaria(notaria)
    setCurrentNotaria(undefined)
    setNotaria(initialState)
    readNotarias()
  }

  const handleCreate = () => {
    crearNotaria(notaria)
    setCurrentNotaria(undefined)
    setNotaria(initialState)
    readNotarias()
  }

  const handleDelete = () => {
    eleminarNotaria(notaria)
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
              {estados.length >= 0 &&
                estados.map(estado => (
                  <option key={estado.id_estado} value={estado.id_estado}>
                    {estado.nombre}
                  </option>
                ))}
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
              {municipios.length >= 0 &&
                municipios.map(municipio => (
                  <option
                    key={municipio.id_municipio}
                    value={municipio.id_municipio}
                  >
                    {municipio.nombre}
                  </option>
                ))}
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
              {parroquias.length >= 0 &&
                parroquias.map(parroquia => (
                  <option
                    key={parroquia.id_parroquia}
                    value={parroquia.id_parroquia}
                  >
                    {parroquia.nombre}
                  </option>
                ))}
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
})(NotariaForm)
