import React from "react"

import { connect } from "react-redux"

import DataTable from "react-data-table-component"

const Table = ({ columns, data, setCurrentData }) => {
  return (
    <DataTable
      columns={columns}
      data={data}
      pagination
      paginationPerPage={5}
      pointerOnHover
      highlightOnHover
      onRowClicked={row => setCurrentData(row)}
    />
  )
}

export default connect(null)(Table)
