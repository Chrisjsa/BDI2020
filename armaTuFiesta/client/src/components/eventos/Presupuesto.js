import React, { useState } from "react"

import { connect } from "react-redux"

import { mostrarPresupuesto } from "../../state/evento/eventoActions"

import { ButtonGroup, Button } from "react-bootstrap"

const Presupuesto = ({ mostrarPresupuesto }) => {
  const [metodo, setMetodo] = useState("tarjeta")

  const ButtonMetodo = ({ formaDePago, children }) => (
    <Button
      variant={formaDePago === metodo ? "primary" : "outline-primary"}
      onClick={e => setMetodo(formaDePago)}
    >
      {children}
    </Button>
  )

  return (
    <div>
      <Button
        variant="outline-primary"
        onClick={e => mostrarPresupuesto(false)}
        variant="link"
      >
        Regresar
      </Button>
      <div>
        <code>Aquí va el presupuesto</code>
      </div>
      <div>
        <code>Aquí va la lista con servicios/productos y es scrollable!</code>
      </div>

      <ButtonGroup aria-label="Basic example">
        <ButtonMetodo formaDePago="tarjeta">Tarjeta</ButtonMetodo>
        <ButtonMetodo formaDePago="transferencia">Transferencia</ButtonMetodo>
      </ButtonGroup>

      {metodo === "tarjeta" ? (
        <div>
          <code>Componente de pago con tarjeta (formulario + tarjeta)</code>
        </div>
      ) : (
        <div>
          <code>Componente de pago con transferencia (formulario)</code>
        </div>
      )}
    </div>
  )
}

const mapActionsToProps = { mostrarPresupuesto }

const mapStateToProps = state => ({})

export default connect(mapStateToProps, mapActionsToProps)(Presupuesto)
