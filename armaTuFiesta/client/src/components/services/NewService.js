import React, { useState } from "react"

import useForm from "../../hooks/useForm"

import { connect } from "react-redux"

import { Container, ListGroup, Row, Col } from "react-bootstrap"

import Icon from "../layout/Icon"

const NewService = ({ categories }) => {
  const [selectedCategory, setSelectedCategory] = useState(undefined)

  return (
    <Container>
      <h1 className="display-4 mb-5">Agregar servicio</h1>
      <Row>
        <Col xs={3}>
          <h2>Categorías</h2>
          Elige una categoría
          <ListGroup className="scrollable mt-3">
            {categories.map(category => (
              <>
                <ListGroup.Item
                  action
                  onClick={() => setSelectedCategory(category)}
                  active={selectedCategory === category}
                >
                  {" "}
                  <Icon type={category} size="1.25rem" className="mr-1" />{" "}
                  {category}
                </ListGroup.Item>
              </>
            ))}
          </ListGroup>
        </Col>
        <Col>
          <h2>Col 2</h2>
        </Col>
        <Col>
          <h2>Col 3</h2>
        </Col>
      </Row>
    </Container>
  )
}

const mapStateToProps = state => ({
  categories: state.events.categories,
})

export default connect(mapStateToProps)(NewService)
