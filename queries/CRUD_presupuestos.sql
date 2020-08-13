-- LISTAR TODOS LOS PRESUPUESTOS CON DATOS RELACIONADOS

SELECT usu.username as Usuario, eve.nombre as Evento, tem.nombre as Tema, ordeve.cantidad_invitados as Num_Invitados, ordeve.fecha_realizacion as Fecha_Realizacion, pre.id_presupuesto as Num_Presupuesto, pre.total as Costo_Presupuesto, presta.fecha as Fecha_Presupuesto, est.nombre as Presupuesto_Estatus
FROM arma_tu_fiesta.tema as tem, arma_tu_fiesta.evento as eve, arma_tu_fiesta.orden_evento as ordeve, arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.usuario as usu, arma_tu_fiesta.presupuesto_estatus as presta, arma_tu_fiesta.estatus as est
WHERE eve.fk_tema = tem.id_tema AND ordeve.fk_evento = eve.id_evento AND ordeve.fk_usuario = usu.id_usuario AND pre.fk_orden_evento = ordeve.id_orden_evento AND presta.fk_presupuesto = pre.id_presupuesto AND presta.fk_estatus = est.id_estatus;

-- SELECCIONAR DATOS RELACIONADOS A UN PRESUPUESTO

SET @presupuesto = 25;

SELECT usu.username as Usuario, eve.nombre as Evento, tem.nombre as Tema, ordeve.cantidad_invitados as Num_Invitados, ordeve.fecha_realizacion as Fecha_Realizacion, pre.id_presupuesto as Num_Presupuesto, pre.total as Costo_Presupuesto, presta.fecha as Fecha_Presupuesto, est.nombre as Presupuesto_Estatus
FROM arma_tu_fiesta.tema as tem, arma_tu_fiesta.evento as eve, arma_tu_fiesta.orden_evento as ordeve, arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.usuario as usu, arma_tu_fiesta.presupuesto_estatus as presta, arma_tu_fiesta.estatus as est
WHERE eve.fk_tema = tem.id_tema AND ordeve.fk_evento = eve.id_evento AND ordeve.fk_usuario = usu.id_usuario AND pre.fk_orden_evento = ordeve.id_orden_evento AND pre.id_presupuesto = @presupuesto AND presta.fk_presupuesto = pre.id_presupuesto AND presta.fk_estatus = est.id_estatus;

-- LISTAR PRESUPUESTOS POR ESTATUS

SET @estatus = 'NOMBRE_ESTATUS' COLLATE utf8_unicode_ci;

SELECT usu.username as Usuario, eve.nombre as Evento, tem.nombre as Tema, ordeve.cantidad_invitados as Num_Invitados, ordeve.fecha_realizacion as Fecha_Realizacion, pre.id_presupuesto as Num_Presupuesto, pre.total as Costo_Presupuesto, presta.fecha as Fecha_Presupuesto, est.nombre as Presupuesto_Estatus
FROM arma_tu_fiesta.tema as tem, arma_tu_fiesta.evento as eve, arma_tu_fiesta.orden_evento as ordeve, arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.usuario as usu, arma_tu_fiesta.presupuesto_estatus as presta, arma_tu_fiesta.estatus as est
WHERE eve.fk_tema = tem.id_tema AND ordeve.fk_evento = eve.id_evento AND ordeve.fk_usuario = usu.id_usuario AND pre.fk_orden_evento = ordeve.id_orden_evento AND presta.fk_presupuesto = pre.id_presupuesto AND presta.fk_estatus = est.id_estatus AND est.nombre = @estatus;

-- OBTENER DETALLES DE UN PRESUPUESTO (Productos o Servicios)

SET @orden_evento = 1;

    SELECT pre.fk_orden_evento as id_orden_evento, det.fk_presupuesto as Num_Presupuesto, ser.nombre as 'Servicio/Producto', cat.nombre as categoria, cat.id_categoria, det.costo_unitario, det.cantidad, det.costo, det.precio as a_cobrar
    FROM arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.detalle as det, arma_tu_fiesta.servicio_tercerizado as ser, arma_tu_fiesta.categoria as cat
    WHERE pre.fk_orden_evento = @orden_evento AND det.fk_presupuesto = pre.id_presupuesto AND det.fk_servicio = ser.id_servicio AND ser.fk_categoria = cat.id_categoria
UNION
    SELECT pre.fk_orden_evento as id_orden_evento, det.fk_presupuesto as Num_Presupuesto, pro.nombre as 'Servicio/Producto', cat.nombre as categoria, cat.id_categoria, det.costo_unitario, det.cantidad, det.costo, det.precio as a_cobrar
    FROM arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.detalle as det, arma_tu_fiesta.producto as pro, arma_tu_fiesta.categoria as cat
    WHERE pre.fk_orden_evento = @orden_evento AND det.fk_presupuesto = pre.id_presupuesto AND det.fk_producto = pro.id_producto AND pro.fk_categoria = cat.id_categoria;

SET @orden_evento = 1;
    SELECT pre.fk_orden_evento as id_orden_evento, det.fk_presupuesto as Num_Presupuesto, ser.nombre as 'Servicio/Producto', cat.nombre as categoria, cat.id_categoria, det.costo_unitario, det.cantidad, det.costo, det.precio as a_cobrar
    FROM arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.detalle as det, arma_tu_fiesta.servicio_tercerizado as ser, arma_tu_fiesta.categoria as cat
    WHERE pre.fk_orden_evento = ? AND det.fk_presupuesto = pre.id_presupuesto AND det.fk_servicio = ser.id_servicio AND ser.fk_categoria = cat.id_categoria
UNION
    SELECT pre.fk_orden_evento as id_orden_evento, det.fk_presupuesto as Num_Presupuesto, pro.nombre as 'Servicio/Producto', cat.nombre as categoria, cat.id_categoria, det.costo_unitario, det.cantidad, det.costo, det.precio as a_cobrar
    FROM arma_tu_fiesta.presupuesto as pre, arma_tu_fiesta.detalle as det, arma_tu_fiesta.producto as pro, arma_tu_fiesta.categoria as cat
    WHERE pre.fk_orden_evento = ? AND det.fk_presupuesto = pre.id_presupuesto AND det.fk_producto = pro.id_producto AND pro.fk_categoria = cat.id_categoria;