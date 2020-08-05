import React from "react"
import "./css/App.scss"
import { BrowserRouter as Router, Route, Switch } from "react-router-dom"

import { Provider } from "react-redux"
import store from "./store"

import { Container } from "react-bootstrap"

import LandingPage from "./components/pages/LandingPage"
import AboutPage from "./components/pages/AboutPage"
import DashboardPage from "./components/pages/DashboardPage"
import EventDashboard from "./components/pages/EventDashboard"

import CrudNotaria from "./components/notarias/CrudNotaria"
import CrudCliente from "./components/clientes/CrudCliente"
import CrudTip from "./components/tips/CrudTip"

import LoginPage from "./components/auth/Login"
import Register from "./components/auth/Register"

import Navigation from "./components/layout/Navigation"
import ServiceDetail from "./components/services/ServiceDetail"
import NewService from "./components/services/NewService"
import CartaSolteria from "./components/events/CartaSolteria"

import PrivateRoute from "./components/routing/PrivateRoute"

import setAuthToken from "./utils/setAuthToken"

import Test from "./components/Test"

import Alerts from "./components/alerts/Alerts"

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

            <Route exact path="/test" component={Test} />

            <PrivateRoute exact path="/dashboard" component={DashboardPage} />
            <PrivateRoute exact path="/crud_notaria" component={CrudNotaria} />
            <PrivateRoute exact path="/crud_cliente" component={CrudCliente} />
            <PrivateRoute exact path="/crud_tip" component={CrudTip} />
            <PrivateRoute
              exact
              path="/carta_solteria"
              component={CartaSolteria}
            />
            <Route exact path="/events/:id" component={EventDashboard} />

            <Route exact path="/services/:id" component={ServiceDetail} />
            <Route exact path="/newService" component={NewService} />
          </Switch>
        </>
      </Router>
    </Provider>
  )
}

export default App
