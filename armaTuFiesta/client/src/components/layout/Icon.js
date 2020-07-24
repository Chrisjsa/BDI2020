import React from "react"

import {
  BsMic,
  BsCamera,
  BsHouse,
  BsPeopleFill,
  BsFillCameraVideoFill,
} from "react-icons/bs"
import {
  FaHamburger,
  FaLightbulb,
  FaTshirt,
  FaTruck,
  FaCouch,
  FaCandyCane,
  FaStar,
} from "react-icons/fa"
import { MdSecurity, MdBrush } from "react-icons/md"
import {
  GiFlowerPot,
  GiSandwich,
  GiSofa,
  GiCrystalGrowth,
  GiWineGlass,
  GiBarracksTent,
  GiTable,
  GiScissors,
  GiKnifeFork,
} from "react-icons/gi"

import { IoMdRose } from "react-icons/io"

const Icon = ({ type, size }) => {
  const ThisIcon = () => {
    switch (type) {
      case "Home":
        return <BsHouse size={size} />
      case "Mobiliario de Festejo":
        return <GiSofa size={size} />
      case "Tarimas":
        return <GiTable size={size} />
      case "Mobiliario Lounge":
        return <FaCouch size={size} />
      case "Mobiliario de Acrílico y Cristal":
        return <GiCrystalGrowth size={size} />
      case "Bebidas":
        return <GiWineGlass size={size} />
      case "Minidulces":
        return <FaCandyCane size={size} />
      case "Música":
        return <BsMic size={size} />
      case "Pasapalos":
        return <GiSandwich size={size} />
      case "Catering":
        return <FaHamburger size={size} />
      case "Toldos":
        return <GiBarracksTent size={size} />
      case "Centro de Mesa":
        return <IoMdRose size={size} />
      case "Decoración":
        return <FaStar size={size} />
      case "Modista":
        return <GiScissors size={size} />
      case "Fotografía":
        return <BsCamera size={size} />
      case "Audiovisual":
        return <BsFillCameraVideoFill size={size} />
      case "Utilería":
        return <GiKnifeFork size={size} />
      case "Protocolo":
        return <MdSecurity size={size} />
      case "Floristería":
        return <GiFlowerPot size={size} />
      case "Diseñador":
        return <MdBrush size={size} />
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
  return <ThisIcon />
}

export default Icon
