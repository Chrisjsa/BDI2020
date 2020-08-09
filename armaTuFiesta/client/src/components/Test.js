import React from "react"

import { Button } from "react-bootstrap"

import axios from "axios"

import { saveAs } from "file-saver"

const Test = () => {
  const data = {
    dataPpc: { p_nombre: "Pedro " }, // poner más data si quieres probar
    dataMpc: { s_nombre: "Sylvia " },
  }

  let feedback = ""

  const onClick = async () => {
    try {
      const res = await axios.get(
        `/api/testing/report?data=${JSON.stringify(data)}`,
        {
          responseType: "blob",
          headers: {
            "Content-Type": "application/json",
            Accept: "application/pdf",
          },
        }
      )

      console.log(res)
      // saveAs(new Blob([res.data], { type: "application/pdf" }), "file.pdf")

      //   console.log(res.data)
      //   saveAs(new Blob([res.data]), "hola.docx")
      // const url = window.URL.createObjectURL(
      //   new Blob([res.data], {
      //     type: "application/pdf",
      //   })
      // )
      // const link = document.createElement("a")
      // link.href = url
      // link.setAttribute("download", "file.pdf")
      // document.body.appendChild(link)
      // link.click()
      const url = window.URL.createObjectURL(
        new Blob([res.data], { type: "application/pdf" })
      )
      window.open(url)
      const link = document.createElement("a")
      link.href = url
      link.setAttribute("download", "file.pdf") //or any other extension
      document.body.appendChild(link)
      link.click()
    } catch (error) {
      feedback = error.message
    }
  }
  return (
    <>
      <Button onClick={onClick}>Reporte</Button>
      {feedback !== "" && feedback}
    </>
  )
}

export default Test
