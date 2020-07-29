import React from "react"

import loading from "../../img/loading.gif"

const Loading = () => {
  return (
    <div className="text-center">
      <img src={loading} className="text-icon-sm mb-3" />
      Loading...
    </div>
  )
}

export default Loading
