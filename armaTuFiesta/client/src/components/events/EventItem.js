import React from "react"
import { Link } from "react-router-dom"
import Moment from "react-moment"
import _ from "underscore"

import Indicator from "../layout/Indicator"
import Icon from "../layout/Icon"
import { Card, Col } from "react-bootstrap"
import { BsPersonFill } from "react-icons/bs"

import { filterById, arrayOfValues } from "../../utils"

import { connect } from "react-redux"
import { setCurrentEvent } from "../../state/eventos/eventoActions"

const EventItem = ({ key, event, services, setCurrentEvent }) => {
  const onClick = () => {
    setCurrentEvent(event.id_evento)
  }

  const {
    id_evento,
    nombre,
    fuente,
    fecha_realizacion,
    cantidad_invitados,
  } = event

  const thisEventServices = _.uniq(
    arrayOfValues(filterById(services, event, "id_evento"), "categoria")
  )

  return (
    <Card key={key}>
      <Card.Img variant="top" src={fuente} />
      <Card.Body>
        <Card.Title onClick={onClick} as={Link} to={`/events/${id_evento}`}>
          {nombre}
        </Card.Title>
        <Card.Text>
          <Col>
            <Indicator component={BsPersonFill} text={cantidad_invitados} />
            <div className="flex">
              {thisEventServices.map(categoria => (
                <Icon type={categoria}></Icon>
              ))}
            </div>
          </Col>
        </Card.Text>
      </Card.Body>
      <Card.Footer>
        <small className="text-muted">
          <Moment format={"DD/MM/YY"} date={fecha_realizacion} />
        </small>
      </Card.Footer>
    </Card>
  )
}

export default connect(state => ({}), { setCurrentEvent })(EventItem)
