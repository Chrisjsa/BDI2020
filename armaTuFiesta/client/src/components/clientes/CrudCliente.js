import React from "react"

import { connect } from "react-redux"

import {
  leerClientes,
  setCurrentCliente,
} from "../../state/cliente/clienteActions"

import Crud from "../layout/Crud"

import ClienteForm from "./ClienteForm"

const CrudCliente = ({
  clientes,
  clientesCols,
  loading,
  leerClientes,
  currentCliente,
  setCurrentCliente,
}) => {
  return (
    <Crud
      dataName="Clientes"
      data={clientes}
      columns={clientesCols}
      setCurrentData={setCurrentCliente}
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

export default connect(mapStateToProps, { leerClientes, setCurrentCliente })(
  CrudCliente
)
