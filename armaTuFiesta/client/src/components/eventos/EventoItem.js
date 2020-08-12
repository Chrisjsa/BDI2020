import React from "react"

import { Card } from "react-bootstrap"

import { withRouter } from "react-router-dom"

import { connect } from "react-redux"

import moment from "moment"

import { setCurrentEvento } from "../../state/evento/eventoActions"

const EventoItem = ({ evento, history, setCurrentEvento }) => {
  const { nombre, descripcion, fecha_realizacion } = evento

  const onClick = e => {
    setCurrentEvento(evento)
    history.push("/evento")
  }

  return (
    <Card>
      <Card.Body>
        <Card.Title className="clickable" onClick={onClick}>
          {nombre}
        </Card.Title>
        <Card.Text>{descripcion}</Card.Text>
      </Card.Body>
      <Card.Footer>
        <small className="text-muted">
          {moment(fecha_realizacion).format("DD / MM / YYYY")}
        </small>
      </Card.Footer>
    </Card>
  )
}

const mapStateToActions = { setCurrentEvento }

const mapStateToProps = state => ({})

export default withRouter(
  connect(mapStateToProps, mapStateToActions)(EventoItem)
)
