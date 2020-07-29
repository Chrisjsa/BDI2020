import React, { useEffect } from "react"
import { Route, Redirect } from "react-router-dom"

import { connect } from "react-redux"

import { loadUser } from "../../actions/authActions"

const PrivateRoute = ({ auth, component: Component, ...rest }) => {
  const { isAuthenticated, loading } = auth

  useEffect(() => {
    loadUser()
  }, [])

  return (
    <Route
      {...rest}
      render={props =>
        !isAuthenticated && !loading ? (
          <Redirect to="/login" />
        ) : (
          <Component {...props} />
        )
      }
    />
  )
}

const mapStateToPros = state => ({
  auth: state.auth,
})

export default connect(mapStateToPros, { loadUser })(PrivateRoute)
