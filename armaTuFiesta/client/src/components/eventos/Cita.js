import React, { useEffect, useState } from "react"

import { connect } from "react-redux"

import { Button, ListGroup, Row, Col, Form } from "react-bootstrap"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"
import { leerServicios, insertarCita } from "../../state/cita/citaActions"

import { cambiarModo } from "../../state/evento/eventoActions"

import Icon from "../layout/Icon"

import { formatDate } from "../../utils/"
const Cita = ({
  cambiarModo,
  user,
  insertarCita,
  leerServicios,
  serviciosCita,
}) => {
  const [currentServicio, setCurrentServicio] = useState(undefined)
  const [fecha, setFecha] = useState(new Date())
  const [agregada, setAgregada] = useState(false)

  useEffect(() => {
    leerServicios()
  }, [])

  const onClick = e => {
    insertarCita({
      fecha: formatDate(fecha),
      id_servicio: currentServicio.id_servicio,
      id_usuario: user.id_usuario,
    })

    setAgregada(true)

    setTimeout(() => {
      setAgregada(false)
      setCurrentServicio(undefined)
    }, 1000)
  }

  return (
    <div>
      <h2>Citas</h2>
      <Button
        variant="outline-primary"
        onClick={e => cambiarModo("servicio")}
        variant="link"
      >
        Regresar
      </Button>

      {serviciosCita.length > 0 && (
        <Row>
          <Col>
            <div className="scrollable" style={{ maxHeight: "50vh" }}>
              <ListGroup>
                {serviciosCita.map(servicio => (
                  <ListGroup.Item
                    action
                    onClick={e => setCurrentServicio(servicio)}
                  >
                    <>
                      <div>{servicio.nombre_servicio}</div>
                      <div>
                        <Icon type={servicio.categoria} /> {servicio.categoria}
                      </div>
                    </>
                  </ListGroup.Item>
                ))}
              </ListGroup>
            </div>
          </Col>
          {currentServicio && (
            <Col>
              <>
                <h2>{currentServicio.nombre_servicio}</h2>{" "}
                <h5 className="text-muted">
                  <Icon type={currentServicio.categoria} />{" "}
                  {currentServicio.categoria}
                </h5>
                <Form.Group as={Col}>
                  <p style={{ marginBottom: "0.5rem" }}>Fecha de la cita</p>
                  <DatePicker
                    selected={fecha}
                    onChange={date => setFecha(date)}
                    peekNextMonth
                    showTimeSelect
                    showMonthDropdown
                    showYearDropdown
                    className="form-control"
                    dropdownMode="select"
                  />
                </Form.Group>
                <Button
                  block
                  variant={agregada ? "success" : "primary"}
                  disabled={agregada}
                  onClick={onClick}
                >
                  {agregada ? "¡Listo!" : "Agendar"}
                </Button>
              </>
            </Col>
          )}
        </Row>
      )}
    </div>
  )
}

const mapActionsToProps = { leerServicios, insertarCita, cambiarModo }

const mapStateToProps = state => ({
  serviciosCita: state.cita.serviciosCita,
  user: state.auth.user,
})

export default connect(mapStateToProps, mapActionsToProps)(Cita)
