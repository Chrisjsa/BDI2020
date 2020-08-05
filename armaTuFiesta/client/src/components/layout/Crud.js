import React, { useEffect } from "react"

import { Container, Row, Col } from "react-bootstrap"

import Loading from "../layout/Loading"

import Table from "../layout/Table"
import Hero from "../layout/Hero"

const Crud = ({
  dataName,
  data,
  columns,
  setCurrentData,
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
      {loading ? (
        <Loading />
      ) : (
        <Table columns={columns} data={data} setCurrentData={setCurrentData} />
      )}
    </Container>
  )
}

export default Crud
