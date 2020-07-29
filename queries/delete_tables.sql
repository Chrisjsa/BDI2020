SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `caracteristica`        CASCADE;
DROP TABLE IF EXISTS `caracteristica_salon`  CASCADE;
DROP TABLE IF EXISTS `categoria`             CASCADE;
DROP TABLE IF EXISTS `cita`                  CASCADE;
DROP TABLE IF EXISTS `coordenada`            CASCADE;
DROP TABLE IF EXISTS `curso`                 CASCADE;
DROP TABLE IF EXISTS `descuento`             CASCADE;
DROP TABLE IF EXISTS `detalle`               CASCADE;
DROP TABLE IF EXISTS `email`                 CASCADE;
DROP TABLE IF EXISTS `empleado`              CASCADE;
DROP TABLE IF EXISTS `estatus`               CASCADE;
DROP TABLE IF EXISTS `evento`                CASCADE;
DROP TABLE IF EXISTS `horario`               CASCADE;
DROP TABLE IF EXISTS `imagen`                CASCADE;
DROP TABLE IF EXISTS `jefatura`              CASCADE;
DROP TABLE IF EXISTS `locacion`              CASCADE;
DROP TABLE IF EXISTS `lugar`                 CASCADE;
DROP TABLE IF EXISTS `metodo_de_pago`        CASCADE;
DROP TABLE IF EXISTS `notaria`               CASCADE;
DROP TABLE IF EXISTS `orden_evento`          CASCADE;
DROP TABLE IF EXISTS `orden_evento_estatus`  CASCADE;
DROP TABLE IF EXISTS `orden_producto`        CASCADE;
DROP TABLE IF EXISTS `orden_producto_estatus`CASCADE;
DROP TABLE IF EXISTS `orden_producto_pago`   CASCADE;
DROP TABLE IF EXISTS `permiso`               CASCADE;
DROP TABLE IF EXISTS `persona`               CASCADE;
DROP TABLE IF EXISTS `persona_tramite`       CASCADE;
DROP TABLE IF EXISTS `presupuesto`           CASCADE;
DROP TABLE IF EXISTS `presupuesto_estatus`   CASCADE;
DROP TABLE IF EXISTS `presupuesto_pago`      CASCADE;
DROP TABLE IF EXISTS `producto`              CASCADE;
DROP TABLE IF EXISTS `proveedor`             CASCADE;
DROP TABLE IF EXISTS `proveedor_producto`    CASCADE;
DROP TABLE IF EXISTS `proveedor_salon`       CASCADE;
DROP TABLE IF EXISTS `proveedor_servicio`    CASCADE;
DROP TABLE IF EXISTS `punto_de_referencia`   CASCADE;
DROP TABLE IF EXISTS `religion`              CASCADE;
DROP TABLE IF EXISTS `rol`                   CASCADE;
DROP TABLE IF EXISTS `rol_permiso`           CASCADE;
DROP TABLE IF EXISTS `salon_de_fiesta`       CASCADE;
DROP TABLE IF EXISTS `servicio_tercerizado`  CASCADE;
DROP TABLE IF EXISTS `solicitud`             CASCADE;
DROP TABLE IF EXISTS `tarjeta`               CASCADE;
DROP TABLE IF EXISTS `tramite`               CASCADE;
DROP TABLE IF EXISTS `tramite_persona`       CASCADE;
DROP TABLE IF EXISTS `telefono`              CASCADE;
DROP TABLE IF EXISTS `templo`                CASCADE;
DROP TABLE IF EXISTS `templo_horario`        CASCADE;
DROP TABLE IF EXISTS `tip`                   CASCADE;
DROP TABLE IF EXISTS `tramite_carta`         CASCADE;
DROP TABLE IF EXISTS `tramite_estatus`       CASCADE;
DROP TABLE IF EXISTS `transferencia`         CASCADE;
DROP TABLE IF EXISTS `usuario`               CASCADE;
SET FOREIGN_KEY_CHECKS = 1;