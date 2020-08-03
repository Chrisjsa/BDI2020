import React from "react"

const Hero = ({ firstLine, secondLine }) => {
  return (
    <>
      <h1 className="display-5 text-muted mt-4"> {firstLine}</h1>
      <h1 className="display-3 mb-3"> {secondLine}</h1>
      <hr />
    </>
  )
}

export default Hero
