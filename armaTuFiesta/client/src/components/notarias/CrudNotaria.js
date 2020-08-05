import React from "react"

import { connect } from "react-redux"

import {
  readNotarias,
  setCurrentNotaria,
} from "../../state/notaria/notariaActions"

import NotariaForm from "./NotariaForm"

import Map from "../layout/Map"

import Crud from "../layout/Crud"

const CrudNotaria = ({
  notarias,
  notariasCols,
  loading,
  readNotarias,
  currentNotaria,
  setCurrentNotaria,
}) => {
  return (
    <Crud
      dataName="Notarías"
      data={notarias}
      columns={notariasCols}
      loading={loading}
      setCurrentData={setCurrentNotaria}
      readFn={readNotarias}
      Form={NotariaForm}
      Graphics={() => (
        <Map lat={currentNotaria.latitud} lng={currentNotaria.longitud} />
      )}
      graphicsData={currentNotaria}
      graphicsName={"Mapa"}
    />
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
