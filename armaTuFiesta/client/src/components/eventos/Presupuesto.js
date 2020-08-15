import React, { useState, useEffect } from "react"

import { connect } from "react-redux"

import {
  cambiarModo,
  consultarPresupuesto,
} from "../../state/evento/eventoActions"

import { ButtonGroup, Button, ListGroup, Row } from "react-bootstrap"

import { arrayOfValues } from "../../utils"

const Presupuesto = ({ cambiarModo, currentEvento, consultarPresupuesto }) => {
  useEffect(() => {
    consultarPresupuesto(currentEvento)
  }, [])

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
      <h2>Presupuesto</h2>
      <Button
        variant="outline-primary"
        onClick={e => cambiarModo("servicio")}
        variant="link"
      >
        Regresar
      </Button>

      {currentEvento.presupuesto && (
        <>
          <div className="scrollable" style={{ maxHeight: "60vh" }}>
            <ListGroup>
              {currentEvento.presupuesto.map(detalle => (
                <ListGroup.Item>
                  <div>{detalle["Servicio/Producto"]}</div>
                  <div>
                    {detalle.costo_unitario} x {detalle.cantidad} unidades ={" "}
                    {detalle.costo}
                  </div>
                  <div>
                    A cobrar: <strong>{detalle.a_cobrar}</strong>
                  </div>
                </ListGroup.Item>
              ))}
            </ListGroup>
          </div>

          <div className="lead my-4 text-center">
            Monto total a cobrar:{" "}
            {arrayOfValues(currentEvento.presupuesto, "a_cobrar").reduce(
              (acc, val) => acc + val
            )}
          </div>

          <div className="text-center">
            <ButtonGroup classLabel="my-4">
              <ButtonMetodo formaDePago="tarjeta">Tarjeta</ButtonMetodo>
              <ButtonMetodo formaDePago="transferencia">
                Transferencia
              </ButtonMetodo>
            </ButtonGroup>
          </div>
        </>
      )}

      {/* {metodo === "tarjeta" ? (
        <div>
          <code>Componente de pago con tarjeta (formulario + tarjeta)</code>
        </div>
      ) : (
        <div>
          <code>Componente de pago con transferencia (formulario)</code>
        </div>
      )} */}
    </div>
  )
}

const mapActionsToProps = { cambiarModo, consultarPresupuesto }

const mapStateToProps = state => ({
  currentEvento: state.eventos.currentEvento,
})

export default connect(mapStateToProps, mapActionsToProps)(Presupuesto)
