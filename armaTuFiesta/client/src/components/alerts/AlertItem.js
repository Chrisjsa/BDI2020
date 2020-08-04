import React from "react"

import { Alert } from "react-bootstrap"

const AlertItem = ({ alert }) => {
  const { variant, text } = alert

  return (
    <Alert className="mt-3" variant={variant ? variant : "primary"}>
      {text}
    </Alert>
  )
}

export default AlertItem
