import React from "react"

import { connect } from "react-redux"

import { leerClientes } from "../../state/cliente/clienteActions"

import Crud from "../layout/Crud"

import TipForm from "./TipForm"

const CrudTip = ({ tips, tipsCols, loading, leerClientes, currentNotaria }) => {
  return (
    <Crud
      dataName="Tips"
      data={[]}
      columns={[]}
      loading={loading}
      readFn={() => {}}
      Form={TipForm}
    />
  )
}

const mapStateToProps = state => ({
  tips: undefined,
  tipCols: undefined,
})

export default connect(mapStateToProps, {})(CrudTip)
