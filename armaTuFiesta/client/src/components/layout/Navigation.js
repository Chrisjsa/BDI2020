import React from "react"
import { Link, withRouter } from "react-router-dom"

import { Navbar, Nav, Button } from "react-bootstrap"

import logo from "../../img/logo.png"

import { connect } from "react-redux"
import { logout } from "../../actions/authActions"

const Navigation = ({ user, logout, history }) => {
  const handleLogin = () => {
    history.push("/login")
  }

  const handleLogout = () => {
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
      <Nav className="mr-auto">{link("/dashboard", "Dashboard")}</Nav>
      <Nav className="mr-auto">{link("/crud_notaria", "Notarias")}</Nav>
      <Nav>
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
        {user.isAuthenticated ? <AuthLinks /> : <GuestLinks />}
      </Navbar>
    </div>
  )
}

const mapStateToProps = state => ({
  user: state.auth,
})

export default withRouter(connect(mapStateToProps, { logout })(Navigation))
