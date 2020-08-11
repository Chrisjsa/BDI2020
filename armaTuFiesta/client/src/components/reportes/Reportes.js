import React from "react"

import ReporteItem from "./ReporteItem"

import { Container } from "react-bootstrap"

const Reportes = () => {
  const nums = [1, 2, 3, 4, 5]
  return (
    <>
      {nums.map(num => (
        <ReporteItem
          title={`Yada ${num}`}
          subtitle={`Reporte ${num}`}
          handler={() => alert(`hello ${num}`)}
        >
          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum
          quisquam cum alias sunt ipsam velit suscipit nobis doloremque nulla
          est non esse enim, accusamus, eos harum id! Vitae, assumenda nulla.
        </ReporteItem>
      ))}
    </>
  )
}

export default Reportes
