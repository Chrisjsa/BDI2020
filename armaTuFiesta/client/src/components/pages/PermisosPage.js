import React, { useEffect, useState } from "react"

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

import { leerRolesPermisos } from "../../state/auth/authActions"

import { leerPermisos } from "../../state/rol/rolActions"

import Hero from "../layout/Hero"
import Loading from "../layout/Loading"

import RolItem from "../roles/RolItem"

const PermisosPage = ({
  loadingPermisos,
  leerRolesPermisos,
  permisos,
  leerPermisos,
}) => {
  useEffect(() => {
    leerRolesPermisos()
    leerPermisos()
  }, [])

  const onChange = e => {
    if (currentPermisos.includes(e.target.value))
      setCurrentPermisos(
        currentPermisos.filter(permiso => permiso !== e.target.value)
      )
    else setCurrentPermisos([...currentPermisos, e.target.value])

    console.log(currentPermisos)
  }

  const initialPermisos = [
    "insertarNotaria",
    "eliminarNotaria",
    "actualizarNotaria",
    "leerNotaria",
  ]

  const [roles, setRoles] = useState([
    { id: 1, nombre: "superuser", permisos: initialPermisos },
    {
      id: 2,
      nombre: "cliente",
      permisos: initialPermisos.filter(p => p === "leerNotaria"),
    },
    { id: 3, nombre: "administrador", permisos: initialPermisos },
  ])

  const [nuevoRol, setNuevoRol] = useState("")

  const [currentPermisos, setCurrentPermisos] = useState([
    "insertarNotaria",
    "eliminarNotaria",
    "actualizarNotaria",
    "insertarCliente",
    "leerCliente",
    "insertarEvento",
    "leerServicioTercerizado",
    "insertarProveedor",
  ])

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
          <Form onSubmit={() => {}}>
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
              <Button className="my-4" disabled={nuevoRolValidation}>
                Añadir
              </Button>
            </Form.Group>
          </Form>

          <h2>Roles</h2>
          <Accordion>
            {roles.map(rol => (
              <RolItem rol={rol} />
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
                      value={permiso.nombre}
                      checked={currentPermisos.includes(permiso.nombre)}
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

const mapStateToActions = { leerPermisos, leerRolesPermisos }

const mapStateToProps = state => ({
  roles: state.auth.roles,
  permisos: state.rols.permisos,
  loadingPermisos: state.rols.loading,
})

export default connect(mapStateToProps, mapStateToActions)(PermisosPage)
