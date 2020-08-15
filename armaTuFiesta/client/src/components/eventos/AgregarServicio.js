import React, { useEffect, useState } from "react"

import { connect } from "react-redux"

import { Button, ListGroup, Row, Col, Form } from "react-bootstrap"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"
import {
  leerServicios,
  insertarCita,
  leerCitasUsuario,
} from "../../state/cita/citaActions"

import {
  leerProductos,
  leerServicio,
} from "../../state/producto/productoActions"

import { cambiarModo } from "../../state/evento/eventoActions"

import Icon from "../layout/Icon"
import Hero from "../layout/Hero"
import Loading from "../layout/Loading"

import { setAlert } from "../../state/alert/alertActions"

import { formatDate } from "../../utils/"
const AgregarServicio = ({
  cambiarModo,
  user,
  setAlert,
  insertarCita,
  leerServicios,
  serviciosCita,
  citasUsuario,
  loading,
  leerCitasUsuario,
  leerProductos,
  leerServicio,
  productosDisponibles,
  serviciosDisponibles,
}) => {
  const [currentServicio, setCurrentServicio] = useState(undefined)
  const [fecha, setFecha] = useState(new Date())
  const [agregada, setAgregada] = useState(false)

  useEffect(() => {
    leerServicios()
    leerProductos()
  }, [])

  const onClick = e => {
    insertarCita({
      fecha: formatDate(fecha),
      id_servicio: currentServicio.id_servicio,
      id_usuario: user.id_usuario,
    })

    setAgregada(true)
    setAlert("Cita agregada satisfactoriamente", "success")
    leerCitasUsuario(user)

    setTimeout(() => {
      setAgregada(false)
      setCurrentServicio(undefined)
    }, 1000)
  }

  if (loading) return <Loading />

  return (
    <>
      <Button
        variant="outline-primary"
        onClick={e => cambiarModo("servicio")}
        variant="link"
      >
        Regresar
      </Button>
      <Row>
        <Col>
          {serviciosDisponibles.length > 0 && (
            <div className="scrollable" style={{ maxHeight: "50vh" }}>
              <h2>Servicios</h2>
              <ListGroup>
                {serviciosDisponibles.map(s => (
                  <ListGroup.Item>
                    <div>{s.nombre_servicio}</div>
                    <div>
                      <Icon type={s.categoria} /> {s.categoria}
                    </div>
                  </ListGroup.Item>
                ))}
              </ListGroup>
            </div>
          )}
        </Col>

        <Col>
          {productosDisponibles.length > 0 && (
            <div className="scrollable" style={{ maxHeight: "50vh" }}>
              <h2>Productos</h2>
              <ListGroup>
                {productosDisponibles.map(p => (
                  <ListGroup.Item>
                    <div>{p.nombre}</div>
                    <div>Descripcion: {p.descripcion}</div>
                    <div>Precio: {p.precio}</div>
                  </ListGroup.Item>
                ))}
              </ListGroup>
            </div>
          )}
        </Col>
      </Row>
    </>
  )
}

const mapActionsToProps = {
  leerServicios,
  insertarCita,
  cambiarModo,
  leerCitasUsuario,
  setAlert,
  leerProductos,
  leerServicios,
}

const mapStateToProps = state => ({
  serviciosCita: state.cita.serviciosCita,
  user: state.auth.user,
  citasUsuario: state.cita.citasUsuario,
  loading: state.producto.loading,
  productosDisponibles: state.producto.productosDisponibles,
  serviciosDisponibles: state.producto.serviciosDisponibles,
})

export default connect(mapStateToProps, mapActionsToProps)(AgregarServicio)
