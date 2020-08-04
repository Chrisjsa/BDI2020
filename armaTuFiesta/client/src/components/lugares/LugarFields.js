import React, { useEffect } from "react"

import { Form } from "react-bootstrap"

import { connect } from "react-redux"

import {
  leerEstado,
  leerMunicipio,
  leerParroquia,
  setCurrentEstado,
  setCurrentMunicipio,
  setCurrentParroquia,
} from "../../state/lugar/lugarActions"

import LugarDropdown from "./LugarDropdown"

const LugarFields = ({
  currentData,
  municipios,
  estados,
  parroquias,
  currentEstado,
  currentMunicipio,
  currentParroquia,
  // actions
  leerEstado,
  leerMunicipio,
  leerParroquia,
  setCurrentEstado,
  setCurrentMunicipio,
  setCurrentParroquia,
}) => {
  useEffect(() => {
    leerEstado()
  }, [])

  useEffect(() => {
    setCurrentMunicipio(undefined)
    leerMunicipio(currentEstado)
  }, [currentEstado])

  useEffect(() => {
    setCurrentParroquia(undefined)
    leerParroquia(currentMunicipio)
  }, [currentMunicipio])

  useEffect(() => {
    setCurrentParroquia(undefined)
  }, [currentEstado])

  return (
    <Form.Row>
      <LugarDropdown
        label={"Estado"}
        value={currentEstado}
        handler={setCurrentEstado}
        list={estados}
        name="estado"
        currentData={currentData}
      />

      <LugarDropdown
        label={"Municipio"}
        value={currentMunicipio}
        handler={setCurrentMunicipio}
        list={municipios}
        name="municipio"
        currentData={currentData}
        disableIf={!currentEstado}
      />

      <LugarDropdown
        label={"Parroquia"}
        value={currentParroquia}
        handler={setCurrentParroquia}
        list={parroquias}
        name="parroquia"
        currentData={currentData}
        disableIf={!currentEstado || !currentMunicipio}
      />
    </Form.Row>
  )
}

const mapStateToProps = state => ({
  currentEstado: state.lugares.currentEstado,
  currentMunicipio: state.lugares.currentMunicipio,
  currentParroquia: state.lugares.currentParroquia,
  estados: state.lugares.estados,
  municipios: state.lugares.municipios,
  parroquias: state.lugares.parroquias,
})

export default connect(mapStateToProps, {
  setCurrentEstado,
  setCurrentMunicipio,
  setCurrentParroquia,
  leerEstado,
  leerMunicipio,
  leerParroquia,
})(LugarFields)
