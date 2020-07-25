import { useState } from "react"

const useForm = initialFields => {
  const [fields, setFields] = useState(initialFields)

  const reset = () => {
    setFields(initialFields)
  }

  let value = undefined

  const bind = {
    onChange: event => {
      setFields({
        ...fields,
        [event.target.name]: event.target.value,
      })

      value = [event.target.name]
    },
    value,
  }

  return [fields, bind, reset]
}

export default useForm
