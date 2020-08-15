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


-- INSERTAR ORDEN EVENTO

SET @freserva = FECHA_ACTUAL;
SET @frealizacion = FECHA_REALIZACION;
SET @id_evento = ID_EVENTO;
SET @id_usuario = ID_USUARIO;
SET @salon = ID_SALON;
SET @numero_invitados = NUMERO_INVITADOS;

INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_salon) VALUES (@numero_invitados,@freserva, @frealizacion, @usuario, @evento, @salon);
SET @orden_evento = (SELECT pkOE FROM (SELECT id_orden_evento as pkOE FROM arma_tu_fiesta.orden_evento WHERE fk_usuario = @usuario AND fk_evento = @evento AND fk_locacion = @salon) as tablaOrdenEvento);

SET @estatus_evento = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus_evento, @freserva);

INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento);

SET @estatus_presupuesto = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus_presupuesto,  @freserva);

-- CAMBIAR ESTATUS DE ORDEN EVENTO A CONFIRMADO (ESTO CAMBIO SOLO SE DA AL APROBAR PRESUPUESTO)

SET @orden_evento = ID_ORDEN_EVENTO;
SET @fecha_actual = FECHA_ACTUAL;
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Confirmado') as tablaEstatus);

INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @fecha_actual);

-- CAMBIAR ESTATUS A REALIZADO CUANDO LA FECHA DEL EVENTO PASE

SET @orden_evento = ID_ORDEN_EVENTO;
SET @fecha_actual = FECHA_ACTUAL;
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Realizado') as tablaEstatus);

INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus, @fecha_actual);

-- CAMBIAR ESTATUS DE PRESUPUESTO A PAGADO

SET @presupuesto = ID_PRESUPUESTO;
SET @fecha_pago = FECHA_ACTUAL;
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pagado') as tablaEstatus);

INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus, @fecha_pago);

-- AGREGAR SERVICIO A EVENTO

SET @presupuesto = ID_PRESUPUESTO;

SET @servicio = ID_SERVICIO;
SET @costo_unit = COSTO_SERVICIO;
SET @cantidad_ser = CANTIDAD;
SET @costo = (@cantidad_ser * @precio_unit);
SET @precio = @costo + @costo*0.30;

INSERT INTO arma_tu_fiesta.detalle (costo_unitario, cantidad, costo, precio, fk_presupuesto, fk_servicio) VALUES (@costo_unit, @cantidad_ser, @costo, @precio,  @presupuesto, @servicio);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);

UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

-- AGREGAR PRODUCTO A EVENTO

SET @presupuesto = ID_PRESUPUESTO;

SET @producto = ID_PRODUCTO;
SET @costo_unit = COSTO_UNIDAD;
SET @cantidad_pro = CANTIDAD;
SET @costo = (@cantidad_pro * @costo_unit);
SET @precio = @costo + @costo*0.30;
INSERT INTO arma_tu_fiesta.detalle (costo_unitario, cantidad, costo, precio, fk_presupuesto, fk_producto) VALUES (@costo_unit, @cantidad_pro, @costo, @precio, @presupuesto, @producto);

SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre);
UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;

-- PARAMETRIZAR

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90000', 'Pago de Evento', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90000') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '91655525', '2020-07-28', 'Pago por servicios adquiridos');
SET @totalPagar = (SELECT totalPagar FROM (SELECT total as totalPagar FROM arma_tu_fiesta.presupuesto WHERE id_presupuesto = @presupuesto) as tablaPres);
INSERT INTO arma_tu_fiesta.presupuesto_pago (fecha, monto, fk_presupuesto, fk_pago) VALUES ('2020-07-28', @totalPagar, @presupuesto, @metodo);


--