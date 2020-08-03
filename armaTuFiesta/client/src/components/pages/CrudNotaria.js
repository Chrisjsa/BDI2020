import React, { useEffect } from "react"

import { Container, Row, Col } from "react-bootstrap"
import DataTable from "react-data-table-component"

import { connect } from "react-redux"

import {
  readNotarias,
  setCurrentNotaria,
} from "../../state/notaria/notariaActions"

import Loading from "../layout/Loading"
import NotariaForm from "../notarias/NotariaForm"

import GoogleMapReact from "google-map-react"
import "../../css/map.css"

import Hero from "../layout/Hero"

const CrudNotaria = ({
  notarias,
  notariasCols,
  loading,
  readNotarias,
  setCurrentNotaria,
  currentNotaria,
}) => {
  useEffect(() => {
    readNotarias()
    console.log("hola?")
    // eslint-disable-next-line
  }, [])

  return (
    <Container>
      <Hero firstLine="Administración" secondLine="Notarias" />

      <Row>
        <Col>
          <NotariaForm />
        </Col>
        <Col>
          {currentNotaria && (
            <div className="google-map">
              <h2>Mapa</h2>
              <GoogleMapReact
                defaultZoom={10}
                center={{
                  lat: parseFloat(currentNotaria.latitud) || 10.48,
                  lng: parseFloat(currentNotaria.longitud) || 66.9,
                }}
              ></GoogleMapReact>
            </div>
          )}
        </Col>
      </Row>
      <h2>Notarias</h2>
      {loading ? (
        <Loading />
      ) : (
        <DataTable
          columns={notariasCols}
          data={notarias}
          pagination
          paginationPerPage={5}
          pointerOnHover
          highlightOnHover
          onRowClicked={row => setCurrentNotaria(row)}
        />
      )}
    </Container>
  )
}

const mapStateToProps = state => ({
  notarias: state.notarias.notarias,
  notariasCols: state.notarias.notariasCols,
  loading: state.notarias.loading,
  currentNotaria: state.notarias.currentNotaria,
})

export default connect(mapStateToProps, { readNotarias, setCurrentNotaria })(
  CrudNotaria
)
