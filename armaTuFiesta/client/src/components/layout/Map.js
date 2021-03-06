import React from "react"

import GoogleMapReact from "google-map-react"
import "../../css/map.css"

const Map = ({ lat, lng }) => {
  return (
    <div className="google-map" style={{ maxHeight: "320px" }}>
      <GoogleMapReact
        defaultZoom={8}
        center={{
          lat: parseFloat(lat) || 10.48,
          lng: parseFloat(lng) || 66.9,
        }}
      ></GoogleMapReact>
    </div>
  )
}

export default Map
