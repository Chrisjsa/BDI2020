import React, { useState } from "react"
import { connect } from "react-redux"
import { Button, Modal, Form, Col } from "react-bootstrap"
import LugarFields from "../lugares/LugarFields"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

const NuevoEventoModal = () => {
  const [show, setShow] = useState(false)
  const handleClose = () => setShow(false)
  const handleShow = () => setShow(true)
  const [tipoFiesta, setTipoFiesta] = useState("")
  const [fecha, setFecha] = useState(new Date())

  return (
    <>
      <Button variant="primary" className="my-3" size="lg" onClick={handleShow}>
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
            <option value="Jefatura">Jefatura</option>
            <option value="Templo">Templo</option>
            <option value="Notaria">Notaria</option>
            <option value="Restaurante">Restaurante</option>
          </Form.Control>
        </Form.Group>
        <LugarFields />
        <Form.Group as={Col}>
          <Form.Label>Restaurante</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="tipoFiesta"
            value={tipoFiesta}
            onChange={(e) => setTipoFiesta(e.target.value)}
          >
            <option>Seleccionar...</option>
            <option value="Jefatura">Jefatura</option>
            <option value="Templo">Templo</option>
            <option value="Notaria">Notaria</option>
            <option value="Restaurante">Restaurante</option>
          </Form.Control>
        </Form.Group>
        <Form.Row>
          <div className="form-group">
            <label htmlFor="number">Número de Invitados</label>
            <input
              type="text"
              name="number"
              id="number"
              maxLength="4"
              className="form-control"
            />
          </div>
          <Form.Group as={Col}>
            <p style={{ marginBottom: "0.5rem" }}>Fecha de realizacion</p>
            <DatePicker
              selected={fecha}
              onChange={(date) => setFecha(date)}
              peekNextMonth
              showMonthDropdown
              showYearDropdown
              className="form-control"
              dropdownMode="select"
            />
          </Form.Group>
        </Form.Row>
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

const mapActionsToProps = {}

const mapStateToProps = (state) => ({})

export default connect(mapStateToProps, mapActionsToProps)(NuevoEventoModal)
