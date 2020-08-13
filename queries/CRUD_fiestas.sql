-- LISTAR TIPO DE EVENTO (De aqui se obtiene el nombre del evento para ver los temas que tiene)

SELECT eve.nombre FROM arma_tu_fiesta.evento as eve GROUP BY eve.nombre;

-- LISTAR TEMAS DEL EVENTO SELECCIONADO

SELECT eve.id_evento, eve.nombre, eve.cortejo, tem.nombre
FROM arma_tu_fiesta.evento as eve, arma_tu_fiesta.tema as tem
WHERE eve.nombre = 'NOMBRE_EVENTO' AND eve.fk_tema = tem.id_tema;

-- LISTAR EVENTOS SOLICITADOS POR UN USUARIO

SELECT usu.username, eve.nombre as tipo_evento, tem.nombre as tema_evento, ordeve.id_orden_evento as id_orden_evento, ordeve.cantidad_invitados, ordeve.fecha_realizacion, sal.descripcion as nombre_salon, loc.nombre as nombre_localizacion
FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.orden_evento as ordeve, arma_tu_fiesta.evento as eve, arma_tu_fiesta.tema as tem, arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc
WHERE usu.username = 'amandasuarez@gmail.com' AND usu.id_usuario = ordeve.fk_usuario AND eve.id_evento = ordeve.fk_evento AND eve.fk_tema = tem.id_tema AND ordeve.fk_locacion = sal.fk_salon AND ordeve.fk_locacion = loc.id_locacion;

-- PARAMETRIZAR

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


--