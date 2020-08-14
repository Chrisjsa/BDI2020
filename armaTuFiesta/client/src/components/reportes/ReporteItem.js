import React from "react"

import { Card, Button, Row, Col } from "react-bootstrap"

import { BsFileText } from "react-icons/bs"

import moment from "moment"
import axios from "axios"

const ReporteItem = ({ number, children, fechas }) => {
  const obtenerReporte = async e => {
    const numero = e.target.value
    const fechaInicial = moment(fechas.fechaInicial).format("YYYY-MM-DD")
    const fechaFinal = moment(fechas.fechaFinal).format("YYYY-MM-DD")

    const config = {
      responseType: "blob",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/pdf",
      },
    }
    try {
      const res = await axios.get(
        `/api/reportes/${numero}?fechaInicial=${fechaInicial}&fechaFinal=${fechaFinal}`,
        config
      )
      const url = window.URL.createObjectURL(
        new Blob([res.data], { type: "application/pdf" })
      )

      window.open(url)
      const link = document.createElement("a")
      link.href = url
      link.setAttribute("download", `Reporte ${numero}.pdf`)
      document.body.appendChild(link)
      link.click()
    } catch (error) {
      console.log(error.message)
    }
  }

  return (
    <Card className="my-3">
      <Card.Body>
        <Row className="align-items-center">
          <Col xs={1}>
            <BsFileText size="3rem" />
          </Col>
          <Col>
            <Card.Title>{`Reporte ${number}`}</Card.Title>
            <Card.Text>{children}</Card.Text>
            <Button value={number} onClick={obtenerReporte}>
              Descargar
            </Button>
          </Col>
        </Row>
      </Card.Body>
    </Card>
  )
}

export default ReporteItem
