import React, { useEffect, useState } from "react"

import _ from "underscore"

import {
  Container,
  Card,
  Form,
  Col,
  Button,
  Row,
  ListGroup,
  ListGroupItem,
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

  const [isConsulta, setIsConsulta] = useState(false)

  const permisosId = arrayOfValues(permisos, "id_permiso")

  const clickRol = rol => {
    setIsConsulta(true)
    setCurrentPermisos(permisosPorRol(rol))
    setNuevoRol(rol)
  }

  const reset = () => {
    setIsConsulta(false)
    setCurrentPermisos([])
    setNuevoRol("")
  }

  const onChange = e => {
    const value = parseInt(e.target.value)

    if (currentPermisos.includes(value))
      setCurrentPermisos(currentPermisos.filter(permiso => permiso !== value))
    else setCurrentPermisos([...currentPermisos, value])

    console.log(currentPermisos)
    console.log(permisosId)
  }

  const agregarRolPermisos = e => {
    console.log({ nombre: nuevoRol, permisos: currentPermisos })
    asignarRolPermisos({ nombre: nuevoRol, permisos: currentPermisos })
    setCurrentPermisos([])
    setNuevoRol("")
    setAlert("Rol creado satisfactoriamente", "success")
    setTimeout(() => {
      leerRolPermisos()
      leerPermisos()
    }, 1000)
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
      <Hero firstLine={"Administración"} secondLine={"Roles y permisos"} />
      <Row>
        <Col xs={3}>
          <Form>
            <Form.Group>
              <Form.Label>
                <h2>Nuevo Rol</h2>
              </Form.Label>
              <Form.Control
                type="text"
                disabled={isConsulta}
                placeholder="Nuevo rol"
                value={nuevoRol}
                onChange={e => setNuevoRol(e.target.value)}
              />
            </Form.Group>
          </Form>

          <h2>Roles</h2>
          <ListGroup>
            {loadingPermisos ? (
              <Loading />
            ) : (
              roles.map(rol => (
                <ListGroup.Item
                  action
                  block
                  variant="link"
                  size="sm"
                  onClick={e => clickRol(rol)}
                >
                  {rol}
                </ListGroup.Item>
              ))
            )}
          </ListGroup>
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
              <Card.Body>
                <div className="text-center mb-3">
                  {isConsulta ? (
                    <>
                      <Button
                        variant="primary"
                        className="mr-2"
                        onClick={e => reset()}
                      >
                        Aceptar
                      </Button>
                    </>
                  ) : (
                    <Button
                      variant="primary"
                      onClick={agregarRolPermisos}
                      disabled={currentPermisos.length === 0}
                    >
                      {currentPermisos.length !== 0
                        ? "Agregar"
                        : "Selecciona al menos un permiso"}
                    </Button>
                  )}
                </div>
                <div className="permisos">
                  {permisos.map(permiso => (
                    <div className="permiso">
                      <Form.Check
                        type="checkbox"
                        disabled={isConsulta}
                        label={permiso.nombre}
                        value={permiso.id_permiso}
                        checked={currentPermisos.includes(permiso.id_permiso)}
                        onChange={onChange}
                      />
                    </div>
                  ))}
                </div>
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
