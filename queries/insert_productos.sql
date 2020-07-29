SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa redonda', 'Mesa redonda de 8 puestos', '0', '90.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '9000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('1', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '1') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '15897243', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '9000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '8100.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('2', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '2') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '87221056', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '8100.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa cuadrada de teka', 'Mesa cuadrada de teka de 8 personas 1.20 x 1.20', '0', '320.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa cuadrada de teka') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '9600.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('3', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '3') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '84677177', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '9600.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '3200.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('4', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '4') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '15224664', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '3200.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Manteleria base y tope infantil', 'Alquiler manteleria base y tope unicolor para infantiles', '0', '120.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Manteleria base y tope infantil') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '7200.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('5', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '5') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '61037694', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '7200.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '10800.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('6', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '6') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '56857875', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '10800.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Manteleria base y tope de lujo', 'Alquiler manteleria base y tope unicolor de lujo', '0', '150.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Manteleria base y tope de lujo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '13500.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('7', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '7') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '18039042', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '13500.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '9000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('8', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '8') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '55042793', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '9000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa cuadrada revestida', 'Mesa cuadrada revestida de telas de colores', '0', '350.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa cuadrada revestida') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '14000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('9', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '9') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '39206895', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '14000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '24500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('10', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '10') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '68024013', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '24500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Ganchos y apliques para manteleria triple', 'Alquiler y montaje de ganchos y apliques para manteleria triple', '0', '80.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Ganchos y apliques para manteleria triple') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '5600.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('11', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '11') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '61592914', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5600.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '6400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('12', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '12') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '86116737', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '6400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Caminos de mesas unicolores o tematicos para mesas cuadradas', 'Alquiler caminos de mesas unicolores o tematicos para mesas cuadradas', '0', '70.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Caminos de mesas unicolores o tematicos para mesas cuadradas') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '4900.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('13', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '13') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '39394755', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '4900.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '5600.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('14', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '14') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '41250902', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5600.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Caminos para meson rectangular', 'Alquiler de caminos de organza yute fuchsia verde pistacho marron para menson rectangular', '0', '75.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Caminos para meson rectangular') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '3000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('15', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '15') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '75306842', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '3000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '2250.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('16', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '16') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '56458687', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '2250.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa redonda para torta y dulces', 'Mesa redonda para tortas y dulces', '0', '75.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa redonda para torta y dulces') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '750.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('17', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '17') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '79361420', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '750.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '6000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('18', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '18') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '63620057', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '6000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Manteleria base y tope para mesa de torta infantil', 'Alquiler manteleria base y tope para mesas de tortas infantiles', '0', '120.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Manteleria base y tope para mesa de torta infantil') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '4800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('19', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '19') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '13067275', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '4800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '8400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('20', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '20') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '23500210', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '8400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Alquiler manteleria base y tope para mesa de torta de lujo', 'Alquiler manteleria base y tope para mesas de tortas de lujos', '0', '150.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Alquiler manteleria base y tope para mesa de torta de lujo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '7500.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('21', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '21') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '18420341', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '7500.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '1500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('22', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '22') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '31142546', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Meson tradicional para buffet', 'Alquiler de meson tradicional para buffet / estacion mesa de quesos postres torta crepps', '0', '110.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Meson tradicional para buffet') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '11000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('23', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '23') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '54976177', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '11000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '6600.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('24', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '24') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '25079673', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '6600.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mantel y faldon para mesa rectangular', 'Mantel y faldon para mesa rectangular / mesa principal', '0', '150.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mantel y faldon para mesa rectangular') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '15000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('25', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '25') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '62661193', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '15000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '4500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('26', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '26') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '72316306', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '4500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46911798-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Silla paris sola', 'Alquiler silla paris sola', '0', '8.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Silla paris sola') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '640.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('27', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '27') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '45038336', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '640.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '800.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('28', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '28') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '35696555', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '800.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46911798-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Silla paris con forro', 'Silla paris con forro', '0', '15.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Silla paris con forro') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '1050.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('29', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '29') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '18448680', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1050.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '600.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('30', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '30') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '90638830', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '600.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46911798-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Silla paris con forro y lazo', 'Silla paris con forro y lazo', '0', '20.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Silla paris con forro y lazo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '600.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('31', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '31') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '85161075', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '600.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '800.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('32', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '32') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '31906822', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '800.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46911798-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Silla tiffany dorada sin lazo', 'Silla tiffany dorada sin lazo', '0', '22.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Silla tiffany dorada sin lazo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '660.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('33', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '33') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '12421262', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '660.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '440.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('34', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '34') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '78240645', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '440.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46911798-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Silla tiffany plateada sin lazo', 'Silla tiffany plateada sin lazo', '0', '35.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Silla tiffany plateada sin lazo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '1400.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('35', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '35') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '13630910', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1400.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '700.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('36', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '36') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '57467771', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '700.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46911798-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Silla tiffany blanca sin lazo', 'Silla tiffany blanca sin lazo', '0', '40.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Silla tiffany blanca sin lazo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '2800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('37', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '37') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '20913174', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '2800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '1200.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('38', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '38') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '95557742', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1200.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46911798-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Lazo de razo para silla tiffany', 'Lazo de razo para silla tiffany', '0', '10.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Lazo de razo para silla tiffany') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '1000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('39', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '39') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '66479601', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '200.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('40', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '40') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '94719967', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '200.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46911798-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Trenzado o montaje especial de lazos para sillas tiffany', 'Trenzado o montaje especial de lazos para sillas tiffany', '0', '6.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Trenzado o montaje especial de lazos para sillas tiffany') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '540.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('41', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '41') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '61501183', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '540.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '360.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('42', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '42') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '46068122', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '360.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Meson rectangular blanco con base de color', 'Meson rectangular con base de color', '0', '300.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Meson rectangular blanco con base de color') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '12000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('43', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '43') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '46632893', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '12000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '24000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('44', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '44') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '51664781', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '24000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Meson rectangular revestido', 'Meson rectangular revestido con telas de colores', '0', '450.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Meson rectangular revestido') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '22500.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('45', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '45') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '36200396', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '22500.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '22500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('46', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '46') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '98182740', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '22500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa de estilo ultra lounge de madera colonial', 'Mesa de estilo ultra lounge de madera colonial para estaciones mesa de postres o ceremonia', '0', '600.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa de estilo ultra lounge de madera colonial') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '42000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('47', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '47') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '94552312', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '42000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '6000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('48', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '48') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '88450608', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '6000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Puff elite semicuero blanco 1 puesto sin espaldar', 'Puff elite semicuero blanco de 1 puesto sin espaldar', '0', '60.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Puff elite semicuero blanco 1 puesto sin espaldar') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '600.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('49', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '49') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '54947439', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '600.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '2400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('50', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '50') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '71672233', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '2400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Puff elite semicuero blanco 1 puesto con espaldar', 'Puff elite semicuero blanco de 1 puesto con espaldar', '0', '70.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Puff elite semicuero blanco 1 puesto con espaldar') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '1400.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('51', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '51') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '38365032', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1400.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '4900.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('52', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '52') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '19782297', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '4900.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Puff elite semicuero blanco 2 puestos sin espaldar', 'Puff elite semicuero blanco de 2 puestos sin espaldar', '0', '130.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Puff elite semicuero blanco 2 puestos sin espaldar') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '13000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('53', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '53') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '52216786', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '13000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '6500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('54', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '54') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '36862600', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '6500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Puff elite semicuero blanco 2 puestos con espaldar', 'Puff elite semicuero blanco de 2 puestos con espaldar', '0', '145.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Puff elite semicuero blanco 2 puestos con espaldar') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '5800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('55', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '55') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '43494808', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '13050.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('56', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '56') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '71575885', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '13050.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Puff elite redondo 4 puestos', 'Puff elite redondo 4 puestos blanco y negro', '0', '350.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Puff elite redondo 4 puestos') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '28000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('57', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '57') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '43871337', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '28000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '14000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('58', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '58') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '27270685', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '14000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Cama en semicuero blanca capitoneada', 'Cama en semicuero blanca capitoneada para 4 personas patas cromadas', '0', '380.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Cama en semicuero blanca capitoneada') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '22800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('59', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '59') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '43770567', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '22800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '22800.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('60', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '60') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '76240984', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '22800.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa baja no iluminada', 'Mesa baja no iluminada color cafe tostado y tope blanco', '0', '80.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa baja no iluminada') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '8000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('61', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '61') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '39669731', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '8000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '2400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('62', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '62') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '47140936', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '2400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa baja de madera', 'Mesa baja de madera Precio engue o blanca', '0', '80.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa baja de madera') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '5600.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('63', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '63') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '71181553', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5600.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '8000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('64', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '64') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '24832449', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '8000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Divan en semicuero blanco', 'Divan en semicuero blancp para set fotografico', '0', '1200.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Divan en semicuero blanco') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '48000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('65', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '65') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '70447586', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '48000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '84000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('66', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '66') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '83148019', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '84000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Barra de tragos iluminada', 'Barra de tragos iluminada blanca', '0', '990.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Barra de tragos iluminada') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '29700.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('67', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '67') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '26044689', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '29700.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '39600.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('68', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '68') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '37635571', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '39600.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Barra de tragos ilumindad led', 'Barra de tragos ilumindad de led de colores', '0', '1200.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Barra de tragos ilumindad led') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '96000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('69', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '69') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '71846010', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '96000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '12000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('70', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '70') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '37806087', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '12000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa coctelera de aluminio', 'Mesa coctelera de aluminio', '0', '95.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa coctelera de aluminio') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '5700.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('71', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '71') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '57768584', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5700.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '2850.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('72', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '72') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '17379303', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '2850.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Alquiler de butacas', 'Alquiler de butacas blancas o plateadas capitoneadas (Minimo 12)', '0', '180.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Alquiler de butacas') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '5400.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('73', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '73') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '58255945', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5400.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '5400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('74', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '74') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '48154808', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Alquiler de sillas o butacas lounge con respaldar', 'Butacas o sillas con estilo ultra lounge con respaldar', '0', '180.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Alquiler de sillas o butacas lounge con respaldar') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '12600.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('75', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '75') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '40179184', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '12600.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '5400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('76', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '76') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '35943820', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Chaise ultra lounge', 'Alquiler de chaise ultra lounge', '0', '180.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Chaise ultra lounge') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '14400.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('77', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '77') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '86692695', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '14400.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '9000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('78', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '78') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '81940181', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '9000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mobiliario lounge clasico', 'Alquiler de mobiliario lounge clasico', '0', '80.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mobiliario lounge clasico') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '6400.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('79', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '79') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '37237111', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '6400.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '5600.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('80', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '80') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '53124329', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5600.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Puff multiforma', 'Puff multifomar de colores', '0', '80.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Puff multiforma') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '6400.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('81', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '81') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '78176122', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '6400.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '1600.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('82', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '82') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '25881915', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1600.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Puff capitoneado', 'Puff capitoneado blanco negro plateado (MINIMO 12 )', '0', '180.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Puff capitoneado') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '10800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('83', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '83') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '53820137', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '10800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '9000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('84', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '84') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '32845357', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '9000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa alta tipo coctel', 'Mesa alta tipo coctel vestidas con mantel y lazo', '0', '180.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa alta tipo coctel') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '10800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('85', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '85') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '75972888', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '10800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '10800.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('86', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '86') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '59695068', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '10800.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesas cocteleras iluminadas', 'Mesas cocteleras iluminadas de 6 o 8 puestos blancas', '0', '750.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesas cocteleras iluminadas') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '30000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('87', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '87') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '54045309', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '30000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '60000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('88', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '88') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '73697718', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '60000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Sillas de altura tipo banqueta', 'Sillas de altura tipo banqueta blanca', '0', '100.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Sillas de altura tipo banqueta') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '2000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('89', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '89') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '14052023', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '2000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '7000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('90', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '90') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '18290713', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '7000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Alquiler de Sombrilla', 'Sombrilla 25 x 25 beige verde terracota sin punto de luz', '0', '250.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Alquiler de Sombrilla') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '17500.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('91', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '91') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '50621465', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '17500.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '25000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('92', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '92') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '36102926', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '25000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76352593-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Alquiler y montaje bano portatil', 'Alquiler y montaje de banos portatiles', '0', '1800.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Alquiler y montaje bano portatil') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '180000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('93', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '93') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '14638208', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '180000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '36000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('94', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '94') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '33047704', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '36000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-18023173-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa de vidrio cuadrada sin iluminacion', 'Mesa de vidrio cuadrada sin iluminacion', '0', '580.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa de vidrio cuadrada sin iluminacion') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '46400.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('95', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '95') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '58556303', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '46400.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '17400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('96', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '96') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '42404589', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '17400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-18023173-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa de vidrio cuadrada con iluminacion', 'Mesa de vidrio cuadrada con iluminacion', '0', '650.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa de vidrio cuadrada con iluminacion') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '13000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('97', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '97') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '56755130', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '13000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '26000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('98', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '98') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '12090773', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '26000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-18023173-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa de vidrio rectangular sin iluminacion', 'Mesa de vidrio rectangular sin iluminacion', '0', '600.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa de vidrio rectangular sin iluminacion') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '6000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('99', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '99') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '75019242', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '6000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '54000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('100', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '100') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '84229609', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '54000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-71348958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa de vidrio rectangular con iluminacion', 'Mesa de vidrio rectangular con iluminacion', '0', '700.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa de vidrio rectangular con iluminacion') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '56000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('101', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '101') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '20430150', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '56000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '42000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('102', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '102') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '47603738', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '42000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-71348958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa baja de acrilico transparente', 'Mesa baja de acrilico transparente', '0', '85.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa baja de acrilico transparente') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '2550.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('103', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '103') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '55304956', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '2550.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '850.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('104', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '104') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '90974601', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '850.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-71348958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesa coctelera de acrilico', 'Mesa coctelera de acrilico transparente con para cromada ajustable', '0', '250.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesa coctelera de acrilico') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '5000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('105', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '105') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '64203040', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '15000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('106', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '106') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '28477769', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '15000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tequenos doble queso', 'Tequenos doble queso', '0', '7.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tequenos doble queso') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '630.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('107', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '107') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '98306131', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '630.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '70.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('108', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '108') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '58621604', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '70.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tequenos capresa', 'Tequenos capresa', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tequenos capresa') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '450.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('109', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '109') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '86840438', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '450.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '630.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('110', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '110') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '51301018', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '630.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tequenos ricotta y espinaca', 'Tequenos ricotta y espinaca', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tequenos ricotta y espinaca') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '900.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('111', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '111') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '27058772', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '900.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '180.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('112', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '112') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '24166961', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '180.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tequenos salchichon y queso crema', 'Tequenos salchichon y queso crema', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tequenos salchichon y queso crema') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '540.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('113', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '113') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '48790212', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '540.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '900.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('114', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '114') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '10503813', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '900.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tequenos jamon y queso', 'Tequenos jamon y queso', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tequenos jamon y queso') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '810.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('115', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '115') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '93433471', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '810.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '720.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('116', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '116') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '48441868', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '720.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tequenos guayaba y queso', 'Tequenos guayaba y queso', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tequenos guayaba y queso') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '630.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('117', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '117') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '52348835', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '630.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '90.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('118', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '118') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '26805230', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '90.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tequenos platano con queso', 'Tequenos platano con queso', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tequenos platano con queso') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '270.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('119', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '119') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '35640580', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '270.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '90.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('120', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '120') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '47663599', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '90.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tequenos manzana caramelizada con queso', 'Tequenos manzana caramelizada con queso', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tequenos manzana caramelizada con queso') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '180.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('121', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '121') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '83434751', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '180.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '90.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('122', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '122') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '83287978', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '90.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tequenos de chocolate', 'Tequenos de chocolate', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tequenos de chocolate') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '90.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('123', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '123') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '40112714', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '90.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '450.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('124', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '124') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '32393666', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '450.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tequenos de nutella', 'Tequenos de nutella', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tequenos de nutella') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '840.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('125', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '125') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '29072711', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '840.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '600.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('126', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '126') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '17220211', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '600.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Croqueta de papa', 'Croqueta de papa (salsa sugerida: Mayonesa de ajo y perejil)', '0', '6.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Croqueta de papa') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '480.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('127', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '127') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '98113578', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '480.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '600.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('128', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '128') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '62726166', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '600.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Croqueta de pescado', 'Croqueta de pescado (salsa sugeridad: tartara)', '0', '7.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Croqueta de pescado') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '630.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('129', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '129') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '30725004', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '630.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '350.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('130', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '130') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '55218835', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '350.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Croqueta de camaron', 'Croqueta de camaron (salsa sugeridad: mayonesa de curry)', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Croqueta de camaron') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '630.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('131', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '131') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '28488146', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '630.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '540.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('132', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '132') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '29490772', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '540.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Croqueta de pollo', 'Croqueta de pollo (salsa sugeridad: dijonesa)', '0', '7.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Croqueta de pollo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '70.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('133', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '133') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '24419395', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '70.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '280.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('134', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '134') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '94629222', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '280.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Croqueta de atun', 'Croqueta de atun (salsa sugeridad: salsa citrica)', '0', '8.5', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Croqueta de atun') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '255.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('135', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '135') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '84349796', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '255.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '170.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('136', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '136') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '72309222', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '170.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Croqueta de salmon', 'Croqueta de salmon (salsa sugeridad: mayonesa de eneldo)', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Croqueta de salmon') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '360.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('137', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '137') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '65007218', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '360.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '600.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('138', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '138') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '41088077', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '600.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Croqueta de cerdo y pistacho', 'Croqueta de cerdo y pistacho (salsa sugeridad: reduccion de oporto)', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Croqueta de cerdo y pistacho') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '720.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('139', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '139') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '60591355', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '720.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '270.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('140', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '140') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '69347794', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '270.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tartaleta de ajoporro', 'Tartaleta de ajoporro', '0', '6.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tartaleta de ajoporro') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '240.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('141', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '141') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '61556131', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '240.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '540.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('142', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '142') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '69999056', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '540.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tartaleta de crema de pimenton asado', 'Tartaleta de crema de pimenton asado', '0', '7.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tartaleta de crema de pimenton asado') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '280.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('143', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '143') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '36704377', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '280.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '490.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('144', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '144') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '20755181', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '490.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tartaleta de champinones', 'Tartaleta de champinones', '0', '8.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tartaleta de champinones') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '240.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('145', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '145') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '54690292', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '240.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '640.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('146', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '146') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '86295304', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '640.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tartaleta de camaron', 'Tartaleta de camaron', '0', '9.5', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tartaleta de camaron') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '475.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('147', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '147') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '53386843', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '475.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '190.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('148', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '148') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '94874688', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '190.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tartaleta de atun', 'Tartaleta de atun', '0', '8.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tartaleta de atun') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '320.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('149', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '149') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '25514481', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '320.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '320.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('150', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '150') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '50164201', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '320.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tartaleta de anchoa', 'Tartaleta de anchoa', '0', '9.5', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tartaleta de anchoa') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '570.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('151', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '151') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '16581170', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '570.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '665.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('152', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '152') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '36474434', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '665.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tartaleta de salchichon', 'Tartaleta de salchichon', '0', '6.5', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tartaleta de salchichon') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '65.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('153', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '153') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '54839620', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '65.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '585.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('154', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '154') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '50571982', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '585.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Shot de ceviche con fruta exotica', 'shot de ceviche con fruta exotica', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Shot de ceviche con fruta exotica') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '480.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('155', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '155') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '46524984', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '480.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '960.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('156', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '156') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '47500378', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '960.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Shot de csalpicon de mariscos', 'shot de salpicon de mariscos', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Shot de csalpicon de mariscos') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '360.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('157', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '157') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '70878052', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '360.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '840.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('158', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '158') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '61652908', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '840.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Shot de vieiras a la naranja', 'shot de vieiras a la naranja', '0', '13.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Shot de vieiras a la naranja') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '130.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('159', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '159') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '81367037', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '130.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '1170.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('160', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '160') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '31223872', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1170.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Shot de pescado thal', 'shot de pescado thal', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Shot de pescado thal') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '120.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('161', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '161') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '93412456', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '120.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '960.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('162', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '162') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '81140599', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '960.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Shot de coctel de camarones', 'shot de coctel de camarones', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Shot de coctel de camarones') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '1200.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('163', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '163') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '71771646', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1200.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '1200.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('164', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '164') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '56742469', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1200.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Shot de antipasto de berenjena', 'shot de antipasto de berenjena', '0', '10.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Shot de antipasto de berenjena') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '300.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('165', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '165') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '49018928', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '300.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '700.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('166', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '166') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '26469307', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '700.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Shot de antipasto de pimenton', 'shot de antipasto de pimenton', '0', '10.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Shot de antipasto de pimenton') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '200.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('167', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '167') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '24297156', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '200.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('168', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '168') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '45222438', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Shot de vegetales mixtos', 'shot de vegetales mixtos', '0', '10.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Shot de vegetales mixtos') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '300.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('169', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '169') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '23455403', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '300.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '200.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('170', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '170') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '88093329', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '200.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Shot de ensalada de atun', 'shot de ensalada de atun', '0', '10.5', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Shot de ensalada de atun') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '420.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('171', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '171') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '97660830', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '420.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '105.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('172', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '172') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '85211872', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '105.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Bolitas de queso con salsa de papelon', 'bolitas de queso con salsa de papelon', '0', '7.5', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Bolitas de queso con salsa de papelon') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '525.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('173', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '173') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '19814318', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '525.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '750.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('174', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '174') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '90069617', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '750.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Kibbe frito', 'Kibbe frito (Salsa recomendada: salsa de ajonjoli)', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Kibbe frito') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '720.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('175', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '175') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '22787092', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '720.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '240.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('176', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '176') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '10709734', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '240.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Falafel', 'Falafel (Salsa recomendada: salsa de ajonjoli)', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Falafel') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '480.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('177', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '177') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '33394772', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '480.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '1080.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('178', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '178') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '73644561', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1080.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Nugget de pollo', 'Nugget de pollo (Salsa recomendada: BBQ)', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Nugget de pollo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '120.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('179', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '179') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '75312576', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '120.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '840.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('180', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '180') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '58518212', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '840.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Salsa pequena', 'Salsa pequena para 50 pasapalos', '0', '50.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Salsa pequena') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '3500.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('181', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '181') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '31610020', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '3500.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '1500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('182', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '182') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '15004477', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Salsa mediana', 'Salsa mediana para 100 pasapalos', '0', '70.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Salsa mediana') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '2100.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('183', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '183') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '48275395', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '2100.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '6300.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('184', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '184') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '52723711', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '6300.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Salsa grande', 'Salsa grande para 200 pasapalos', '0', '130.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Salsa grande') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '1300.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('185', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '185') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '90973966', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1300.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '13000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('186', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '186') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '81610778', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '13000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-91281193-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Bandeja para llevar', 'Bandeja para llevar capacidad de 30 unidades', '0', '50.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Bandeja para llevar') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '1000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('187', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '187') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '56877809', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '4000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('188', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '188') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '82589617', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '4000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini bronies', 'Mini bronies', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini bronies') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '840.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('189', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '189') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '60008643', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '840.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '840.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('190', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '190') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '90294097', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '840.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini tartaleta de frutas con crema pastelera', 'Mini tartaleta de frutas con crema pastelera (fresasmelocotoneskiPrecio isuvas)', '0', '14.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini tartaleta de frutas con crema pastelera') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '840.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('191', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '191') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '10605568', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '840.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '700.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('192', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '192') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '59726581', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '700.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini tartaleta de frutas con crema pastelera de chocolate', 'Mini tartaleta de frutas con crema pastelera de chocolate', '0', '14.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini tartaleta de frutas con crema pastelera de chocolate') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '1260.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('193', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '193') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '33869752', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1260.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '980.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('194', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '194') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '37878939', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '980.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini tartaleta de limon', 'Mini tartaleta de limon con glaceado de malvavisco y teja de almendra', '0', '15.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini tartaleta de limon') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '450.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('195', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '195') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '23889564', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '450.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '450.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('196', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '196') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '85424709', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '450.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini tartaleta de nutella y frutas', 'Mini tartaleta de nutella y frutas', '0', '14.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini tartaleta de nutella y frutas') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '560.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('197', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '197') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '23723894', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '560.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '700.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('198', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '198') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '25508841', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '700.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini tartaleta de nutella o arequipe', 'Mini tartaleta de nutella o arequipe y almendra caramelizada', '0', '14.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini tartaleta de nutella o arequipe') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '980.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('199', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '199') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '99930847', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '980.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '420.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('200', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '200') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '25011259', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '420.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini shots de mouse de chocolate', 'Mini shots de mouse de chocolate con merengue y pirulin', '0', '15.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini shots de mouse de chocolate') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '1350.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('201', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '201') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '24534676', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1350.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '600.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('202', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '202') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '70460516', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '600.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini shots de biscocho', 'Mini shots de biscocho con culis de fresa y chantilly', '0', '15.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini shots de biscocho') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '900.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('203', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '203') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '43329412', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '900.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '1350.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('204', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '204') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '13343292', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1350.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini pincho de jamon serrano', 'Mini pincho de jamon serrano y bolitas de melon', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini pincho de jamon serrano') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '270.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('205', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '205') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '53014822', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '270.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '270.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('206', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '206') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '29012724', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '270.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini pincho de salmon', 'Mini pincho de salmon y crujiente de yuca (salsa recomendada: mayonesa de aji)', '0', '14.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini pincho de salmon') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '1260.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('207', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '207') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '75369334', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1260.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '700.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('208', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '208') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '80912572', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '700.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini pincho de jamon serrano y queso manchego', 'Mini pincho de jamon serrano queso manchego tomates cherry y pina', '0', '11.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini pincho de jamon serrano y queso manchego') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '440.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('209', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '209') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '70454795', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '440.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '1100.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('210', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '210') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '60041257', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1100.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini pincho de lomito', 'Mini pincho de lomito (salsa recomendada: pisto)', '0', '8.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini pincho de lomito') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '160.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('211', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '211') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '92018374', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '160.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('212', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '212') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '46862795', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini pincho de pollo', 'Mini pincho de pollo (salsa recomendada: pisto)', '0', '8.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini pincho de pollo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '80.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('213', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '213') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '66890313', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '80.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '640.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('214', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '214') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '43435792', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '640.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini pincho mixto', 'Mini pincho de misxto(carne y pollo) (salsa recomendada: pisto)', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini pincho mixto') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '540.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('215', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '215') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '93086991', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '540.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '450.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('216', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '216') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '53148187', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '450.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini pincho de langostino tempurizado', 'Mini pincho de langostino tempurizado (salsa recomendada: teriyaki)', '0', '13.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini pincho de langostino tempurizado') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '1300.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('217', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '217') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '50136207', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1300.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '780.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('218', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '218') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '86893003', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '780.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini pincho de camaron', 'Mini pincho de camaron y crujiente de arroz japones (salsa recomendada: chutney de pina y gengibre)', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini pincho de camaron') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '1200.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('219', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '219') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '89435830', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1200.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '480.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('220', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '220') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '42322675', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '480.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini filet de mignon', 'Mini filet mignon (salsa recomendada: champinon)', '0', '8.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini filet de mignon') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '640.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('221', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '221') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '66039247', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '640.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '320.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('222', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '222') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '27095920', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '320.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini filet mignon de pollo', 'Mini filet mignon de pollo(salsa recomendada: champinon)', '0', '8.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini filet mignon de pollo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '240.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('223', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '223') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '94685298', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '240.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '560.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('224', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '224') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '48383350', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '560.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Bolitas de carne con centro de queso mozzarella', 'Bolitas de carne con centro de queso mozzarella (salsa recomendada: napole)', '0', '7.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Bolitas de carne con centro de queso mozzarella') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '210.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('225', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '225') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '33876923', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '210.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '630.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('226', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '226') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '21781315', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '630.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Bolitas de pollo con centro de pistacho', 'Bolitas de pollo con centro de pistacho (salsa recomendada: mayonesa de ajo y perejil)', '0', '8.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Bolitas de pollo con centro de pistacho') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '400.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('227', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '227') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '64320299', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '400.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '240.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('228', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '228') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '34955876', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '240.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Bolitas de carne de cerdo con centro de nuez', 'Bolitas de carne de cerdo con centro de nuez', '0', '8.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Bolitas de carne de cerdo con centro de nuez') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '320.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('229', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '229') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '43368532', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '320.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '720.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('230', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '230') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '92543035', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '720.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Bolitas de cangrejo', 'Bolitas de cangrejo (salsa recomendada: mayonesa de ostras)', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Bolitas de cangrejo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '240.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('231', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '231') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '22198698', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '240.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '840.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('232', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '232') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '37717911', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '840.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Bolitas de yuca y rocoto', 'Bolitas de yuca y rocoto (salsa recomendada: papelon)', '0', '8.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Bolitas de yuca y rocoto') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '160.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('233', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '233') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '76541264', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '160.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('234', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '234') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '71769111', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Champinon relleno de chorizo', 'champinon relleno de chorizo y aceitunas negras (salsa recomendada: vino tinto)', '0', '10.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Champinon relleno de chorizo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '600.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('235', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '235') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '15641314', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '600.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('236', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '236') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '94980761', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Champinon crocante', 'Champinon crocante (salsa recomendada: mango)', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Champinon crocante') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '360.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('237', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '237') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '29949258', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '360.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '450.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('238', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '238') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '97157171', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '450.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tomates cherrys relleno de mouse de atun', 'Tomates cherrys relleno de mouse de atun', '0', '13.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tomates cherrys relleno de mouse de atun') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '650.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('239', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '239') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '66737461', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '650.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '1170.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('240', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '240') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '77600341', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1170.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tomates de cherry relleno de mouse de camaron', 'Tomates de cherry relleno de mouse de camaron', '0', '13.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tomates de cherry relleno de mouse de camaron') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '1170.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('241', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '241') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '35805828', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1170.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '910.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('242', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '242') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '15773710', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '910.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini lumpias', 'Mini lumpias', '0', '12.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini lumpias') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '960.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('243', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '243') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '29124167', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '960.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '1200.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('244', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '244') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '48983270', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1200.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini cachapas con queso', 'Mini cachapas con queso', '0', '6.5', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini cachapas con queso') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '130.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('245', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '245') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '16833265', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '130.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '195.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('246', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '246') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '37012008', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '195.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini cachapas con pernil', 'Mini cachapas con pernil', '0', '7.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini cachapas con pernil') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '280.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('247', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '247') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '60596049', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '280.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '70.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('248', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '248') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '30351100', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '70.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini arepitas crujientes de reina', 'Mini arepitas crujientes de reina', '0', '7.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini arepitas crujientes de reina') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '280.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('249', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '249') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '57674674', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '280.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '70.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('250', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '250') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '14059563', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '70.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini arepitas crujientes de pollo', 'Mini arepitas crujientes de pollo', '0', '7.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini arepitas crujientes de pollo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '420.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('251', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '251') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '96333444', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '420.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '70.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('252', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '252') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '50609360', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '70.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini arepitas crujientes de queso palmita', 'Mini arepitas crujientes de queso palmita', '0', '7.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini arepitas crujientes de queso palmita') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '490.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('253', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '253') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '94433278', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '490.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '70.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('254', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '254') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '21737665', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '70.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini arepitas crujientes de queso gouda amarillo', 'Mini arepitas crujientes de queso gouda amarillo', '0', '7.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini arepitas crujientes de queso gouda amarillo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '630.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('255', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '255') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '15687220', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '630.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '420.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('256', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '256') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '96229276', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '420.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-88857690-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mini arepitas crujientes con carne mechada', 'Mini arepitas crujientes con carne mechada', '0', '7.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mini arepitas crujientes con carne mechada') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '700.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('257', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '257') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '85544653', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '700.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '700.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('258', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '258') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '76919066', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '700.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Platos llanos redondo', 'Platos llanos redondo para buffet \ estacion', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Platos llanos redondo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '360.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('259', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '259') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '20907239', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '360.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '270.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('260', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '260') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '76830370', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '270.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Platos llanos redondo de postre', 'Platos llanos redondo para postre \ estacion de queso', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Platos llanos redondo de postre') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '630.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('261', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '261') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '53463821', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '630.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '450.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('262', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '262') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '63714710', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '450.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Platos llanos cuadrado', 'Platos llanos cuadrado para buffet \ estacion', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Platos llanos cuadrado') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '540.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('263', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '263') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '40281807', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '540.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '270.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('264', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '264') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '40016837', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '270.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Platos llanos cuadrado de postre \ queso', 'Platos llanos cuadrado para postres \ estacion de queso', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Platos llanos cuadrado de postre \ queso') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '450.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('265', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '265') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '98495970', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '450.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '810.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('266', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '266') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '33414384', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '810.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Bowl redondo tipo ensaladera', 'Bowl redondo tipo ensaladera o soperas', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Bowl redondo tipo ensaladera') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '270.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('267', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '267') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '74282057', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '270.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '180.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('268', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '268') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '96177135', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '180.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Taza para consome', 'Taza para consome o chupe con plato de base', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Taza para consome') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '90.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('269', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '269') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '44067569', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '90.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '540.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('270', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '270') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '58888664', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '540.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Taza para cafe y te', 'Taza para cafe o te pequena', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Taza para cafe y te') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '450.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('271', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '271') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '34205219', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '450.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '90.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('272', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '272') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '29338183', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '90.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Vasos de vidrio', 'Vasos de vidrio de 12 onzas (cajas de 48 unidades)', '0', '8.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Vasos de vidrio') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '80.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('273', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '273') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '66643440', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '80.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '800.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('274', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '274') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '28441985', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '800.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Copa de vino tinto o agua', 'Copa de vino tinto o agua (caja de 24 unidades)', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Copa de vino tinto o agua') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '180.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('275', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '275') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '98835380', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '180.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '270.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('276', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '276') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '51618958', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '270.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Copa de vino blanco', 'Copa de vino blanco', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Copa de vino blanco') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '630.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('277', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '277') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '52265635', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '630.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '90.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('278', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '278') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '95312828', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '90.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Copa de champane', 'Copa de champane', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Copa de champane') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '540.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('279', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '279') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '45911793', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '540.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '810.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('280', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '280') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '94954761', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '810.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Vaso tequilero', 'Vaso tequilero', '0', '5.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Vaso tequilero') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '100.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('281', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '281') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '99600119', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '100.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '150.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('282', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '282') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '71276131', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '150.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Copa de martini', 'Copa de martini', '0', '10.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Copa de martini') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('283', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '283') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '56364784', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '100.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('284', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '284') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '28382820', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '100.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Chiller para ceviche', 'Chiller para ceviche \ coctel de camarones \ postre', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Chiller para ceviche') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '180.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('285', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '285') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '44972653', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '180.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '90.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('286', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '286') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '58519774', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '90.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tenedores regulares', 'Tenedores de tamano regular', '0', '6.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tenedores regulares') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '420.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('287', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '287') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '12378614', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '420.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '480.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('288', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '288') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '13795155', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '480.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tenedor pequeno para ceviche', 'Tenedor pequeno tipo lunch para ceviche', '0', '6.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tenedor pequeno para ceviche') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '420.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('289', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '289') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '23810357', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '420.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '420.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('290', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '290') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '43768470', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '420.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Cuchillos', 'Cuchillos', '0', '6.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Cuchillos') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '360.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('291', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '291') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '23427039', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '360.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '540.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('292', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '292') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '71778314', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '540.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Cuchillo para queso', 'Cuchillo para queso', '0', '6.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Cuchillo para queso') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '300.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('293', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '293') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '51157440', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '300.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '120.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('294', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '294') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '92307702', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '120.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Cucharas', 'Cucharas', '0', '6.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Cucharas') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '420.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('295', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '295') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '13651422', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '420.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '300.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('296', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '296') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '19504198', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '300.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Cucharilla para postre', 'Cucharilla para postre', '0', '6.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Cucharilla para postre') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '540.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('297', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '297') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '53832396', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '540.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '240.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('298', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '298') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '76165926', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '240.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Trinche para torta', 'Trinche para torta', '0', '15.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Trinche para torta') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '600.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('299', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '299') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '15829203', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '600.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '750.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('300', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '300') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '55563651', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '750.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Trinches variados', 'Trinches variados 3 cucharones y 1 pinza', '0', '15.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Trinches variados') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '900.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('301', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '301') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '68706229', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '900.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '1200.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('302', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '302') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '59224109', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1200.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Cesta para pan de banquete', 'Cesta para pan de banquete con servilleta de tela', '0', '15.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Cesta para pan de banquete') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '600.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('303', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '303') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '33494634', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '600.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '1500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('304', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '304') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '49074932', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Hielera con pinza', 'Hielera con pinza', '0', '40.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Hielera con pinza') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '4000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('305', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '305') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '37394178', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '4000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '2000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('306', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '306') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '69400324', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '2000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Jarras para agua o jugo', 'Jarras para agua o jugo', '0', '15.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Jarras para agua o jugo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '600.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('307', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '307') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '35485876', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '600.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '1200.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('308', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '308') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '69028141', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1200.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Cecineros', 'Ceniceros', '0', '5.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Cecineros') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '300.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('309', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '309') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '69923578', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '300.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '200.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('310', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '310') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '35160519', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '200.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Cocina completa con utensilios sin aceite', 'Cocina completa con utensilios sin aceite', '0', '9.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Cocina completa con utensilios sin aceite') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '360.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('311', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '311') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '85052104', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '360.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '450.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('312', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '312') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '15147057', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '450.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Cocina completa con utensilios doble hornilla', 'Cocina completa con utensilios doble hornilla sin aceite', '0', '260.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Cocina completa con utensilios doble hornilla') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '20800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('313', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '313') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '52869280', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '20800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '13000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('314', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '314') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '96333510', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '13000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Deposito de hielo', 'Deposito de hielo', '0', '300.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Deposito de hielo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '27000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('315', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '315') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '19160703', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '27000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '15000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('316', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '316') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '44766488', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '15000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Deposito de basura', 'Deposito de basura', '0', '30.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Deposito de basura') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '1800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('317', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '317') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '97488920', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '3000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('318', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '318') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '30447368', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '3000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Bandeja de servicios', 'Bandeja de servicios', '0', '20.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Bandeja de servicios') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('319', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '319') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '34784264', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '1600.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('320', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '320') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '57260161', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1600.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Bandeja de pasapalos de porcelana', 'Bandeja de pasapalos de porcelana', '0', '20.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Bandeja de pasapalos de porcelana') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '2000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('321', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '321') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '88188793', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '2000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('322', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '322') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '48210734', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Mesonero barman cocinero', 'Mesonero cocinero barman x 7 horas', '0', '750.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Mesonero barman cocinero') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '75000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('323', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '323') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '74336903', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '75000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '52500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('324', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '324') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '75373942', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '52500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Chafing dish de acero sin quemadores', 'Chafing dish de acero sin quemadores', '0', '200.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Chafing dish de acero sin quemadores') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '6000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('325', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '325') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '52778977', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '6000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '12000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('326', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '326') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '54364726', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '12000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Termos dispensadores', 'Termos dispensadores para jugos y bebidas transparentes', '0', '200.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Termos dispensadores') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '18000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('327', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '327') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '92974762', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '18000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '4000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('328', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '328') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '83065710', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '4000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Vidrios torres y cilindros', 'Alquiler de vidrios torres y cilindros para montaje de cupcakes', '0', '50.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Vidrios torres y cilindros') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '500.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('329', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '329') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '78596093', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '500.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '4000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('330', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '330') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '91714020', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '4000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tablas para quesos', 'Tablas para quesos', '0', '15.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tablas para quesos') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('20', '300.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('331', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '331') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '92112046', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '300.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '1350.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('332', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '332') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '56404528', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1350.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-86662934-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Rejillas tipo parabanes', 'Rejillas tipo parabanes para delimitar area de servicio cada hoja de 1 metro', '0', '150.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Rejillas tipo parabanes') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '7500.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('333', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '333') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '11092073', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '7500.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '13500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('334', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '334') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '31591443', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '13500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Toldo convencional liso 8 x 12', 'Toldo convencional liso 8 x 12', '0', '4900.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Toldo convencional liso 8 x 12') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '343000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('335', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '335') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '45109036', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '343000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '490000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('336', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '336') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '47742008', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '490000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Toldo convencional liso 12 x 12', 'Toldo convencional liso 12 x 12', '0', '9970.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Toldo convencional liso 12 x 12') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '398800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('337', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '337') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '97213952', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '398800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '697900.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('338', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '338') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '63547300', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '697900.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Toldo convencional liso 5 x 10', 'Toldo convencional liso 5 x 10', '0', '3500.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Toldo convencional liso 5 x 10') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '175000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('339', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '339') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '91475457', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '175000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('30', '105000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('340', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '340') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '49406391', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '105000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Toldo convencional liso 8 x 8', 'Toldo convencional liso 8 x 8', '0', '3900.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Toldo convencional liso 8 x 8') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '351000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('341', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '341') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '36524845', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '351000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '312000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('342', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '342') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '96942064', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '312000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Toldo convencional liso 6 x 12', 'Toldo convencional liso 6 x 12', '0', '4500.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Toldo convencional liso 6 x 12') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '450000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('343', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '343') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '77970914', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '450000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '225000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('344', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '344') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '19779310', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '225000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Toldo pequeno', 'Toldo pequeno', '0', '2500.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Toldo pequeno') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '225000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('345', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '345') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '45477323', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '225000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '125000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('346', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '346') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '36064723', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '125000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-71233951-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Toldo convencional drapeado 8 x 12', 'Toldo convencional drapeado 8 x 12', '0', '6900.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Toldo convencional drapeado 8 x 12') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '69000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('347', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '347') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '39612643', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '69000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '552000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('348', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '348') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '27172142', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '552000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-71233951-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Toldo convencional drapeado 12 x 12', 'Toldo convencional drapeado 12 x 12', '0', '13800.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Toldo convencional drapeado 12 x 12') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '690000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('349', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '349') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '44504883', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '690000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '1242000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('350', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '350') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '65622918', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '1242000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-71233951-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Toldo convencional drapeado 5 x 12', 'Toldo convencional drapeado 5 x 12', '0', '5800.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Toldo convencional drapeado 5 x 12') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '522000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('351', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '351') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '13134780', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '522000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '58000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('352', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '352') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '65833912', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '58000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-71233951-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Toldo convencional drapeado 8 x 8', 'Toldo convencional drapeado 8 x 8', '0', '6000.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Toldo convencional drapeado 8 x 8') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '60000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('353', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '353') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '34341127', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '60000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '60000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('354', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '354') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '88755592', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '60000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-71233951-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Toldo convencional drapeado 6 x 12', 'Toldo convencional drapeado 6 x 12', '0', '6900.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Toldo convencional drapeado 6 x 12') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '345000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('355', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '355') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '48783310', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '345000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '552000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('356', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '356') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '41155212', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '552000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Luces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-27153177-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Luces indirectas para toldos', 'Luces indirectas para toldos', '0', '180.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Luces indirectas para toldos') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '18000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('357', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '357') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '25007552', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '18000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '10800.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('358', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '358') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '42236328', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '10800.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Luces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-27153177-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Canales para toldos', 'Canales para toldos', '0', '200.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Canales para toldos') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '14000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('359', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '359') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '32634210', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '14000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '8000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('360', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '360') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '92678478', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '8000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Luces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-27153177-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Galones de colores para toldos', 'Galones de colores para toldos', '0', '250.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Galones de colores para toldos') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '10000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('361', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '361') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '67446952', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '10000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '20000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('362', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '362') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '63098043', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '20000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Luces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54013984-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Lona lateral para toldo', 'Lona lateral para toldo', '0', '300.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Lona lateral para toldo') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '21000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('363', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '363') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '42466629', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '21000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '18000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('364', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '364') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '80084959', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '18000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Tarimas') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-23598196-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Pista de baile x metro cuadrado', 'Pista de baile x metro cuadrado', '0', '280.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Pista de baile x metro cuadrado') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('80', '22400.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('365', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '365') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '67292504', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '22400.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '25200.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('366', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '366') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '85625683', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '25200.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Tarimas') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-70316264-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Tarima', 'Tarima de 75 cms de altura para grupo musical / DJ / otros x mt2', '0', '280.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Tarima') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('60', '16800.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('367', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '367') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '24588074', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '16800.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('40', '11200.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('368', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '368') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '13422911', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '11200.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Personal de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76735699-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesonero', 'Mesonero', '850.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Personal de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76735699-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Cocinero', 'Cocinero', '850.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Personal de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76735699-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Sushero', 'Sushero', '1000.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Personal de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76735699-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Barman', 'Barman', '900.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Personal de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76735699-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Operador de estacion', 'Operador de estacion o carrito fiestero', '850.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Personal de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76735699-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Agente de seguridad y vigilancia', 'Agente de seguridad y vigilancia', '4500.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Personal de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76735699-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Protocolo', 'Protocolo', '2500.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Personal de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76735699-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Asesoria general del evento', 'Asesoria general del evento', '4000.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Personal de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-76735699-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Coordinador de montaje', 'Coordinador de montaje (1 dia antes) logistica el dia del evento desmontaje (1 dia despues)', '3500.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Transporte') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-97245992-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Transporte de catering', 'Transporte de catering', '500.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Transporte') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-97245992-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Transporte de festejo', 'Transporte de festejo desde', '1000.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Transporte') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-97245992-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Transporte de mobiliario', 'Transporte de mobiliario desde', '1000.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Transporte') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-97245992-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Transporte de tarima toldo pistas', 'Transporte de tarima toldos y pistas de baile desde', '800.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Transporte') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-97245992-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Recarga de transporte', 'Recarga de transporte por zona foranea (depende de la zona) desde', '500.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Transporte') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-97245992-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Montaje y desmontaje', 'Montaje y desmontaje depende de la cantidad de material (desde 400)', '400.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de arepas (Precio por persona)', '(Requiere un minimo de 40 personas, 2 mesones vestidos, 1 operador, transporte, punto de electricidad, area techada) 2 arepas medianas por persona, guiso de carne mechada, guiso de pollo, jamon, queso blanco, queso amarillo, reina pepeada, mantequilla, platos plasticos, servilletas, utensilios', '80.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de cachapas (Precio por persona)', '(Requiere un minimo de 40 personas, 2 mesones vestidos, 1 operador, transporte, punto de electricidad, area techada) 2 cachapas por personas, queso de mano, mantequilla, platos y cubiertos plasticos, servilletas, utensilios', '80.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de arepas y cachapas (Precio por persona)', '(Requiere un minimo de 40 personas, 2 mesones vestidos, 1 operador, transporte, punto de electricidad, area techada) 2 arepas o cachapas por personas', '150.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de creppes (Precio por persona)', '(Requiere un minimo de 40 personas, 2 mesones vestidos, 1 operador, transporte, 2 puntos de electricidad separados, area techada) 2 crepes por personas, crepes de cremas de champinon, crepes 3 quesos, pollo a la mostaza, nutella, meson, creperas, platos y cubiertos de plastico', '180.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de pizza (Precio por persona)', '(Requiere un minimo de 70 personas, 2 operadores, transporte, area techada) 2 pizzas 8" por persona base margarita, peperoni, jamon ,maiz, tomate en ruedas, champinones, cebolla, aceitunas negras, pimenton, queso parmesano rallado', '180.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion del mar (Precio por persona)', '(Requiere un minimo de 40 personas, 2 mesones vestidos, area de servicio, 1 operador, transporte, area techada) ceviche de pescado de mango, ceviche de vieiras a la naranja, salpicon de mariscos, crocantes, copas plasticas, cucharitas plasticas, servilleteros, utensilios', '180.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-52176636-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion Thai (Precio por persona)', '(Requiere un minimo de 40 personas, 2 mesones vestidos, area de servicio, 2 mesones area de cocina, 1 mesonero, 1 cocinero, transporte, area techada de trabajo, alquiler de cubiertos y vajillas) pollo al curry, lomito thal, arroz salvaje, arroz basmati o jasmin, utensilios', '250.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-52176636-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de sushi basica (Precio por persona)', '(Requiere un minimo de 50 personas, 2 mesones vestidos, o barra iluminada, 1 sushero, transporte, area techada, alquiler de vajillas) 1,5 roles de 8 piezas por persona, arroz japones, noris, akame, salmon, atun, camarones tempurizados, camarones sin tempurizar, aguacate, queso crema, pepino, salsas: soya, dinamita, anguila, especial, salseras, platos y palitos', '230.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-52176636-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Montaje de mesa de mini dulces', '(Requiere alquiler de meson de preferencia, seleccion de mini dulces, area techada y transporte) alturas de vidrio, montaje', '900.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-52176636-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de hamburguesa (Precio por hamburguesa)', '(Requiere un minimo de 70 personas, 2 mesones vestidos, 1 punto de luz, 1 operador, transporte, area techada) 1 hamburguesa por persona, pan bimbo, queso, tocineta, tomate, lechuga, 3 salsas clasicas, 1 salsa especial, plancha, utensilios', '80.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-52176636-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Estacion de hamburguesa plus (Precio por hamburguesa)', '(Requiere un minimo de 60 hamburguesas, 2 mesones vestidos, 1 punto de luz, 1 operador, transporte, area techada) 1 hamburguesa base de carne, 1 hamburguesa base de pollo, panes artesanales medianos, Extras al guiso: queso, tocineta', '0', '120.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Estacion de hamburguesa plus (Precio por hamburguesa)') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '6000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('369', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '369') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '21093301', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '6000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('70', '8400.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('370', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '370') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '75395855', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '8400.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-52176636-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de sandwiches (Precio por sandwich)', '(Requiere un minimo de 70 personas, 2 mesones vestidos, 1 punto de luz, 1 operador, transporte, area techada) 1.5 sandwiches por persona, queso gouda amarillo, jamon de pierna y de pavo, salchichon, pollo al grill, atun, tomate en aceite de oliva, tomate confitados, pimentones asados, champinones, cebolla caramelizada, pepinillos y aceitunas, mesclum de lechugas, alfalfa, 3 salsas clasicas, plancha, utensilios', '90.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Bebidas') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-18354783-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Botella de Ron Santa Teresa', 'Contenido Neto 0,70 l', '0', '50.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Botella de Ron Santa Teresa') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '5000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('371', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '371') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '51050326', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '4500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('372', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '372') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '53372538', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '4500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Bebidas') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-18354783-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Botella de Vodka Gordons', 'Contenido Neto 0,70 l', '0', '50.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Botella de Vodka Gordons') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('100', '5000.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('373', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '373') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '87602396', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '5000.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('10', '500.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('374', 'Compra de productos', 'Provincial');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '374') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '76668427', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '500.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Bebidas') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-40008490-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, cantidad, precio, fk_categoria) VALUES ('Botella de Whiskey Jack Daniels', 'Contenido Neto 0,70 l', '0', '80.0', @categoria);
SET @producto = (SELECT pkProducto FROM (SELECT id_producto as pkProducto FROM arma_tu_fiesta.producto WHERE nombre = 'Botella de Whiskey Jack Daniels') as tablaProducto);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('90', '7200.0', '2020-07-25', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-25') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-25' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('375', 'Compra de productos', 'Banesco');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '375') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '24519772', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '7200.0', @orden, @metodo);

