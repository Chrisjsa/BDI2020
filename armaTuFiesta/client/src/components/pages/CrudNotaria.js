import React, { useEffect, useState } from "react"

import { Container } from "react-bootstrap"
import { MDBDataTableV5 } from "mdbreact"

import { connect } from "react-redux"

import { readNotarias, setCurrentNotaria } from "../../actions/notariaActions"

import Loading from "../layout/Loading"
import NotariaForm from "../notarias/NotariaForm"

import GoogleMapReact from "google-map-react"
import "../../css/map.css"

const CrudNotaria = ({
  notarias,
  loading,
  readNotarias,
  setCurrentNotaria,
  currentNotaria,
}) => {
  useEffect(() => {
    readNotarias()
  }, [])

  const data = {
    rows: notarias.rows,
    columns: notarias.columns,
  }

  return (
    <Container>
      <NotariaForm />
      <h2>Notarias</h2>
      {loading ? (
        <Loading />
      ) : (
        <MDBDataTableV5
          hover
          checkbox
          // entriesOptions={[5, 20, 25]}
          entries={5}
          pagesAmount={4}
          data={notarias}
          fullPagination
          headCheckboxID="id2"
          bodyCheckboxID="checkboxes2"
          getValueCheckBox={notaria => {
            setCurrentNotaria({
              ...notaria,
              checked: undefined,
              checkbox: undefined,
            })
          }}
        />
      )}

      {/* {currentNotaria && (
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
      )} */}
    </Container>
  )
}

const mapStateToProps = state => ({
  notarias: state.notarias.notarias,
  loading: state.notarias.loading,
  currentNotaria: state.notarias.currentNotaria,
})

export default connect(mapStateToProps, { readNotarias, setCurrentNotaria })(
  CrudNotaria
)
