import React, { useState } from "react"

import ReporteItem from "./ReporteItem"

import { Form, Col } from "react-bootstrap"

import { connect } from "react-redux"

import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

// import { obtenterReporte1 } from "../../state/reporte/reporteActions"

const Reportes = () => {
  const [fechaInicial, setFechaInicial] = useState(new Date())
  const [fechaFinal, setFechaFinal] = useState(new Date())

  return (
    <>
      {/* Fechas */}
      <Form>
        {/* Fecha inicial */}
        <Form.Group as={Col}>
          <p style={{ marginBottom: "0.5rem" }}>Fecha de nacimiento</p>
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
          <p style={{ marginBottom: "0.5rem" }}>Fecha de nacimiento</p>
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
      </Form>

      {/* Reportes */}
      <ReporteItem
        title="Reporte 1"
        subtitle="Reporte 1"
        handler={() => alert(`hello reporte`)}
        fechas={{ fechaInicial, fechaFinal }}
      >
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum
        quisquam cum alias sunt ipsam velit suscipit nobis doloremque nulla est
        non esse enim, accusamus, eos harum id! Vitae, assumenda nulla.
      </ReporteItem>
    </>
  )
}

const mapStateToProps = state => ({})

const mapStateToActions = {}

export default connect(mapStateToProps, mapStateToActions)(Reportes)