INSERT INTO arma_tu_fiesta.orden_producto (cantidad, total, fecha, fk_proveedor, fk_producto) VALUES ('50', '4000.0', '2020-07-28', @proveedor, @producto);
SET @orden = (SELECT pkOrden FROM (SELECT id_orden_producto as pkOrden FROM arma_tu_fiesta.orden_producto WHERE fk_producto = @producto AND fk_proveedor = @proveedor AND fecha = '2020-07-28') as tablaOrden);
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Pedido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-28' );
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.orden_producto_estatus (fk_orden_producto, fk_estatus, fecha) VALUES (@orden, @estatus, '2020-07-29' );

INSERT INTO arma_tu_fiesta.metodo_de_pago (numero_factura, razon, banco) VALUES ('376', 'Compra de productos', 'Mercantil');
SET @metodo = (SELECT pkPago FROM (SELECT id_metodo as pkPago from arma_tu_fiesta.metodo_de_pago WHERE numero_factura = '376') as tablaPago);
INSERT INTO arma_tu_fiesta.transferencia (fk_pago, numero_comprobante, fecha_realizacion, concepto) VALUES (@metodo, '46298377', '2020-07-29', 'Pago por productos adquiridos');
INSERT INTO arma_tu_fiesta.orden_producto_pago (fecha, monto, fk_orden_producto, fk_pago) VALUES ('2020-07-29', '4000.0', @orden, @metodo);

SET @cantidad = (SELECT pkCantidad FROM (SELECT SUM(pro.cantidad) as pkCantidad FROM arma_tu_fiesta.orden_producto as pro WHERE pro.fk_producto = @producto) as tablaCantidad);
UPDATE arma_tu_fiesta.producto SET cantidad = @cantidad WHERE id_producto = @producto;

