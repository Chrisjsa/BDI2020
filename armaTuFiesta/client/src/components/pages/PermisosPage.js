import React, { useEffect } from "react"

import { Container, Card, CardDeck } from "react-bootstrap"

import { connect } from "react-redux"

import { leerRolesPermisos } from "../../state/auth/authActions"

import Hero from "../layout/Hero"

const PermisosPage = ({ roles, permisos, leerRolesPermisos }) => {
  useEffect(() => {
    leerRolesPermisos()
  }, [])

  return (
    <Container>
      <Hero firstLine={"Consulta"} secondLine={"Roles y privilegios"} />
      <CardDeck>
        {roles.map(rol => (
          <Card>
            <Card.Header>{rol}</Card.Header>
            <Card.Body>
              <>
                <Card.Text>
                  {permisos
                    .filter(permiso => permiso.rol === rol)
                    .map(permiso => (
                      <p>{permiso.permiso}</p>
                    ))}
                </Card.Text>
              </>
            </Card.Body>
          </Card>
        ))}
      </CardDeck>
    </Container>
  )
}

const mapStateToActions = { leerRolesPermisos }

const mapStateToProps = state => ({
  roles: state.auth.roles,
  permisos: state.auth.permisos,
})

export default connect(mapStateToProps, mapStateToActions)(PermisosPage)
