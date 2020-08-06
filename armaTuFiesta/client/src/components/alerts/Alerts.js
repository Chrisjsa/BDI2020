import React, { useEffect } from "react"
import Fade from "react-reveal/Fade"

import { connect } from "react-redux"

import AlertItem from "./AlertItem"

import { setAlert } from "../../state/alert/alertActions"

const Alerts = props => {
  const { errorCliente, alerts, setAlert } = props

  useEffect(() => {
    if (errorCliente) setAlert(errorCliente, "danger")
  }, [errorCliente])

  // return <div>{alerts && alerts.map(alert => <AlertItem alert={alert} />)}</div>
  return (
    <div>
      <Fade top when={alerts}>
        <div>
          {alerts.map(alert => (
            <AlertItem alert={alert} />
          ))}
        </div>
      </Fade>
    </div>
  )
}

const mapActionsToProps = { setAlert }

const mapStateToProps = state => ({
  alerts: state.alerts.alerts,
  errorCliente: state.clientes.error,
})

export default connect(mapStateToProps, mapActionsToProps)(Alerts)
