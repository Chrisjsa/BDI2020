import React from "react"
import { Link } from "react-router-dom"

import { Button, Row, Col, Card, Container } from "react-bootstrap"

import ballons from "../../img/ballons.png"
import star from "../../img/star.png"
import sofa from "../../img/sofa.png"

const LandingPage = () => {
  const Feature = ({ imgSrc, name, children }) => (
    <Card>
      <Card.Body className="feature">
        <img src={imgSrc} alt={name}></img>
        <h4>{name}</h4>
        <div>{children}</div>
      </Card.Body>
    </Card>
  )
  return (
    <div>
      <div id="showcase" className="mb-4">
        <div className="dark-overlay">
          <Container>
            <div className="showcase-content">
              <div className="display-1">Arma Tu Fiesta</div>
              <div className="h1">
                La fiesta de tus sueños, en la palma de tus manos
              </div>
              <Button size="lg" className="mt-5" as={Link} to="/login">
                ¡Comenzar ya!
              </Button>
            </div>
          </Container>
        </div>
      </div>

      <Container>
        <Row>
          <Col>
            <Feature imgSrc={ballons} name="Servicios">
              Disfruta de música, catering, mesas de bebidas, fotografía,
              coreografías, y mucho más
            </Feature>
          </Col>
          <Col>
            <Feature imgSrc={star} name="Tips">
              Está siempre al día con recomendaciones y tips de lo que está mas
              a la moda en el mundo de las fiestas. ¡No te quedarás atrás nunca!
            </Feature>
          </Col>
          <Col>
            <Feature imgSrc={sofa} name="Comodidad">
              Organiza la fiesta de tus sueños, a tu medida, desde la comodidad
              de tu hogar. Nosotros nos encargaremos de todo lo demás
            </Feature>
          </Col>
        </Row>
      </Container>
    </div>
  )
}

export default LandingPage
