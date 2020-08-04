import React from "react"

import { connect } from "react-redux"

import AlertItem from "./AlertItem"

const Alerts = ({ alerts }) => {
  return (
    <div>
      {alerts.map(alert => (
        <AlertItem alert={alert} />
      ))}
    </div>
  )
}

const mapActionsToProps = {}

const mapStateToProps = state => ({
  alerts: state.alerts.alerts,
})

export default connect(mapStateToProps, mapActionsToProps)(Alerts)
