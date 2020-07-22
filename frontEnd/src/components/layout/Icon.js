import React from "react"

import { BsMic, BsCamera, BsHouse, BsPeopleFill } from "react-icons/bs"
import { FaHamburger, FaLightbulb, FaTshirt, FaTruck } from "react-icons/fa"
import { MdSecurity } from "react-icons/md"
import { GiFlowerPot, GiSandwich } from "react-icons/gi"

const Icon = ({ type, size }) => {
  const ThisIcon = () => {
    switch (type) {
      case "home":
        return <BsHouse size={size} />
      case "Música":
        return <BsMic size={size} />
      case "Pasapalos":
        return <GiSandwich size={size} />
      case "Catering":
        return <FaHamburger size={size} />
      case "Fotografía":
        return <BsCamera size={size} />
      case "Protocolo":
        return <MdSecurity size={size} />
      case "Floristería":
        return <GiFlowerPot size={size} />
      case "Luces":
        return <FaLightbulb size={size} />
      case "Personal de Festejo":
        return <BsPeopleFill size={size} />
      case "Costura":
        return <FaTshirt size={size} />
      case "Transporte":
        return <FaTruck size={size} />
      default:
        return <div className="error">no icon: {type}</div>
    }
  }
  return (
    <div>
      <ThisIcon />
    </div>
  )
}

export default Icon
