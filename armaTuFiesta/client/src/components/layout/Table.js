import React from "react"

import { connect } from "react-redux"

import DataTable from "react-data-table-component"

import { setCurrentNotaria } from "../../state/notaria/notariaActions"

const Table = ({ columns, data, setCurrentNotaria }) => {
  return (
    <DataTable
      columns={columns}
      data={data}
      pagination
      paginationPerPage={5}
      pointerOnHover
      highlightOnHover
      onRowClicked={row => setCurrentNotaria(row)}
    />
  )
}

export default connect(null, { setCurrentNotaria })(Table)
