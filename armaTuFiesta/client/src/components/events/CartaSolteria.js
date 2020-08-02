import React, { useState } from "react"
import DatePicker from "react-datepicker"
import "react-datepicker/dist/react-datepicker.css"

import moment from "moment"

import { connect } from "react-redux"

import { createCarta } from "../../state/cartas/cartaActions"

import { Form, Button, Col, Container } from "react-bootstrap"

const CartaSolteria = ({ createCarta }) => {
  const bigConsole = text => {
    console.log(`%c ${text}`, "font-size: 24px")
  }
  const onSubmit = e => {
    e.preventDefault()

    const dataPpc = {
      cedula: cedulaPpc,
      p_nombre: pNombrePpc,
      s_nombre: sNombrePpc,
      p_apellido: pApellidoPpc,
      s_apellido: sApellidoPpc,
      fecha_nacimiento: moment(fechaNacimientoPpc).format("YYYY-MM-DD"),
      sexo: sexoPpc,
      estado_civil: estadoCivilPpc,
    }

    const dataMpc = {
      cedula: cedulaMpc,
      p_nombre: pNombreMpc,
      s_nombre: sNombreMpc,
      p_apellido: pApellidoMpc,
      s_apellido: sApellidoMpc,
      fecha_nacimiento: moment(fechaNacimientoMpc).format("YYYY-MM-DD"),
      sexo: sexoMpc,
      estado_civil: estadoCivilMpc,
    }

    const dataT1pc = {
      cedula: cedulaT1pc,
      p_nombre: pNombreT1pc,
      s_nombre: sNombreT1pc,
      p_apellido: pApellidoT1pc,
      s_apellido: sApellidoT1pc,
      fecha_nacimiento: moment(fechaNacimientoT1pc).format("YYYY-MM-DD"),
      sexo: sexoT1pc,
      estado_civil: estadoCivilT1pc,
    }

    const dataT2pc = {
      cedula: cedulaT2pc,
      p_nombre: pNombreT2pc,
      s_nombre: sNombreT2pc,
      p_apellido: pApellidoT2pc,
      s_apellido: sApellidoT2pc,
      fecha_nacimiento: moment(fechaNacimientoT2pc).format("YYYY-MM-DD"),
      sexo: sexoT2pc,
      estado_civil: estadoCivilT2pc,
    }

    const dataSc = {
      cedula: cedulaSc,
      p_nombre: pNombreSc,
      s_nombre: sNombreSc,
      p_apellido: pApellidoSc,
      s_apellido: sApellidoSc,
      fecha_nacimiento: moment(fechaNacimientoSc).format("YYYY-MM-DD"),
      sexo: sexoSc,
      estado_civil: estadoCivilSc,
    }

    const dataPsc = {
      cedula: cedulaPsc,
      p_nombre: pNombrePsc,
      s_nombre: sNombrePsc,
      p_apellido: pApellidoPsc,
      s_apellido: sApellidoPsc,
      fecha_nacimiento: moment(fechaNacimientoPsc).format("YYYY-MM-DD"),
      sexo: sexoPsc,
      estado_civil: estadoCivilPsc,
    }

    const dataMsc = {
      cedula: cedulaMsc,
      p_nombre: pNombreMsc,
      s_nombre: sNombreMsc,
      p_apellido: pApellidoMsc,
      s_apellido: sApellidoMsc,
      fecha_nacimiento: moment(fechaNacimientoMsc).format("YYYY-MM-DD"),
      sexo: sexoMsc,
      estado_civil: estadoCivilMsc,
    }

    const dataT1sc = {
      cedula: cedulaT1sc,
      p_nombre: pNombreT1sc,
      s_nombre: sNombreT1sc,
      p_apellido: pApellidoT1sc,
      s_apellido: sApellidoT1sc,
      fecha_nacimiento: moment(fechaNacimientoT1sc).format("YYYY-MM-DD"),
      sexo: sexoT1sc,
      estado_civil: estadoCivilT1sc,
    }

    const dataT2sc = {
      cedula: cedulaT2sc,
      p_nombre: pNombreT2sc,
      s_nombre: sNombreT2sc,
      p_apellido: pApellidoT2sc,
      s_apellido: sApellidoT2sc,
      fecha_nacimiento: moment(fechaNacimientoT2sc).format("YYYY-MM-DD"),
      sexo: sexoT2sc,
      estado_civil: estadoCivilT2sc,
    }

    bigConsole("Padre Primer Conyugue")
    console.table(dataPpc)

    bigConsole("Madre Primer Conyugue")
    console.table(dataMpc)

    bigConsole("Testigo #1 Primer Conyugue")
    console.table(dataT1pc)

    bigConsole("Testigo #2 Primer Conyugue")
    console.table(dataT2pc)

    bigConsole("Segundo Conyugue")
    console.table(dataSc)

    bigConsole("Padre Segundo Conyugue")
    console.table(dataPsc)

    bigConsole("Madre Segundo Conyugue")
    console.table(dataMsc)

    bigConsole("Testigo #1 Segundo Conyugue")
    console.table(dataT1sc)

    bigConsole("Testigo #2 Segundo Conyugue")
    console.table(dataT2sc)

    createCarta({
      dataPpc,
      dataMpc,
      dataT1pc,
      dataT2pc,
      dataSc,
      dataPsc,
      dataMsc,
      dataT1sc,
      dataT2sc,
    })
  }

  // Padre Primer Conyugue (ppc)
  const [ppc, setPpc] = useState({
    pNombrePpc: "",
    sNombrePpc: "",
    pApellidoPpc: "",
    sApellidoPpc: "",
    estadoCivilPpc: "",
    cedulaPpc: "",
    sexoPpc: "",
  })

  const onChangePpc = event => {
    setPpc({
      ...ppc,
      [event.target.name]: event.target.value,
    })
  }

  const {
    pNombrePpc,
    sNombrePpc,
    pApellidoPpc,
    sApellidoPpc,
    estadoCivilPpc,
    cedulaPpc,
    sexoPpc,
  } = ppc

  const [fechaNacimientoPpc, setFechaNacimientoPpc] = useState(new Date())

  const ppcForm = () => (
    <>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer nombre"
            name="pNombrePpc"
            value={pNombrePpc}
            onChange={onChangePpc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo nombre"
            name="sNombrePpc"
            value={sNombrePpc}
            onChange={onChangePpc}
          />
        </Form.Group>
      </Form.Row>

      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer apellido"
            name="pApellidoPpc"
            value={pApellidoPpc}
            onChange={onChangePpc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo apellido"
            name="sApellidoPpc"
            value={sApellidoPpc}
            onChange={onChangePpc}
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Cédula</Form.Label>
          <Form.Control
            type="text"
            placeholder="Cédula"
            name="cedulaPpc"
            value={cedulaPpc}
            onChange={onChangePpc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Estado civil</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="estadoCivilPpc"
            value={estadoCivilPpc}
            onChange={onChangePpc}
          >
            <option>Seleccionar...</option>
            <option value="Soltero">Soltero</option>
            <option value="Casado">Casado</option>
            <option value="Divorciado">Divorciado</option>
            <option value="Viudo">Viudo</option>
          </Form.Control>
        </Form.Group>

        <Form.Group>
          <p style={{ marginBottom: "0.5rem" }}>From</p>
          <DatePicker
            selected={fechaNacimientoPpc}
            onChange={date => setFechaNacimientoPpc(date)}
            peekNextMonth
            showMonthDropdown
            showYearDropdown
            className="form-control"
            dropdownMode="select"
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <fieldset>
          <Form.Group>
            <Form.Label className="mr-3">Sex</Form.Label>
            <Form.Check
              inline
              type="radio"
              label="M"
              name="sexoPpc"
              value="Masculino"
              onChange={onChangePpc}
              checked={sexoPpc === "Masculino"}
            />
            <Form.Check
              inline
              type="radio"
              label="F"
              name="sexoPpc"
              value="Femenino"
              onChange={onChangePpc}
              checked={sexoPpc === "Femenino"}
            />
          </Form.Group>
        </fieldset>
      </Form.Row>
    </>
  )

  // Madre Primer Conyugue (mpc)
  const [mpc, setMpc] = useState({
    pNombreMpc: "",
    sNombreMpc: "",
    pApellidoMpc: "",
    sApellidoMpc: "",
    estadoCivilMpc: "",
    cedulaMpc: "",
    sexoMpc: "",
  })

  const onChangeMpc = event => {
    setMpc({
      ...mpc,
      [event.target.name]: event.target.value,
    })
  }

  const {
    pNombreMpc,
    sNombreMpc,
    pApellidoMpc,
    sApellidoMpc,
    estadoCivilMpc,
    cedulaMpc,
    sexoMpc,
  } = mpc

  const [fechaNacimientoMpc, setFechaNacimientoMpc] = useState(new Date())

  const mpcForm = () => (
    <>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer nombre"
            name="pNombreMpc"
            value={pNombreMpc}
            onChange={onChangeMpc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo nombre"
            name="sNombreMpc"
            value={sNombreMpc}
            onChange={onChangeMpc}
          />
        </Form.Group>
      </Form.Row>

      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer apellido"
            name="pApellidoMpc"
            value={pApellidoMpc}
            onChange={onChangeMpc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo apellido"
            name="sApellidoMpc"
            value={sApellidoMpc}
            onChange={onChangeMpc}
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Cédula</Form.Label>
          <Form.Control
            type="text"
            placeholder="Cédula"
            name="cedulaMpc"
            value={cedulaMpc}
            onChange={onChangeMpc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Estado civil</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="estadoCivilMpc"
            value={estadoCivilMpc}
            onChange={onChangeMpc}
          >
            <option>Seleccionar...</option>
            <option value="Soltero">Soltero</option>
            <option value="Casado">Casado</option>
            <option value="Divorciado">Divorciado</option>
            <option value="Viudo">Viudo</option>
          </Form.Control>
        </Form.Group>

        <Form.Group>
          <p style={{ marginBottom: "0.5rem" }}>From</p>
          <DatePicker
            selected={fechaNacimientoMpc}
            onChange={date => setFechaNacimientoMpc(date)}
            peekNextMonth
            showMonthDropdown
            showYearDropdown
            className="form-control"
            dropdownMode="select"
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <fieldset>
          <Form.Group>
            <Form.Label className="mr-3">Sex</Form.Label>
            <Form.Check
              inline
              type="radio"
              label="M"
              name="sexoMpc"
              value="Masculino"
              onChange={onChangeMpc}
              checked={sexoMpc === "Masculino"}
            />
            <Form.Check
              inline
              type="radio"
              label="F"
              name="sexoMpc"
              value="Femenino"
              onChange={onChangeMpc}
              checked={sexoMpc === "Femenino"}
            />
          </Form.Group>
        </fieldset>
      </Form.Row>
    </>
  )

  // Testigo 1 Primer Conyugue (t1pc)
  const [t1pc, setT1pc] = useState({
    pNombreT1pc: "",
    sNombreT1pc: "",
    pApellidoT1pc: "",
    sApellidoT1pc: "",
    estadoCivilT1pc: "",
    cedulaT1pc: "",
    sexoT1pc: "",
  })

  const onChangeT1pc = event => {
    setT1pc({
      ...t1pc,
      [event.target.name]: event.target.value,
    })
  }

  const {
    pNombreT1pc,
    sNombreT1pc,
    pApellidoT1pc,
    sApellidoT1pc,
    estadoCivilT1pc,
    cedulaT1pc,
    sexoT1pc,
  } = t1pc

  const [fechaNacimientoT1pc, setFechaNacimientoT1pc] = useState(new Date())

  const t1pcForm = () => (
    <>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer nombre"
            name="pNombreT1pc"
            value={pNombreT1pc}
            onChange={onChangeT1pc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo nombre"
            name="sNombreT1pc"
            value={sNombreT1pc}
            onChange={onChangeT1pc}
          />
        </Form.Group>
      </Form.Row>

      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer apellido"
            name="pApellidoT1pc"
            value={pApellidoT1pc}
            onChange={onChangeT1pc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo apellido"
            name="sApellidoT1pc"
            value={sApellidoT1pc}
            onChange={onChangeT1pc}
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Cédula</Form.Label>
          <Form.Control
            type="text"
            placeholder="Cédula"
            name="cedulaT1pc"
            value={cedulaT1pc}
            onChange={onChangeT1pc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Estado civil</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="estadoCivilT1pc"
            value={estadoCivilT1pc}
            onChange={onChangeT1pc}
          >
            <option>Seleccionar...</option>
            <option value="Soltero">Soltero</option>
            <option value="Casado">Casado</option>
            <option value="Divorciado">Divorciado</option>
            <option value="Viudo">Viudo</option>
          </Form.Control>
        </Form.Group>

        <Form.Group>
          <p style={{ marginBottom: "0.5rem" }}>From</p>
          <DatePicker
            selected={fechaNacimientoT1pc}
            onChange={date => setFechaNacimientoT1pc(date)}
            peekNextMonth
            showMonthDropdown
            showYearDropdown
            className="form-control"
            dropdownMode="select"
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <fieldset>
          <Form.Group>
            <Form.Label className="mr-3">Sex</Form.Label>
            <Form.Check
              inline
              type="radio"
              label="M"
              name="sexoT1pc"
              value="Masculino"
              onChange={onChangeT1pc}
              checked={sexoT1pc === "Masculino"}
            />
            <Form.Check
              inline
              type="radio"
              label="F"
              name="sexoT1pc"
              value="Femenino"
              onChange={onChangeT1pc}
              checked={sexoT1pc === "Femenino"}
            />
          </Form.Group>
        </fieldset>
      </Form.Row>
    </>
  )

  // Testigo 2 primer conyugue
  const [t2pc, setT2pc] = useState({
    pNombreT2pc: "",
    sNombreT2pc: "",
    pApellidoT2pc: "",
    sApellidoT2pc: "",
    estadoCivilT2pc: "",
    cedulaT2pc: "",
    sexoT2pc: "",
  })

  const onChangeT2pc = event => {
    setT2pc({
      ...t2pc,
      [event.target.name]: event.target.value,
    })
  }

  const {
    pNombreT2pc,
    sNombreT2pc,
    pApellidoT2pc,
    sApellidoT2pc,
    estadoCivilT2pc,
    cedulaT2pc,
    sexoT2pc,
  } = t2pc

  const [fechaNacimientoT2pc, setFechaNacimientoT2pc] = useState(new Date())

  const t2pcForm = () => (
    <>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer nombre"
            name="pNombreT2pc"
            value={pNombreT2pc}
            onChange={onChangeT2pc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo nombre"
            name="sNombreT2pc"
            value={sNombreT2pc}
            onChange={onChangeT2pc}
          />
        </Form.Group>
      </Form.Row>

      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer apellido"
            name="pApellidoT2pc"
            value={pApellidoT2pc}
            onChange={onChangeT2pc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo apellido"
            name="sApellidoT2pc"
            value={sApellidoT2pc}
            onChange={onChangeT2pc}
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Cédula</Form.Label>
          <Form.Control
            type="text"
            placeholder="Cédula"
            name="cedulaT2pc"
            value={cedulaT2pc}
            onChange={onChangeT2pc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Estado civil</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="estadoCivilT2pc"
            value={estadoCivilT2pc}
            onChange={onChangeT2pc}
          >
            <option>Seleccionar...</option>
            <option value="Soltero">Soltero</option>
            <option value="Casado">Casado</option>
            <option value="Divorciado">Divorciado</option>
            <option value="Viudo">Viudo</option>
          </Form.Control>
        </Form.Group>

        <Form.Group>
          <p style={{ marginBottom: "0.5rem" }}>From</p>
          <DatePicker
            selected={fechaNacimientoT2pc}
            onChange={date => setFechaNacimientoT2pc(date)}
            peekNextMonth
            showMonthDropdown
            showYearDropdown
            className="form-control"
            dropdownMode="select"
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <fieldset>
          <Form.Group>
            <Form.Label className="mr-3">Sex</Form.Label>
            <Form.Check
              inline
              type="radio"
              label="M"
              name="sexoT2pc"
              value="Masculino"
              onChange={onChangeT2pc}
              checked={sexoT2pc === "Masculino"}
            />
            <Form.Check
              inline
              type="radio"
              label="F"
              name="sexoT2pc"
              value="Femenino"
              onChange={onChangeT2pc}
              checked={sexoT2pc === "Femenino"}
            />
          </Form.Group>
        </fieldset>
      </Form.Row>
    </>
  )

  // Segundo Conyugue (sc)
  const [sc, setSc] = useState({
    pNombreSc: "",
    sNombreSc: "",
    pApellidoSc: "",
    sApellidoSc: "",
    estadoCivilSc: "",
    cedulaSc: "",
    sexoSc: "",
  })

  const onChangeSc = event => {
    setSc({
      ...sc,
      [event.target.name]: event.target.value,
    })
  }

  const {
    pNombreSc,
    sNombreSc,
    pApellidoSc,
    sApellidoSc,
    estadoCivilSc,
    cedulaSc,
    sexoSc,
  } = sc

  const [fechaNacimientoSc, setFechaNacimientoSc] = useState(new Date())

  const scForm = () => (
    <>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer nombre"
            name="pNombreSc"
            value={pNombreSc}
            onChange={onChangeSc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo nombre"
            name="sNombreSc"
            value={sNombreSc}
            onChange={onChangeSc}
          />
        </Form.Group>
      </Form.Row>

      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer apellido"
            name="pApellidoSc"
            value={pApellidoSc}
            onChange={onChangeSc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo apellido"
            name="sApellidoSc"
            value={sApellidoSc}
            onChange={onChangeSc}
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Cédula</Form.Label>
          <Form.Control
            type="text"
            placeholder="Cédula"
            name="cedulaSc"
            value={cedulaSc}
            onChange={onChangeSc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Estado civil</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="estadoCivilSc"
            value={estadoCivilSc}
            onChange={onChangeSc}
          >
            <option>Seleccionar...</option>
            <option value="Soltero">Soltero</option>
            <option value="Casado">Casado</option>
            <option value="Divorciado">Divorciado</option>
            <option value="Viudo">Viudo</option>
          </Form.Control>
        </Form.Group>

        <Form.Group>
          <p style={{ marginBottom: "0.5rem" }}>From</p>
          <DatePicker
            selected={fechaNacimientoSc}
            onChange={date => setFechaNacimientoSc(date)}
            peekNextMonth
            showMonthDropdown
            showYearDropdown
            className="form-control"
            dropdownMode="select"
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <fieldset>
          <Form.Group>
            <Form.Label className="mr-3">Sex</Form.Label>
            <Form.Check
              inline
              type="radio"
              label="M"
              name="sexoSc"
              value="Masculino"
              onChange={onChangeSc}
              checked={sexoSc === "Masculino"}
            />
            <Form.Check
              inline
              type="radio"
              label="F"
              name="sexoSc"
              value="Femenino"
              onChange={onChangeSc}
              checked={sexoSc === "Femenino"}
            />
          </Form.Group>
        </fieldset>
      </Form.Row>
    </>
  )

  // Padre Segundo Conyugue (psc)
  const [psc, setPsc] = useState({
    pNombrePsc: "",
    sNombrePsc: "",
    pApellidoPsc: "",
    sApellidoPsc: "",
    estadoCivilPsc: "",
    cedulaPsc: "",
    sexoPsc: "",
  })

  const onChangePsc = event => {
    setPsc({
      ...psc,
      [event.target.name]: event.target.value,
    })
  }

  const {
    pNombrePsc,
    sNombrePsc,
    pApellidoPsc,
    sApellidoPsc,
    estadoCivilPsc,
    cedulaPsc,
    sexoPsc,
  } = psc

  const [fechaNacimientoPsc, setFechaNacimientoPsc] = useState(new Date())

  const pscForm = () => (
    <>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer nombre"
            name="pNombrePsc"
            value={pNombrePsc}
            onChange={onChangePsc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo nombre"
            name="sNombrePsc"
            value={sNombrePsc}
            onChange={onChangePsc}
          />
        </Form.Group>
      </Form.Row>

      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer apellido"
            name="pApellidoPsc"
            value={pApellidoPsc}
            onChange={onChangePsc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo apellido"
            name="sApellidoPsc"
            value={sApellidoPsc}
            onChange={onChangePsc}
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Cédula</Form.Label>
          <Form.Control
            type="text"
            placeholder="Cédula"
            name="cedulaPsc"
            value={cedulaPsc}
            onChange={onChangePsc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Estado civil</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="estadoCivilPsc"
            value={estadoCivilPsc}
            onChange={onChangePsc}
          >
            <option>Seleccionar...</option>
            <option value="Soltero">Soltero</option>
            <option value="Casado">Casado</option>
            <option value="Divorciado">Divorciado</option>
            <option value="Viudo">Viudo</option>
          </Form.Control>
        </Form.Group>

        <Form.Group>
          <p style={{ marginBottom: "0.5rem" }}>From</p>
          <DatePicker
            selected={fechaNacimientoPsc}
            onChange={date => setFechaNacimientoPsc(date)}
            peekNextMonth
            showMonthDropdown
            showYearDropdown
            className="form-control"
            dropdownMode="select"
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <fieldset>
          <Form.Group>
            <Form.Label className="mr-3">Sex</Form.Label>
            <Form.Check
              inline
              type="radio"
              label="M"
              name="sexoPsc"
              value="Masculino"
              onChange={onChangePsc}
              checked={sexoPsc === "Masculino"}
            />
            <Form.Check
              inline
              type="radio"
              label="F"
              name="sexoPsc"
              value="Femenino"
              onChange={onChangePsc}
              checked={sexoPsc === "Femenino"}
            />
          </Form.Group>
        </fieldset>
      </Form.Row>
    </>
  )

  // Madre Segundo Conyugue (msc)
  const [msc, setMsc] = useState({
    pNombreMsc: "",
    sNombreMsc: "",
    pApellidoMsc: "",
    sApellidoMsc: "",
    estadoCivilMsc: "",
    cedulaMsc: "",
    sexoMsc: "",
  })

  const onChangeMsc = event => {
    setMsc({
      ...msc,
      [event.target.name]: event.target.value,
    })
  }

  const {
    pNombreMsc,
    sNombreMsc,
    pApellidoMsc,
    sApellidoMsc,
    estadoCivilMsc,
    cedulaMsc,
    sexoMsc,
  } = msc

  const [fechaNacimientoMsc, setFechaNacimientoMsc] = useState(new Date())

  const mscForm = () => (
    <>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer nombre"
            name="pNombreMsc"
            value={pNombreMsc}
            onChange={onChangeMsc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo nombre"
            name="sNombreMsc"
            value={sNombreMsc}
            onChange={onChangeMsc}
          />
        </Form.Group>
      </Form.Row>

      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer apellido"
            name="pApellidoMsc"
            value={pApellidoMsc}
            onChange={onChangeMsc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo apellido"
            name="sApellidoMsc"
            value={sApellidoMsc}
            onChange={onChangeMsc}
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Cédula</Form.Label>
          <Form.Control
            type="text"
            placeholder="Cédula"
            name="cedulaMsc"
            value={cedulaMsc}
            onChange={onChangeMsc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Estado civil</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="estadoCivilMsc"
            value={estadoCivilMsc}
            onChange={onChangeMsc}
          >
            <option>Seleccionar...</option>
            <option value="Soltero">Soltero</option>
            <option value="Casado">Casado</option>
            <option value="Divorciado">Divorciado</option>
            <option value="Viudo">Viudo</option>
          </Form.Control>
        </Form.Group>

        <Form.Group>
          <p style={{ marginBottom: "0.5rem" }}>From</p>
          <DatePicker
            selected={fechaNacimientoMsc}
            onChange={date => setFechaNacimientoMsc(date)}
            peekNextMonth
            showMonthDropdown
            showYearDropdown
            className="form-control"
            dropdownMode="select"
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <fieldset>
          <Form.Group>
            <Form.Label className="mr-3">Sex</Form.Label>
            <Form.Check
              inline
              type="radio"
              label="M"
              name="sexoMsc"
              value="Masculino"
              onChange={onChangeMsc}
              checked={sexoMsc === "Masculino"}
            />
            <Form.Check
              inline
              type="radio"
              label="F"
              name="sexoMsc"
              value="Femenino"
              onChange={onChangeMsc}
              checked={sexoMsc === "Femenino"}
            />
          </Form.Group>
        </fieldset>
      </Form.Row>
    </>
  )
  // Testigo 1 Segundo Conyugue (t1sc)
  const [t1sc, setT1sc] = useState({
    pNombreT1sc: "",
    sNombreT1sc: "",
    pApellidoT1sc: "",
    sApellidoT1sc: "",
    estadoCivilT1sc: "",
    cedulaT1sc: "",
    sexoT1sc: "",
  })

  const onChangeT1sc = event => {
    setT1sc({
      ...t1sc,
      [event.target.name]: event.target.value,
    })
  }

  const {
    pNombreT1sc,
    sNombreT1sc,
    pApellidoT1sc,
    sApellidoT1sc,
    estadoCivilT1sc,
    cedulaT1sc,
    sexoT1sc,
  } = t1sc

  const [fechaNacimientoT1sc, setFechaNacimientoT1sc] = useState(new Date())

  const t1scForm = () => (
    <>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer nombre"
            name="pNombreT1sc"
            value={pNombreT1sc}
            onChange={onChangeT1sc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo nombre"
            name="sNombreT1sc"
            value={sNombreT1sc}
            onChange={onChangeT1sc}
          />
        </Form.Group>
      </Form.Row>

      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer apellido"
            name="pApellidoT1sc"
            value={pApellidoT1sc}
            onChange={onChangeT1sc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo apellido"
            name="sApellidoT1sc"
            value={sApellidoT1sc}
            onChange={onChangeT1sc}
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Cédula</Form.Label>
          <Form.Control
            type="text"
            placeholder="Cédula"
            name="cedulaT1sc"
            value={cedulaT1sc}
            onChange={onChangeT1sc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Estado civil</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="estadoCivilT1sc"
            value={estadoCivilT1sc}
            onChange={onChangeT1sc}
          >
            <option>Seleccionar...</option>
            <option value="Soltero">Soltero</option>
            <option value="Casado">Casado</option>
            <option value="Divorciado">Divorciado</option>
            <option value="Viudo">Viudo</option>
          </Form.Control>
        </Form.Group>

        <Form.Group>
          <p style={{ marginBottom: "0.5rem" }}>From</p>
          <DatePicker
            selected={fechaNacimientoT1sc}
            onChange={date => setFechaNacimientoT1sc(date)}
            peekNextMonth
            showMonthDropdown
            showYearDropdown
            className="form-control"
            dropdownMode="select"
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <fieldset>
          <Form.Group>
            <Form.Label className="mr-3">Sex</Form.Label>
            <Form.Check
              inline
              type="radio"
              label="M"
              name="sexoT1sc"
              value="Masculino"
              onChange={onChangeT1sc}
              checked={sexoT1sc === "Masculino"}
            />
            <Form.Check
              inline
              type="radio"
              label="F"
              name="sexoT1sc"
              value="Femenino"
              onChange={onChangeT1sc}
              checked={sexoT1sc === "Femenino"}
            />
          </Form.Group>
        </fieldset>
      </Form.Row>
    </>
  )
  // Testigo 2 Segundo Conyugue (t2sc)
  const [t2sc, setT2sc] = useState({
    pNombreT2sc: "",
    sNombreT2sc: "",
    pApellidoT2sc: "",
    sApellidoT2sc: "",
    estadoCivilT2sc: "",
    cedulaT2sc: "",
    sexoT2sc: "",
  })

  const onChangeT2sc = event => {
    setT2sc({
      ...t2sc,
      [event.target.name]: event.target.value,
    })
  }

  const {
    pNombreT2sc,
    sNombreT2sc,
    pApellidoT2sc,
    sApellidoT2sc,
    estadoCivilT2sc,
    cedulaT2sc,
    sexoT2sc,
  } = t2sc

  const [fechaNacimientoT2sc, setFechaNacimientoT2sc] = useState(new Date())

  const t2scForm = () => (
    <>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer nombre"
            name="pNombreT2sc"
            value={pNombreT2sc}
            onChange={onChangeT2sc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo nombre</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo nombre"
            name="sNombreT2sc"
            value={sNombreT2sc}
            onChange={onChangeT2sc}
          />
        </Form.Group>
      </Form.Row>

      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Primer apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Primer apellido"
            name="pApellidoT2sc"
            value={pApellidoT2sc}
            onChange={onChangeT2sc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Segundo apellido</Form.Label>
          <Form.Control
            type="text"
            placeholder="Segundo apellido"
            name="sApellidoT2sc"
            value={sApellidoT2sc}
            onChange={onChangeT2sc}
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <Form.Group as={Col}>
          <Form.Label>Cédula</Form.Label>
          <Form.Control
            type="text"
            placeholder="Cédula"
            name="cedulaT2sc"
            value={cedulaT2sc}
            onChange={onChangeT2sc}
          />
        </Form.Group>

        <Form.Group as={Col}>
          <Form.Label>Estado civil</Form.Label>
          <Form.Control
            as="select"
            defaultValue="Seleccionar..."
            name="estadoCivilT2sc"
            value={estadoCivilT2sc}
            onChange={onChangeT2sc}
          >
            <option>Seleccionar...</option>
            <option value="Soltero">Soltero</option>
            <option value="Casado">Casado</option>
            <option value="Divorciado">Divorciado</option>
            <option value="Viudo">Viudo</option>
          </Form.Control>
        </Form.Group>

        <Form.Group>
          <p style={{ marginBottom: "0.5rem" }}>From</p>
          <DatePicker
            selected={fechaNacimientoT2sc}
            onChange={date => setFechaNacimientoT2sc(date)}
            peekNextMonth
            showMonthDropdown
            showYearDropdown
            className="form-control"
            dropdownMode="select"
          />
        </Form.Group>
      </Form.Row>
      <Form.Row>
        <fieldset>
          <Form.Group>
            <Form.Label className="mr-3">Sex</Form.Label>
            <Form.Check
              inline
              type="radio"
              label="M"
              name="sexoT2sc"
              value="Masculino"
              onChange={onChangeT2sc}
              checked={sexoT2sc === "Masculino"}
            />
            <Form.Check
              inline
              type="radio"
              label="F"
              name="sexoT2sc"
              value="Femenino"
              onChange={onChangeT2sc}
              checked={sexoT2sc === "Femenino"}
            />
          </Form.Group>
        </fieldset>
      </Form.Row>
    </>
  )

  return (
    <Container>
      <Form onSubmit={onSubmit}>
        <h2>Acerca de ti</h2>
        <h3>Tu padre</h3>
        {ppcForm()}

        <h3>Tu madre</h3>
        {mpcForm()}

        <h3>Tu primer testigo</h3>
        {t1pcForm()}

        <h3>Tu segundo testigo</h3>
        {t2pcForm()}

        <h2>Acerca de tu conyugue</h2>
        {scForm()}

        <h3>Su padre</h3>
        {pscForm()}

        <h3>Su madre</h3>
        {mscForm()}

        <h3>Su primer testigo</h3>
        {t1scForm()}

        <h3>Su segundo testigo</h3>
        {t2scForm()}
        <Button variant="primary" type="submit">
          Submit
        </Button>
      </Form>
    </Container>
  )
}

export default connect(null, { createCarta })(CartaSolteria)
