import React from "react"

import Moment from "react-moment"

const EventDetails = ({ event }) => {
  const { fuente, nombre, fecha_realizacion } = event

  return (
    <div>
      <div className="banner">
        <img src={fuente} />
        <div className="banner-details">
          <h1>{nombre}</h1>

          <Moment
            date={fecha_realizacion}
            format={"dddd, MMMM Do YYYY, h:mm:ss a"}
          />
        </div>
      </div>
    </div>
  )
}

export default EventDetails
