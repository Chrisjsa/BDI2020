// import React from "react"

// import { Button } from "react-bootstrap"

// import axios from "axios"

// import { saveAs } from "file-saver"

// const Test = () => {
//   let feedback = ""

//   const config = {
//     responseType: "blob",
//     headers: {
//       "Content-Type": "application/json",
//       Accept: "application/pdf",
//     },
//   }

//   const onClick = async () => {
//     try {
//       // const res = await axios.get(
//       //   `/api/reportes/1?fechaInicial=${}&fechaFinal=${}`
//       // )
//       const url = window.URL.createObjectURL(
//         new Blob([res.data], { type: "application/pdf" })
//       )
//       window.open(url)
//       const link = document.createElement("a")
//       link.href = url
//       link.setAttribute("download", "file.pdf") //or any other extension
//       document.body.appendChild(link)
//       link.click()
//     } catch (error) {
//       feedback = error.message
//     }
//   }
//   return (
//     <>
//       <Button onClick={onClick}>Reporte</Button>
//       {feedback !== "" && feedback}
//     </>
//   )
// }

// export default Test
