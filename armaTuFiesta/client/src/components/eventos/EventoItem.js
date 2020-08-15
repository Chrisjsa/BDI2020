import React from "react"

import { Card } from "react-bootstrap"

import { withRouter } from "react-router-dom"

import { connect } from "react-redux"

import moment from "moment"

import { setCurrentEvento } from "../../state/evento/eventoActions"

const EventoItem = ({ evento, history, setCurrentEvento }) => {
  const {
    id_evento,
    descripcion,
    fecha_realizacion,
    salon_fiesta,
    tema_evento,
  } = evento

  const onClick = e => {
    setCurrentEvento(evento)
    history.push("/evento")
  }

  return (
    <Card>
      <Card.Body>
        <Card.Title className="clickable" onClick={onClick}>
          {salon_fiesta}
        </Card.Title>
        <Card.Text>
          <div>{descripcion}</div>
          <div>Tema: {tema_evento}</div>
        </Card.Text>
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
