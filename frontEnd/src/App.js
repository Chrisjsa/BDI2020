import React from "react"
import "./css/App.scss"
import { BrowserRouter as Router, Route, Switch } from "react-router-dom"

import { Provider } from "react-redux"
import store from "./store"

import LandingPage from "./components/pages/LandingPage"
import AboutPage from "./components/pages/AboutPage"
import DashboardPage from "./components/pages/DashboardPage"
import EventDashboard from "./components/pages/EventDashboard"

import LoginPage from "./components/auth/Login"
import Register from "./components/auth/Register"

import Navigation from "./components/layout/Navigation"

const App = () => {
  return (
    <Provider store={store}>
      <Router>
        <>
          <Navigation />
          <Switch>
            <Route exact path="/" component={LandingPage} />
            <Route exact path="/about" component={AboutPage} />

            <Route exact path="/login" component={LoginPage} />
            <Route exact path="/register" component={Register} />

            <Route exact path="/dashboard" component={DashboardPage} />
            <Route exact path="/events/:id" component={EventDashboard} />
          </Switch>
        </>
      </Router>
    </Provider>
  )
}

export default App
