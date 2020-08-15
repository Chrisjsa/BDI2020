import React from "react"
import { Link, withRouter } from "react-router-dom"

import { NavDropdown, Navbar, Nav, Button } from "react-bootstrap"

import logo from "../../img/logo.png"

import { connect } from "react-redux"
import { logout } from "../../state/auth/authActions"

import { clearEventos } from "../../state/evento/eventoActions"

import { checkPermisos } from "../../utils"

const Navigation = ({
  user,
  logout,
  history,
  isAuthenticated,
  clearEventos,
}) => {
  const restriccionesTips = [
    "insertarTip",
    "leerTip",
    "actualizarTip",
    "eliminarTip",
  ]

  const restriccionesPermisos = [
    "leerRoles",
    "asignarRolPermisos",
    "actualizarRol",
    "eliminarRol",
  ]

  const restriccionesNotarias = [
    "insertarNotaria",
    "leerNotaria",
    "actualizarNotaria",
    "eliminarNotaria",
  ]

  const restriccionesClientes = [
    "insertarCliente",
    "leerCliente",
    "actualizarCliente",
    "eliminarCliente",
  ]

  const restriccionesReportes = ["obtenerReporte"]

  const restriccionesAdmin = [
    restriccionesNotarias,
    restriccionesPermisos,
    restriccionesReportes,
    restriccionesTips,
  ]

  const handleLogin = () => {
    history.push("/login")
  }

  const handleLogout = () => {
    clearEventos()
    logout()
    history.push("/")
  }

  const link = (route, text) => (
    <Nav.Link as={Link} to={route}>
      {text}
    </Nav.Link>
  )

  const GuestLinks = () => (
    <>
      <Nav className="mr-auto">
        {link("/", "Home")}
        {link("/about", "Nosotros")}
      </Nav>
      <Nav>
        <Nav.Link className="mr-3" onClick={handleLogin}>
          Inicia sesión o
        </Nav.Link>
        <Button as={Link} to="/register">
          Regístrate
        </Button>
      </Nav>
    </>
  )

  const AuthLinks = () => (
    <>
      <Nav className="mr-auto">
        {link("/dashboard", "Dashboard")} {link("/citas", "Citas")}
      </Nav>
      <Nav>
        <>
          {user &&
            checkPermisos(restriccionesReportes, user.permisos) &&
            link("/reportes", "Reportes")}
          {user &&
            restriccionesAdmin.some(r => checkPermisos(r, user.permisos)) && (
              <NavDropdown title="Administrar" id="basic-nav-dropdown">
                {user &&
                  checkPermisos(restriccionesNotarias, user.permisos) && (
                    <NavDropdown.Item>
                      {link("/crud_notaria", "Notarias")}
                    </NavDropdown.Item>
                  )}
                {user &&
                  checkPermisos(restriccionesClientes, user.permisos) && (
                    <NavDropdown.Item>
                      {link("/crud_cliente", "Clientes")}
                    </NavDropdown.Item>
                  )}
                {user &&
                  checkPermisos(restriccionesPermisos, user.permisos) && (
                    <NavDropdown.Item>
                      {link("/permisos", "Permisos")}
                    </NavDropdown.Item>
                  )}

                {user && checkPermisos(restriccionesTips, user.permisos) && (
                  <NavDropdown.Item>
                    {link("/crud_tip", "Tips")}
                  </NavDropdown.Item>
                )}

                {/* <NavDropdown.Item>
                {link("/metodos_pago", "Métodos de Pago")}
              </NavDropdown.Item> */}
              </NavDropdown>
            )}
        </>
        <Nav.Link onClick={handleLogout}>Cerrar sesión</Nav.Link>
      </Nav>
    </>
  )

  return (
    <div>
      <Navbar bg="light" variant="light" className="justify-content-between">
        <Navbar.Brand className="brand">
          <img src={logo} className="mr-2" alt="Arma Tu Fiesta" />
          <h4>ArmaTuFiesta</h4>
        </Navbar.Brand>
        {isAuthenticated ? <AuthLinks /> : <GuestLinks />}
      </Navbar>
    </div>
  )
}

const mapActionsToProps = {
  logout,
  clearEventos,
}

const mapStateToProps = state => ({
  user: state.auth.user,
  isAuthenticated: state.auth.isAuthenticated,
})

export default withRouter(
  connect(mapStateToProps, mapActionsToProps)(Navigation)
)
