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

import Hero from "../layout/Hero"

import RolItem from "../roles/RolItem"

const PermisosPage = ({ leerRolesPermisos }) => {
  useEffect(() => {
    leerRolesPermisos()
  }, [])

  const onChange = e => {
    if (permisos.includes(e.target.value))
      setPermisos(permisos.filter(permiso => permiso !== e.target.value))
    else setPermisos([...permisos, e.target.value])
  }

  const initialPermisos = [
    "insertarNotaria",
    "eliminarNotaria",
    "actualizarNotaria",
    "leerNotaria",
  ]

  // <Form.Check inline label="1" type={type} id={`inline-${type}-1`} />

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

  const [permisos, setPermisos] = useState([
    "insertarNotaria",
    "eliminarNotaria",
    "actualizarNotaria",
    "leerNotaria",
    "insertarCliente",
    "eliminarCliente",
    "actualizarCliente",
    "leerCliente",
    "insertarEvento",
    "eliminarEvento",
    "actualizarEvento",
    "leerEvento",
    "insertarServicioTercerizado",
    "eliminarServicioTercerizado",
    "actualizarServicioTercerizado",
    "leerServicioTercerizado",
    "insertarProveedor",
    "eliminarProveedor",
    "actualizarProveedor",
    "leerProveedor",
  ])

  const nPermisos = () => Math.floor(permisos.length())

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
          ) : (
            <Card>
              <Card.Body className="permisos">
                {permisos.map(permiso => (
                  <div className="permiso">
                    <Form.Check type="checkbox" label={permiso} />
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

const mapStateToActions = { leerRolesPermisos }

const mapStateToProps = state => ({
  roles: state.auth.roles,
  permisos: state.auth.permisos,
})

export default connect(mapStateToProps, mapStateToActions)(PermisosPage)
