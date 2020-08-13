SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-66699969\-0', 'Iglesia Catolica', 'Vaticano', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-66699969\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('04241114847', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('iglesiacatolica@vaticano.com', @proveedor);

INSERT INTO arma_tu_fiesta.categoria (nombre) VALUES ('Curso');

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Curso') as tablaCategoria);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Matrimonial Basico: Nueva Etapa', 'Induccion para iniciar esta nueva etapa', '4000.0', @categoria, @proveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Matrimonial Basico: Compromiso Duradero', 'Preparacion para asumir un gran compromiso', '5000.0', @categoria, @proveedor);

