import React from "react"
import Cards from "react-credit-cards"
import "react-credit-cards/es/styles-compiled.css"

import { Card } from "react-bootstrap"

const Metodos = () => {
  return (
    <div>
      <Cards
        number={"11112222333344445555"}
        name={"hola1"}
        expiry={"10/10"}
        cvc={123}
      />
      <Cards
        number={"11112222333344445555"}
        name={"hola2"}
        expiry={"10/10"}
        cvc={123}
      />
      <Cards
        number={"11112222333344445555"}
        name={"hola13"}
        expiry={"10/10"}
        cvc={432}
      />
    </div>
  )
}

export default Metodos
