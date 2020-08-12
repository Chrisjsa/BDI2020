import React, { useEffect, useState } from "react"

import _ from "underscore"

import {
  Container,
  Card,
  CardDeck,
  Form,
  Col,
  Button,
  Row,
  Accordion,
} from "react-bootstrap"

import { connect } from "react-redux"

import {
  leerPermisos,
  asignarRolPermisos,
  leerRolPermisos,
} from "../../state/rol/rolActions"

import Hero from "../layout/Hero"
import Loading from "../layout/Loading"

import RolItem from "../roles/RolItem"

import { arrayOfValues } from "../../utils/"

import { setAlert } from "../../state/alert/alertActions"

const PermisosPage = ({
  loadingPermisos,
  leerRolPermisos,
  permisos,
  leerPermisos,
  asignarRolPermisos,
  setAlert,
  rolesPermisos,
}) => {
  useEffect(() => {
    leerRolPermisos()
    leerPermisos()
  }, [])

  const permisosId = arrayOfValues(permisos, "id_permiso")

  const clickRol = rol => {
    setCurrentPermisos(permisosPorRol(rol))
    setNuevoRol(rol)
  }

  const onChange = e => {
    const value = parseInt(e.target.value)

    if (currentPermisos.includes(value))
      setCurrentPermisos(currentPermisos.filter(permiso => permiso !== value))
    else setCurrentPermisos([...currentPermisos, value])

    console.log(currentPermisos)
    console.log(permisosId)
  }

  const onClick = e => {
    console.log({ nombre: nuevoRol, permisos: currentPermisos })
    asignarRolPermisos({ nombre: nuevoRol, permisos: currentPermisos })
    setCurrentPermisos([])
    setNuevoRol("")
    setAlert("Rol creado satisfactoriamente", "success")
    leerRolPermisos()
    leerPermisos()
  }

  const roles = _.uniq(arrayOfValues(rolesPermisos, "rol"))

  const permisosPorRol = nombreRol => {
    return _.uniq(
      arrayOfValues(
        rolesPermisos.filter(row => row.rol === nombreRol),
        "permiso"
      )
    )
  }

  const [nuevoRol, setNuevoRol] = useState("")

  const [currentPermisos, setCurrentPermisos] = useState([])

  const nuevoRolValidation =
    (nuevoRol === "" || nuevoRol.length < 3) &&
    !Object.keys(roles)
      .map(key => roles[key])
      .includes(nuevoRol)

  return (
    <Container>
      <Hero firstLine={"Administración"} secondLine={"Roles y privilegios"} />
      <Row>
        <Col xs={3}>
          <Form>
            <Form.Group>
              <Form.Label>
                <h2>Nuevo Rol</h2>
              </Form.Label>
              <Form.Control
                type="text"
                placeholder="Nuevo rol"
                value={nuevoRol}
                onChange={e => setNuevoRol(e.target.value)}
              />
              <Button
                onClick={onClick}
                className="my-4"
                disabled={nuevoRolValidation}
              >
                Añadir
              </Button>
            </Form.Group>
          </Form>

          <h2>Roles</h2>
          <Accordion>
            {roles.map(rol => (
              <Button
                block
                variant="link"
                size="sm"
                onClick={e => clickRol(rol)}
              >
                {rol}
              </Button>
            ))}
          </Accordion>
        </Col>
        <Col>
          <h2 className={nuevoRolValidation}>Permisos</h2>
          {nuevoRolValidation ? (
            <div style={{ minHeight: "600px" }} className="text-center">
              Inserta el nombre de una notaria para asignar sus permisos
              <br />
              (Debe ser mayor a tres caracteres)
            </div>
          ) : loadingPermisos ? (
            <Loading />
          ) : (
            <Card>
              <Card.Body className="permisos">
                {permisos.map(permiso => (
                  <div className="permiso">
                    <Form.Check
                      type="checkbox"
                      label={permiso.nombre}
                      value={permiso.id_permiso}
                      checked={currentPermisos.includes(permiso.id_permiso)}
                      onChange={onChange}
                    />
                  </div>
                ))}
              </Card.Body>
            </Card>
          )}
        </Col>
      </Row>
    </Container>
  )
}

const mapStateToActions = {
  leerPermisos,
  leerRolPermisos,
  asignarRolPermisos,
  setAlert,
}

const mapStateToProps = state => ({
  rolesPermisos: state.rols.rolesPermisos,
  permisos: state.rols.permisos,
  loadingPermisos: state.rols.loading,
})

export default connect(mapStateToProps, mapStateToActions)(PermisosPage)
