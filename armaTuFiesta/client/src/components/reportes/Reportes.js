import React, { useState } from "react"

import ReporteItem from "./ReporteItem"

import { Form, Col } from "react-bootstrap"

import { connect } from "react-redux"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

const Reportes = () => {
  const [fechaInicial, setFechaInicial] = useState(new Date())
  const [fechaFinal, setFechaFinal] = useState(new Date())

  return (
    <>
      {/* Fechas */}
      <h2>Elección del período</h2>
      <Form>
        <Form.Row>
          {/* Fecha inicial */}
          <Form.Group as={Col}>
            <p style={{ marginBottom: "0.5rem" }}>Desde</p>
            <DatePicker
              selected={fechaInicial}
              onChange={date => setFechaInicial(date)}
              peekNextMonth
              showMonthDropdown
              showYearDropdown
              className="form-control"
              dropdownMode="select"
            />
          </Form.Group>

          {/* Fecha final */}
          <Form.Group as={Col}>
            <p style={{ marginBottom: "0.5rem" }}>Hasta</p>
            <DatePicker
              selected={fechaFinal}
              onChange={date => setFechaFinal(date)}
              peekNextMonth
              showMonthDropdown
              showYearDropdown
              className="form-control"
              dropdownMode="select"
            />
          </Form.Group>
        </Form.Row>
      </Form>

      {/* Reportes */}
      <h2>Reportes</h2>

      <ReporteItem number="1" fechas={{ fechaInicial, fechaFinal }}>
        Total de fiestas por mes
      </ReporteItem>
      <ReporteItem number="2" fechas={{ fechaInicial, fechaFinal }}>
        Detalle de todas las contrataciones a terceros por período de tiempo,
        indicando fecha y costo
      </ReporteItem>
      <ReporteItem number="3" fechas={{ fechaInicial, fechaFinal }}>
        Total de ingresos y egresos por periodo de tiempo
      </ReporteItem>
      <ReporteItem number="4" fechas={{ fechaInicial, fechaFinal }}>
        Top 10 de servicios tercerizados contratados por periodo de tiempo.
      </ReporteItem>
    </>
  )
}

export default Reportes
