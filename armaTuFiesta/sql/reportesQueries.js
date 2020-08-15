exports.REPORTE_1 =
  "SET @fecha_a = ?; SET @fecha_b = ?; SELECT COUNT(*) as num_total, MONTHNAME(fecha_realizacion) as Mes FROM arma_tu_fiesta.orden_evento WHERE fecha_realizacion BETWEEN @fecha_a AND @fecha_b GROUP BY (fecha_realizacion);"

exports.REPORTE_2 =
  "SET @fecha_a = ?; SET @fecha_b = ?; SELECT presta.fk_presupuesto as presupuesto, ser.nombre as servicio_contratado, det.costo_unitario, det.cantidad, det.costo, det.precio, presta.fecha as fecha_cancelado, est.nombre as estatus FROM arma_tu_fiesta.estatus as est, arma_tu_fiesta.presupuesto_estatus as presta, arma_tu_fiesta.detalle as det, arma_tu_fiesta.servicio_tercerizado as ser WHERE est.nombre = 'Pagado' AND presta.fk_estatus = est.id_estatus AND presta.fecha BETWEEN @fecha_a AND @fecha_b AND presta.fk_presupuesto = det.fk_presupuesto AND det.fk_servicio IS NOT NULL AND det.fk_servicio = ser.id_servicio;"

exports.REPORTE_3 =
  "SET @fecha_a = ?; SET @fecha_b = ?; SELECT sum(pre.total) as total_ingresos FROM arma_tu_fiesta.estatus as est, arma_tu_fiesta.presupuesto_estatus as presta, arma_tu_fiesta.presupuesto as pre WHERE est.nombre = 'Pagado' AND presta.fk_estatus = est.id_estatus AND presta.fecha BETWEEN @fecha_a AND @fecha_b AND presta.fk_presupuesto = pre.id_presupuesto; SET @fecha_a = ?; SET @fecha_b = ?; SELECT sum(ordpro.total) as total_egresos FROM arma_tu_fiesta.orden_producto as ordpro, arma_tu_fiesta.orden_producto_estatus as ordpag, arma_tu_fiesta.estatus as est WHERE est.nombre = 'Recibido' AND ordpag.fk_estatus = est.id_estatus AND ordpag.fecha BETWEEN @fecha_a AND @fecha_b AND ordpag.fk_orden_producto = ordpro.id_orden_producto;"

exports.REPORTE_4 =
  "SET @fecha_a = ?; SET @fecha_b = ?; SELECT ser.nombre as servicio, sum(det.cantidad) as veces_contratado FROM arma_tu_fiesta.estatus as est, arma_tu_fiesta.presupuesto_estatus as presta, arma_tu_fiesta.detalle as det, arma_tu_fiesta.servicio_tercerizado as ser WHERE est.nombre = 'Pagado' AND presta.fk_estatus = est.id_estatus AND presta.fecha BETWEEN @fecha_a AND @fecha_b AND presta.fk_presupuesto = det.fk_presupuesto AND det.fk_servicio IS NOT NULL AND det.fk_servicio = ser.id_servicio AND ser.nombre NOT LIKE 'Estacion%' GROUP BY ser.nombre ORDER by sum(det.cantidad) DESC LIMIT 10;"

exports.EVENTOS_POR_FECHA =
  "SET @fecha_a = ?; SET @fecha_b = ?; SELECT ordeve.id_orden_evento, eve.nombre as tipo_evento, tem.nombre as tema_evento, ordeve.id_orden_evento as id_evento, ordeve.cantidad_invitados, ordeve.fecha_realizacion, sal.descripcion as nombre_salon, loc.nombre as nombre_localizacion FROM arma_tu_fiesta.orden_evento as ordeve, arma_tu_fiesta.evento as eve, arma_tu_fiesta.tema as tem, arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc WHERE  eve.id_evento = ordeve.fk_evento AND eve.fk_tema = tem.id_tema AND ordeve.fk_locacion = sal.fk_salon AND ordeve.fk_locacion = loc.id_locacion AND ordeve.fecha_realizacion BETWEEN @fecha_a AND @fecha_b ORDER BY ordeve.fecha_realizacion;"

exports.EGRESOS =
  " SET @fecha_a = ?; SET @fecha_b = ?; SELECT sum(ordpro.total) as total_egresos FROM arma_tu_fiesta.orden_producto as ordpro, arma_tu_fiesta.orden_producto_estatus as ordpag, arma_tu_fiesta.estatus as est WHERE est.nombre = 'Recibido' AND ordpag.fk_estatus = est.id_estatus AND ordpag.fecha BETWEEN @fecha_a AND @fecha_b AND ordpag.fk_orden_producto = ordpro.id_orden_producto;"

exports.INGRESOS =
  "SET @fecha_a = ?; SET @fecha_b = ?; SELECT sum(pre.total) as total_ingresos FROM arma_tu_fiesta.estatus as est, arma_tu_fiesta.presupuesto_estatus as presta, arma_tu_fiesta.presupuesto as pre WHERE est.nombre = 'Pagado' AND presta.fk_estatus = est.id_estatus AND presta.fecha BETWEEN @fecha_a AND @fecha_b AND presta.fk_presupuesto = pre.id_presupuesto;"

exports.DETALLE_EGRESOS =
  "SET @fecha_a = ?; SET @fecha_b = ?; " +
  "SELECT met.numero_factura, met.razon, est.nombre as estatus, ordpro.fecha as fecha_pago, ordpro.total as monto FROM arma_tu_fiesta.orden_producto as ordpro, arma_tu_fiesta.orden_producto_estatus as ordest, arma_tu_fiesta.estatus as est, arma_tu_fiesta.orden_producto_pago as ordpag, arma_tu_fiesta.metodo_de_pago as met WHERE est.nombre = 'Recibido' AND ordest.fk_estatus = est.id_estatus AND ordest.fecha BETWEEN @fecha_a AND @fecha_b AND ordest.fk_orden_producto = ordpro.id_orden_producto AND ordpag.fk_orden_producto = ordpro.id_orden_producto AND met.id_metodo = ordpag.fk_pago ORDER BY ordpro.fecha;"

exports.DETALLE_INGRESOS =
  "SET @fecha_a = ?; SET @fecha_b = ?; SELECT met.numero_factura, met.razon, est.nombre as estatus, prepa.fecha as fecha_pago, pre.total as monto FROM arma_tu_fiesta.estatus as est, arma_tu_fiesta.presupuesto_estatus as presta, arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.presupuesto_pago as prepa, arma_tu_fiesta.metodo_de_pago as met WHERE est.nombre = 'Pagado' AND presta.fk_estatus = est.id_estatus AND presta.fecha BETWEEN @fecha_a AND @fecha_b AND presta.fk_presupuesto = pre.id_presupuesto AND prepa.fk_presupuesto = pre.id_presupuesto AND prepa.fk_pago = met.id_metodo;"
