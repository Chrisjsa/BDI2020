import React from "react"

import { connect } from "react-redux"

import { leerClientes } from "../../state/cliente/clienteActions"

import Crud from "../layout/Crud"

import ClienteForm from "./ClienteForm"

const CrudCliente = ({
  clientes,
  clientesCols,
  loading,
  leerClientes,
  currentNotaria,
}) => {
  return (
    <Crud
      dataName="Clientes"
      data={clientes}
      columns={clientesCols}
      loading={loading}
      readFn={leerClientes}
      Form={ClienteForm}
    />
  )
}

const mapStateToProps = state => ({
  clientes: state.clientes.clientes,
  clientesCols: state.clientes.clientesCols,
  loading: state.clientes.loading,
  currentCliente: state.clientes.currentCliente,
})

export default connect(mapStateToProps, { leerClientes })(CrudCliente)
