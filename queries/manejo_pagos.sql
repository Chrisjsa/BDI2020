-- Listar pagos por transferencia de un usuario

SET @usuario = 10;

SELECT usu.username, ordeve.id_orden_evento, ordeve.fecha_realizacion as fecha_evento, pre.id_presupuesto, prepa.monto, prepa.fecha as fecha_pago, met.numero_factura, met.banco, met.razon, tra.numero_comprobante as comprobante_transferencia
FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.orden_evento as ordeve, arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.presupuesto_pago as prepa, arma_tu_fiesta.metodo_de_pago as met, arma_tu_fiesta.transferencia as tra
WHERE usu.id_usuario = @usuario AND ordeve.fk_usuario = usu.id_usuario AND pre.fk_orden_evento = ordeve.id_orden_evento AND prepa.fk_presupuesto = pre.id_presupuesto AND met.id_metodo = prepa.fk_pago AND tra.fk_pago = met.id_metodo;

-- Listar pagos por tarjeta de un usuario


SET @usuario = 10;

SELECT usu.username, ordeve.id_orden_evento, ordeve.fecha_realizacion as fecha_evento, pre.id_presupuesto, prepa.monto, prepa.fecha as fecha_pago, met.numero_factura, met.banco, met.razon, tar.numero_cuenta as numero_tarjeta
FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.orden_evento as ordeve, arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.presupuesto_pago as prepa, arma_tu_fiesta.metodo_de_pago as met, arma_tu_fiesta.tar as tar
WHERE usu.id_usuario = @usuario AND ordeve.fk_usuario = usu.id_usuario AND pre.fk_orden_evento = ordeve.id_orden_evento AND prepa.fk_presupuesto = pre.id_presupuesto AND met.id_metodo = prepa.fk_pago AND tar.fk_pago = met.id_metodo;