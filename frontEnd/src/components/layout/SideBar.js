import React from "react"
import { connect } from "react-redux"

import Icon from "../layout/Icon"

import _ from "underscore"

import { filterById, arrayOfValues } from "../../utils"

import Category from "../services/Category"

import { updateStatus } from "../../actions/eventActions"

import {
  Dropdown,
  Button,
  DropdownButton,
  Row,
  Col,
  ListGroup,
} from "react-bootstrap"

const SideBar = ({ event, services, updateStatus }) => {
  const thisEventServices = _.uniq(
    arrayOfValues(filterById(services, event, "id_evento"), "categoria")
  )

  const onClick = () => {
    updateStatus("home")
  }

  return (
    <div className="sidebar bg-light">
      <>
        <div className="mb-2">
          <DropdownButton
            key={1}
            drop={"right"}
            variant="primary"
            block
            title={` Agregar servicio `}
          >
            <Dropdown.Item eventKey="1">Action</Dropdown.Item>
            <Dropdown.Item eventKey="2">Another action</Dropdown.Item>
            <Dropdown.Item eventKey="3">Something else here</Dropdown.Item>
            <Dropdown.Divider />
            <Dropdown.Item eventKey="4">Separated link</Dropdown.Item>
          </DropdownButton>
        </div>
      </>
      <ListGroup variant="flush">
        <ListGroup.Item className="bg-light clickable" onClick={onClick}>
          <Row>
            <Col xs={1}>
              <Icon type={"home"} size={"1.5rem"} />
            </Col>
            <Col>{"home"}</Col>
          </Row>
        </ListGroup.Item>
        {thisEventServices.map(category => (
          <Category category={category} />
        ))}
      </ListGroup>
    </div>
  )
}

const mapStateToProps = state => ({
  services: state.events.services,
})

export default connect(mapStateToProps, { updateStatus })(SideBar)
