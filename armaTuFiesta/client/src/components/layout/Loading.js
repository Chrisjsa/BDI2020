import React from "react"

import loading from "../../img/loading.gif"

const Loading = () => {
  return (
    <div className="text-center">
      <img src={loading} className="text-icon-lg mt-4" alt="Cargando..." />
    </div>
  )
}

export default Loading
