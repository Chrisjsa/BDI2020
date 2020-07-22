import React from "react"

import { Card, ListGroup } from "react-bootstrap"

import Icon from "../layout/Icon"
import ServiceItem from "./ServiceItem"

const CategoryCard = ({ category, services }) => {
  const thisCategoryServices = services.filter(
    service => service.categoria === category
  )

  return (
    <Card>
      <Card.Header>
        <h5>
          <Icon type={category} /> {category}
        </h5>
      </Card.Header>
      <ListGroup variant="flush">
        {thisCategoryServices.map(service => (
          <ServiceItem service={service} />
        ))}
      </ListGroup>
    </Card>
  )
}

export default CategoryCard
