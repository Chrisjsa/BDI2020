import React, { useState } from "react"

import { Button, Modal, Form, Col } from "react-bootstrap"

const NuevoEventoModal = () => {
  const [show, setShow] = useState(false)
  const handleClose = () => setShow(false)
  const handleShow = () => setShow(true)
  const [tipoFiesta, setTipoFiesta] = useState("")

  const packData = () => ({
    tipoFiesta,
  })
  return (
    <>
      <Button variant="primary" onClick={handleShow}>
        Agregar evento
      </Button>

      <Modal show={show} onHide={handleClose} centered>
        <Modal.Header closeButton>
          <Modal.Title>Modal heading</Modal.Title>
        </Modal.Header>
        <Modal.Body>Woohoo, you're reading this text in a modal!</Modal.Body>
        <Form.Group as={Col}>
          <Form.Label>Tipo de Fiesta</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="tipoFiesta"
            value={tipoFiesta}
            onChange={(e) => setTipoFiesta(e.target.value)}
          >
            <option>Seleccionar...</option>
            <option value="Soltero">Soltero</option>
            <option value="Casado">Casado</option>
            <option value="Divorciado">Divorciado</option>
            <option value="Viudo">Viudo</option>
          </Form.Control>
        </Form.Group>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleClose}>
            Close
          </Button>
          <Button variant="primary" onClick={handleClose}>
            Save Changes
          </Button>
        </Modal.Footer>
      </Modal>
    </>
  )
}

export default NuevoEventoModal
