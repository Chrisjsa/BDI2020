exports.AGREGAR_PRODUCTOS =
  "SET @presupuesto = ?; SET @producto = ?; SET @costo_unit = ?; SET @cantidad_pro = ?; SET @costo = (@cantidad_pro * @costo_unit); SET @precio = @costo + @costo*0.30; INSERT INTO arma_tu_fiesta.detalle (costo_unitario, cantidad, costo, precio, fk_presupuesto, fk_producto) VALUES (@costo_unit, @cantidad_pro, @costo, @precio, @presupuesto, @producto); SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre); UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;"
//[id_presupuesto, id_producto, costo_unidad, cantidad]

exports.AGREGAR_SERVICIOS =
  "SET @presupuesto = ?; SET @servicio = ?; SET @costo_unit = ?; SET @cantidad_ser = ?; SET @costo = (@cantidad_ser * @precio_unit); SET @precio = @costo + @costo*0.30; INSERT INTO arma_tu_fiesta.detalle (costo_unitario, cantidad, costo, precio, fk_presupuesto, fk_servicio) VALUES (@costo_unit, @cantidad_ser, @costo, @precio,  @presupuesto, @servicio); SET @totalPres = (SELECT total FROM (SELECT sum(precio) as total FROM arma_tu_fiesta.detalle WHERE fk_presupuesto = @presupuesto) as tablaPre); UPDATE arma_tu_fiesta.presupuesto SET total = @totalPres WHERE id_presupuesto = @presupuesto;"

//[id_presupuesto, id_servicio, costo_servicio, cantidad]

exports.LEER_PRODUCTOS = "SELECT * FROM arma_tu_fiesta.producto;"

exports.LEER_SERVICIOS = "SELECT * FROM arma_tu_fiesta.servicio_tercerizado;"
