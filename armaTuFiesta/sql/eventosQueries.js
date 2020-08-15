exports.LEER_EVENTOS_POR_USUARIO =
  "SELECT usu.username, eve.nombre as tipo_evento, tem.nombre as tema_evento, ordeve.id_orden_evento as id_evento, ordeve.cantidad_invitados, ordeve.fecha_realizacion, sal.descripcion as descripcion, loc.nombre as salon_fiesta FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.orden_evento as ordeve, arma_tu_fiesta.evento as eve, arma_tu_fiesta.tema as tem, arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc WHERE usu.username = ? AND usu.id_usuario = ordeve.fk_usuario AND eve.id_evento = ordeve.fk_evento AND eve.fk_tema = tem.id_tema AND ordeve.fk_locacion = sal.fk_salon AND sal.fk_salon = loc.id_locacion;"

// exports.LEER_SERVICIOS_EVENTOS =
//   "SET @orden_evento = ?; SELECT pre.fk_orden_evento as id_orden_evento, det.fk_presupuesto as Num_Presupuesto, ser.nombre as 'Servicio/Producto', det.costo_unitario, det.cantidad, det.costo, det.precio as a_cobrar FROM arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.detalle as det, arma_tu_fiesta.servicio_tercerizado as ser WHERE pre.fk_orden_evento = @orden_evento AND det.fk_presupuesto = @presupuesto and det.fk_servicio = ser.id_servicio UNION SELECT pre.fk_orden_evento as id_orden_evento, det.fk_presupuesto as Num_Presupuesto, pro.nombre as 'Servicio/Producto', det.costo_unitario, det.cantidad, det.costo, det.precio as a_cobrar FROM arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.detalle as det, arma_tu_fiesta.producto as pro WHERE pre.fk_orden_evento = @orden_evento AND det.fk_presupuesto = @presupuesto and det.fk_producto = pro.id_producto;"

exports.LEER_SERVICIOS_EVENTOS =
  "SET @orden_evento = 1; SELECT pre.fk_orden_evento as id_orden_evento, det.fk_presupuesto as Num_Presupuesto, ser.nombre as nombre_servicio, cat.nombre as categoria, cat.id_categoria, det.costo_unitario, det.cantidad, det.costo, det.precio as a_cobrar FROM arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.detalle as det, arma_tu_fiesta.servicio_tercerizado as ser, arma_tu_fiesta.categoria as cat WHERE pre.fk_orden_evento = ? AND det.fk_presupuesto = pre.id_presupuesto AND det.fk_servicio = ser.id_servicio AND ser.fk_categoria = cat.id_categoria UNION SELECT pre.fk_orden_evento as id_orden_evento, det.fk_presupuesto as Num_Presupuesto, pro.nombre as 'Servicio/Producto', cat.nombre as categoria, cat.id_categoria, det.costo_unitario, det.cantidad, det.costo, det.precio as a_cobrar FROM arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.detalle as det, arma_tu_fiesta.producto as pro, arma_tu_fiesta.categoria as cat WHERE pre.fk_orden_evento = ? AND det.fk_presupuesto = pre.id_presupuesto AND det.fk_producto = pro.id_producto AND pro.fk_categoria = cat.id_categoria;"

exports.LEER_CATEGORIA = "SELECT nombre FROM categoria ORDER BY 1"

exports.LEER_EVENTOS =
  "SELECT * FROM arma_tu_fiesta.evento as eve GROUP BY eve.nombre;"

exports.LEER_SALONES =
  "SELECT lo.id_locacion, lo.fk_localizacion as fk_lugar, lo.nombre FROM locacion lo INNER JOIN lugar lu ON lo.fk_localizacion = lu.id_lugar WHERE lo.tipo = 'Restaurante'"

exports.CREAR_EVENTOS =
  "SET @freserva = ?; SET @frealizacion = ?; SET @id_evento = ?; SET @id_usuario = ?; SET @salon = ?; SET @numero_invitados = ?; INSERT INTO arma_tu_fiesta.orden_evento (cantidad_invitados, fecha_reserva, fecha_realizacion, fk_usuario, fk_evento, fk_locacion) VALUES (@numero_invitados,@freserva, @frealizacion, @id_usuario, @id_evento, @salon); SET @estatus_evento = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Reservado') as tablaEstatus); INSERT INTO arma_tu_fiesta.orden_evento_estatus (fk_orden_evento, fk_estatus, fecha) VALUES (@orden_evento, @estatus_evento, @freserva); INSERT INTO arma_tu_fiesta.presupuesto (fecha, total, fk_orden_evento) VALUES (@freserva, '0', @orden_evento); SET @estatus_presupuesto = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Solicitado') as tablaEstatus); INSERT INTO arma_tu_fiesta.presupuesto_estatus (fk_presupuesto, fk_estatus, fecha) VALUES (@presupuesto, @estatus_presupuesto, @freserva);"

//[fecha_actual, fecha_realizacion, id_evento, id_usuario, id_locacion, num_invitados]
