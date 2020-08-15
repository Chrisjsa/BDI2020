import React, { useState, useEffect } from "react"
import { connect } from "react-redux"
import { Button, Modal, Form, Col } from "react-bootstrap"
import LugarFields from "../lugares/LugarFields"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

import { formatDate } from "../../utils"

import {
  crearEventos,
  leerEventos,
  leerSalones,
  leerEventosPorUsuario,
} from "../../state/evento/eventoActions"

const NuevoEventoModal = ({
  leerEventos,
  tiposEvento,
  salones,
  currentMunicipio,
  leerSalones,
  user,
  crearEventos,
  leerEventosPorUsuario,
}) => {
  const handleClose = () => setShow(false)
  const handleShow = () => setShow(true)
  const [show, setShow] = useState(false)
  const [tipoFiesta, setTipoFiesta] = useState("")
  const [fecha, setFecha] = useState(new Date())
  const [numInvitados, setNumInvitados] = useState(0)
  const [thisSalones, setThisSalones] = useState([])
  const [salon, setSalon] = useState("")

  useEffect(() => {
    leerEventos()
    leerSalones()
  }, [show])

  useEffect(() => {
    setThisSalones(
      salones.filter(salon => salon.fk_lugar === parseInt(currentMunicipio))
    )

    console.log(thisSalones)
  }, [currentMunicipio])

  const onClick = e => {
    //[fecha_actual, fecha_realizacion, id_evento, id_usuario, id_locacion, num_invitados]
    const data = {
      fecha_actual: formatDate(new Date()),
      fecha_realizacion: formatDate(fecha),
      id_evento: 1,
      id_usuario: user.id_usuario,
      id_locacion: salon,
      num_invitados: numInvitados,
    }

    handleClose()
    leerEventosPorUsuario()
    crearEventos(data)
  }

  return (
    <>
      <Button variant="primary" className="my-3" size="lg" onClick={handleShow}>
        Agregar evento
      </Button>

      <Modal show={show} onHide={handleClose} centered>
        <Modal.Header closeButton>
          <Modal.Title>Nuevo evento</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <Form>
            <Form.Row>
              <Form.Group as={Col}>
                <Form.Label>Tipo de Fiesta</Form.Label>
                <Form.Control
                  as="select"
                  defaultValue="Seleccionar..."
                  name="tipoFiesta"
                  value={tipoFiesta}
                  onChange={e => setTipoFiesta(e.target.value)}
                >
                  <option>Seleccionar...</option>
                  {tiposEvento.map(tipo => (
                    <option value={tipo.id_evento}>{tipo.nombre}</option>
                  ))}
                </Form.Control>
              </Form.Group>
            </Form.Row>

            <LugarFields filter={["estado", "municipio"]} />

            <Form.Row>
              <Form.Group as={Col}>
                <Form.Label>Restaurante</Form.Label>
                <Form.Control
                  as="select"
                  defaultValue="Seleccionar..."
                  name="salon"
                  value={salon}
                  onChange={e => setSalon(e.target.value)}
                >
                  <option>Seleccionar...</option>
                  {thisSalones.map(salon => (
                    <option value={salon.id_locacion}>{salon.nombre}</option>
                  ))}
                </Form.Control>
              </Form.Group>
            </Form.Row>

            <Form.Row>
              <Form.Group as={Col}>
                <Form.Label>Número de Invitados</Form.Label>
                <Form.Control
                  type="number"
                  placeholder="Número de invitados"
                  value={numInvitados}
                  name="numInvitados"
                  onChange={e => setNumInvitados(e.target.value)}
                />
              </Form.Group>

              <Form.Group as={Col}>
                <p style={{ marginBottom: "0.5rem" }}>Fecha de realizacion</p>
                <DatePicker
                  selected={fecha}
                  onChange={date => setFecha(date)}
                  peekNextMonth
                  showMonthDropdown
                  showYearDropdown
                  className="form-control"
                  dropdownMode="select"
                />
              </Form.Group>
            </Form.Row>
          </Form>
        </Modal.Body>

        <Modal.Footer>
          <Button variant="secondary" onClick={handleClose}>
            Cerrar
          </Button>
          <Button variant="primary" onClick={onClick}>
            Agregar evento
          </Button>
        </Modal.Footer>
      </Modal>
    </>
  )
}

const mapActionsToProps = {
  leerEventos,
  leerSalones,
  crearEventos,
  leerEventosPorUsuario,
}

const mapStateToProps = state => ({
  tiposEvento: state.eventos.tiposEvento,
  salones: state.eventos.salones,
  currentMunicipio: state.lugares.currentMunicipio,
  user: state.auth.user,
})

export default connect(mapStateToProps, mapActionsToProps)(NuevoEventoModal)
