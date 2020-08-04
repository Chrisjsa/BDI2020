import React from "react"

import { connect } from "react-redux"

import { leerClientes } from "../../state/cliente/clienteActions"

import Crud from "../layout/Crud"

const CrudNotaria = ({
  clientes,
  clientesCol,
  loading,
  leerClientes,
  currentNotaria,
}) => {
  return (
    <Crud
      dataName="Notarías"
      data={clientes}
      columns={clientesCol}
      loading={loading}
      readFn={leerClientes}
      Form={() => <></>}
    />
  )
}

const mapStateToProps = state => ({
  clientes: state.clientes.clientes,
  loading: state.clientes.loading,
  currentCliente: state.clientes.currentCliente,
})

export default connect(mapStateToProps, { leerClientes })(CrudNotaria)
