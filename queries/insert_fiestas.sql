SET @freserva = '2020-07-25';
SET @evento = (SELECT pkEvento FROM (SELECT id_evento as pkEvento FROM arma_tu_fiesta.evento WHERE nombre = 'Celebracion' and fk_tema = 1) as tablaEvento);
SET @usuario = (SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'amandasuarez@gmail.com') as tablaUsuario);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Amazonas') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('170',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 170;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90000', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90000') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '91655525', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Anzoátegui') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('120',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 120;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90001', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90001') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '48105221', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Apure') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('160',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 160;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90002', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90002') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '92931394', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Aragua') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('170',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 170;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90003', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90003') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '88619466', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Barinas') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('160',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 160;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90004', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90004') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '53547527', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Bolívar') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('110',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 110;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90005', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90005') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '13198832', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Carabobo') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('170',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 170;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90006', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90006') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '27542623', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Cojedes') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('180',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 180;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90007', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90007') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '88393007', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Delta Amacuro') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('100',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 100;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90008', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90008') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '42476870', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Distrito Capital') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('140',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 140;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90009', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90009') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '74324763', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Falcón') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('100',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 100;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90010', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90010') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '28794119', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Guárico') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('100',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 100;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90011', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90011') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '96326618', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'La Guaira') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('170',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 170;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90012', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90012') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '49209636', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Lara') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('100',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 100;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90013', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90013') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '62258916', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Mérida') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('110',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 110;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90014', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90014') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '56462735', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Miranda') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('160',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 160;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90015', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90015') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '12338774', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Monagas') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('150',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 150;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90016', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90016') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '41462047', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Nueva Esparta') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('150',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 150;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90017', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90017') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '79130394', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Portuguesa') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('150',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 150;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90018', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90018') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '18329181', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Sucre') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('120',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 120;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90019', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90019') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '91620029', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Táchira') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('110',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 110;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90020', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90020') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '67151230', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Trujillo') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('120',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 120;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90021', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90021') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '63591770', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Yaracuy') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('160',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 160;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90022', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90022') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '99531603', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

SET @salon = (SELECT fkSalon FROM (SELECT sal.fk_salon as fkSalon FROM arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE sal.fk_salon = loc.id_locacion AND loc.fk_localizacion = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND esta.nombre = 'Zulia') as tablaSalon);

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES ('140',@freserva,'2020-07-30', @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_salon = @salon) as tablaOrdenEvento);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, '2020-07-30');

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);
SET @presupuesto = (SELECT pkPres FROM (SELECT id_presupuesto as pkPres FROM arma_tu_fiesta.presupuesto WHERE fk_orden_evento = @orden_evento) as tablaPres);

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus,  @freserva);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, '2020-07-28');

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Mesonero') as tablaServicio);
SET @cantidad_ser = 40;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Cocinero') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Sushero') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Barman') as tablaServicio);
SET @cantidad_ser = 8;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Operador de estacion') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Agente de seguridad y vigilancia') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Protocolo') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Asesoria general del evento') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Coordinador de montaje') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de catering') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de festejo') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de mobiliario') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Transporte de tarima toldo pistas') as tablaServicio);
SET @cantidad_ser = 4;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Recarga de transporte') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Montaje y desmontaje') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Estacion de arepas (Precio por persona)') as tablaServicio);
SET @cantidad_ser = 140;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseñador VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Decoradores VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Diseños de Costura VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Modista VIP') as tablaServicio);
SET @cantidad_ser = 10;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Dj Urbano') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @servicio = (SELECT pkServicio FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_servicio as pkServicio, precio as precioUnit FROM arma_tu_fiesta.servicio_tercerizado WHERE nombre = 'Servicio Fotografía Plus') as tablaServicio);
SET @cantidad_ser = 2;
SET @precio = (@cantidad_ser * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_servicio) VALUES (@precio_unit, @cantidad_ser, @precio, @presupuesto, @servicio);

SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @precio_unit = (SELECT precioUnit FROM (SELECT id_producto as pkProducto, precio as precioUnit FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);
SET @cantidad_pro = 25;
SET @precio = (@cantidad_pro * @precio_unit);
INSERT INTO arma_tu_fiesta.detalle (precio_unitario, cantidad, precio, fk_presupuesto, fk_producto) VALUES (@precio_unit, @cantidad_pro, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90023', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90023') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '98726164', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);

