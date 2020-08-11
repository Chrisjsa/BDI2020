-- REPORTE 1 TOTAL DE FIESTAS POR MES

SET lc_time_names
= 'es_ES';

SET @fecha_a = '2020-07-01';
SET @fecha_b = '2020-08-01';

SELECT COUNT(*) as Cantidad_Fiestas, MONTHNAME(fecha_realizacion) as Mes
FROM arma_tu_fiesta.orden_evento
WHERE fecha_realizacion BETWEEN @fecha_a AND @fecha_b
GROUP BY (fecha_realizacion);

-- REPORTE 2 DETALLES DE SERVICIOS POR RANGO DE FECHAS

SET @fecha_a = '2020-07-01';
SET @fecha_b = '2020-08-01';

SELECT presta.fk_presupuesto as presupuesto, ser.nombre as servicio_contratado, det.costo_unitario, det.cantidad, det.costo, det.precio, presta.fecha as fecha_cancelado, est.nombre as estatus
FROM arma_tu_fiesta.estatus as est, arma_tu_fiesta.presupuesto_estatus as presta, arma_tu_fiesta.detalle as det, arma_tu_fiesta.servicio_tercerizado as ser
WHERE est.nombre = 'Pagado' AND presta.fk_estatus = est.id_estatus AND presta.fecha BETWEEN @fecha_a AND @fecha_b AND presta.fk_presupuesto = det.fk_presupuesto AND det.fk_servicio IS NOT NULL AND det.fk_servicio = ser.id_servicio;

-- REPORTE 3 INGRESOS Y EGRESOS POR RANGO DE FECHAS


SET @fecha_a = '2020-07-01';
SET @fecha_b = '2020-08-01';

SELECT sum(pre.total) as total_ingresos
FROM arma_tu_fiesta.estatus as est, arma_tu_fiesta.presupuesto_estatus as presta, arma_tu_fiesta.presupuesto as pre
WHERE est.nombre = 'Pagado' AND presta.fk_estatus = est.id_estatus AND presta.fecha BETWEEN @fecha_a AND @fecha_b AND presta.fk_presupuesto = pre.id_presupuesto;


SET @fecha_a = '2020-07-01';
SET @fecha_b = '2020-08-01';

SELECT sum(ordpro.total) as total_egresos
FROM arma_tu_fiesta.orden_producto as ordpro, arma_tu_fiesta.orden_producto_estatus as ordpag, arma_tu_fiesta.estatus as est
WHERE est.nombre = 'Recibido' AND ordpag.fk_estatus = est.id_estatus AND ordpag.fecha BETWEEN @fecha_a AND @fecha_b AND ordpag.fk_orden_producto = ordpro.id_orden_producto;



-- REPORTE 4 TOP 10 SERVICIOS POR RANGO DE FECHAS


SET @fecha_a = '2020-07-01';
SET @fecha_b = '2020-08-01';

SELECT ser.nombre as servicio, sum(det.cantidad) as veces_contratado
FROM arma_tu_fiesta.estatus as est, arma_tu_fiesta.presupuesto_estatus as presta, arma_tu_fiesta.detalle as det, arma_tu_fiesta.servicio_tercerizado as ser
WHERE est.nombre = 'Pagado' AND presta.fk_estatus = est.id_estatus AND presta.fecha BETWEEN @fecha_a AND @fecha_b AND presta.fk_presupuesto = det.fk_presupuesto AND det.fk_servicio IS NOT NULL AND det.fk_servicio = ser.id_servicio AND ser.nombre NOT LIKE 'Estacion%'
GROUP BY ser.nombre
ORDER by sum(det.cantidad) DESC
LIMIT 10;


-- REPORTE 5 DETALLES DESCUENTOS
