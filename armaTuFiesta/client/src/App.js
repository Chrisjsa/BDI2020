import React from "react"
import "./css/App.scss"
import { BrowserRouter as Router, Route, Switch } from "react-router-dom"

import { Provider } from "react-redux"
import store from "./store"

import { Container } from "react-bootstrap"

// Pages
import LandingPage from "./components/pages/LandingPage"
import AboutPage from "./components/pages/AboutPage"
import DashboardPage from "./components/pages/DashboardPage"
import Register from "./components/auth/Register"
import LoginPage from "./components/auth/Login"
import PermisosPage from "./components/pages/PermisosPage"
import ReportesPage from "./components/pages/ReportesPage"
import MetodosPage from "./components/pages/MetodosPage"

// Cruds
import CrudNotaria from "./components/notarias/CrudNotaria"
import CrudCliente from "./components/clientes/CrudCliente"
import CrudTip from "./components/tips/CrudTip"

import Navigation from "./components/layout/Navigation"
import CartaSolteria from "./components/eventos/CartaSolteria"

import PrivateRoute from "./components/routing/PrivateRoute"

import setAuthToken from "./utils/setAuthToken"

import EventoProfile from "./components/eventos/EventoProfile"

import Test from "./components/Test"

import Alerts from "./components/alerts/Alerts"
import Reportes from "./components/reportes/Reportes"

if (localStorage.token) {
  setAuthToken(localStorage.token)
}

const App = () => {
  return (
    <Provider store={store}>
      <Router>
        <>
          <Navigation />
          <Container>
            <Alerts />
          </Container>
          <Switch>
            <Route exact path="/" component={LandingPage} />
            <Route exact path="/about" component={AboutPage} />

            <Route exact path="/login" component={LoginPage} />
            <Route exact path="/register" component={Register} />

            <PrivateRoute exact path="/dashboard" component={DashboardPage} />
            <PrivateRoute exact path="/reportes" component={ReportesPage} />
            <PrivateRoute exact path="/crud_notaria" component={CrudNotaria} />
            <PrivateRoute exact path="/crud_cliente" component={CrudCliente} />
            <PrivateRoute exact path="/crud_tip" component={CrudTip} />
            <PrivateRoute exact path="/permisos" component={PermisosPage} />
            <PrivateRoute exact path="/metodos_pago" component={MetodosPage} />
            <PrivateRoute exact path="/evento" component={EventoProfile} />

            <PrivateRoute
              exact
              path="/carta_solteria"
              component={CartaSolteria}
            />
          </Switch>
        </>
      </Router>
    </Provider>
  )
}

export default App
