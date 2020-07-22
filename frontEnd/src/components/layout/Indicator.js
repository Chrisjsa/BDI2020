import React from "react"

const Indicator = ({ component: Component, text }) => {
  return (
    <div className="indicator">
      <div>
        <Component className="mr-1" />
      </div>

      <div>{text}</div>
    </div>
  )
}

export default Indicator
