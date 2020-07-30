import React, { useEffect } from "react"

import { Container } from "react-bootstrap"
import { MDBDataTableV5 } from "mdbreact"

import { connect } from "react-redux"

import { readNotarias } from "../../actions/notariaActions"

import Loading from "../layout/Loading"

const CrudNotaria = ({ notarias, loading, readNotarias }) => {
  useEffect(() => {
    readNotarias()
    console.log("leidas notarias")
  }, [])

  const data = {
    rows: notarias.rows,
    columns: notarias.fields,
  }

  return (
    <Container>
      Crud notaria
      {loading ? (
        <Loading />
      ) : (
        <MDBDataTableV5
          hover
          entriesOptions={[5, 20, 25]}
          entries={5}
          pagesAmount={4}
          data={notarias}
          fullPagination
        />
      )}
    </Container>
  )
}

const mapStateToProps = state => ({
  notarias: state.notarias.notarias,
  loading: state.notarias.loading,
})

export default connect(mapStateToProps, { readNotarias })(CrudNotaria)
