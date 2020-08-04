import React, { useEffect } from "react"

import { Container, Row, Col } from "react-bootstrap"

import { connect } from "react-redux"

import { readNotarias } from "../../state/notaria/notariaActions"

import Loading from "../layout/Loading"

import Map from "../layout/Map"
import Table from "../layout/Table"
import Hero from "../layout/Hero"

const Crud = ({
  dataName,
  data,
  columns,
  loading,
  readFn,
  Form,
  Graphics,
  graphicsData,
  graphicsName,
  rest,
}) => {
  useEffect(() => {
    readFn()
    // eslint-disable-next-line
  }, [])

  return (
    <Container>
      <Hero firstLine="Administración" secondLine={dataName} />

      <Row>
        <Col>
          <Form />
        </Col>
        {Graphics && (
          <Col>
            {graphicsData && (
              <>
                <h1>{graphicsName}</h1>
                <Graphics {...rest} />
              </>
            )}
          </Col>
        )}
      </Row>
      <h2>{dataName}</h2>
      {loading ? <Loading /> : <Table columns={columns} data={data} />}
    </Container>
  )
}

export default Crud
