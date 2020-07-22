import React from "react"

import { BsMic, BsCamera, BsHouse } from "react-icons/bs"
import { FaHamburger } from "react-icons/fa"
import { MdSecurity } from "react-icons/md"

const Icon = ({ type, size }) => {
  const ThisIcon = () => {
    switch (type) {
      case "home":
        return <BsHouse size={size} />
      case "musica":
        return <BsMic size={size} />
      case "catering":
        return <FaHamburger size={size} />
      case "fotografia":
        return <BsCamera size={size} />
      case "protocolo":
        return <MdSecurity size={size} />
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
