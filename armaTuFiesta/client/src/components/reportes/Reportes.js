import React, { useState } from "react"

import ReporteItem from "./ReporteItem"

import { Form, Col } from "react-bootstrap"

import { connect } from "react-redux"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

import {
  obtenerReporte1,
  obtenerReporte2,
  obtenerReporte3,
  obtenerReporte4,
} from "../../state/reporte/reporteActions"

const Reportes = ({
  obtenerReporte1,
  obtenerReporte2,
  obtenerReporte3,
  obtenerReporte4,
}) => {
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
      <ReporteItem
        title="Reporte 1"
        handler={e => obtenerReporte1({ fechaInicial, fechaFinal })}
      >
        Total de fiestas por mes
      </ReporteItem>
      <ReporteItem
        title="Reporte 2"
        handler={e => obtenerReporte2({ fechaInicial, fechaFinal })}
      >
        Detalle de todas las contrataciones a terceros por período de tiempo,
        indicando fecha y costo
      </ReporteItem>
      <ReporteItem
        title="Reporte 3"
        handler={e => obtenerReporte3({ fechaInicial, fechaFinal })}
      >
        Total de ingresos y egresos por periodo de tiempo
      </ReporteItem>
      <ReporteItem
        title="Reporte 4"
        handler={e => obtenerReporte4({ fechaInicial, fechaFinal })}
      >
        Top 10 de servicios tercerizados contratados por periodo de tiempo.
      </ReporteItem>
    </>
  )
}

const mapStateToProps = state => ({})

const mapStateToActions = {
  obtenerReporte1,
  obtenerReporte2,
  obtenerReporte3,
  obtenerReporte4,
}

export default connect(mapStateToProps, mapStateToActions)(Reportes)
