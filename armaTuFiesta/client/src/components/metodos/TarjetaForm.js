import React from "react"
import Cards from "react-credit-cards"
import "react-credit-cards/es/styles-compiled.css"

import { Card } from "react-bootstrap"

const TarjetaForm = () => {
  const [state, setState] = React.useState({
    number: "",
    name: "",
    expiry: "",
    cvc: "",
    focus: "",
  })

  const handleInputChange = e => {
    setState({
      ...state,
      [e.target.name]: e.target.value,
    })
  }

  const handleFocusChange = e => {
    setState({
      ...state,
      focus: e.target.name,
    })
  }

  return (
    <Card>
      <Card.Body>
        <Card.Title>
          <h2>Nuevo método de pago</h2>
        </Card.Title>
        <Card.Text>
          <Cards
            number={state.number}
            name={state.name}
            expiry={state.expiry}
            cvc={state.cvc}
            focused={state.focus}
          />
          <form>
            <div className="form-group">
              <label htmlFor="number">Número de la tarjeta</label>
              <input
                type="text"
                name="number"
                id="number"
                maxLength="16"
                className="form-control"
                onChange={handleInputChange}
                onFocus={handleFocusChange}
              />
            </div>
            <div className="form-group">
              <label htmlFor="name">Nombre</label>
              <input
                type="text"
                name="name"
                id="name"
                maxLength="30"
                className="form-control"
                onChange={handleInputChange}
                onFocus={handleFocusChange}
              />
            </div>
            <div className="form-row">
              <div className="form-group col-md-6">
                <label htmlFor="expiry">Fecha de expiración</label>
                <input
                  type="text"
                  name="expiry"
                  id="expiry"
                  maxLength="4"
                  className="form-control"
                  onChange={handleInputChange}
                  onFocus={handleFocusChange}
                />
              </div>
              <div className="form-group col-md-6">
                <label htmlFor="cvc">CVC</label>
                <input
                  type="text"
                  name="cvc"
                  id="cvc"
                  maxLength="4"
                  className="form-control"
                  onChange={handleInputChange}
                  onFocus={handleFocusChange}
                />
              </div>
            </div>

            <button type="button" className="btn btn-success btn-block">
              Agregar
            </button>
          </form>
        </Card.Text>
      </Card.Body>
    </Card>
  )
}

export default TarjetaForm
