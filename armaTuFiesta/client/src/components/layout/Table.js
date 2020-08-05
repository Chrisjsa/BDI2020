import React from "react"

import { connect } from "react-redux"

import DataTable from "react-data-table-component"

import { change } from "redux-form"

const Table = ({ columns, data, setCurrentData, change }) => {
  const handleRowClicked = row => {
    change("cliente", "p_nombre", "culito")
    // Object.keys(row).forEach(key => change("cliente", key, row[key]))
    Object.keys(row).forEach(key => console.log("cliente", key, row[key]))
    setCurrentData(row)
  }

  return (
    <DataTable
      columns={columns}
      data={data}
      pagination
      paginationPerPage={5}
      pointerOnHover
      highlightOnHover
      onRowClicked={row => handleRowClicked(row)}
    />
  )
}

export default connect(null, { change })(Table)
