SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-53483529\-0', 'Rollinia', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-53483529\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426894621', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Rollinia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-22118032\-0', 'Grias', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-22118032\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416674034', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Grias@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-68411545\-0', 'Xylosma', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-68411545\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414918201', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Xylosma@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-55606637\-0', 'Oenocarpus', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-55606637\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416803131', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Oenocarpus@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-22822955\-0', 'Guarea', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-22822955\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212276413', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Guarea@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-48342431\-0', 'Romeroa', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-48342431\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212176315', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Romeroa@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-78985465\-0', 'Brunellia', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-78985465\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412261139', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Brunellia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-91721658\-0', 'Abarema', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-91721658\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412680477', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Abarema@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-36006188\-0', 'Brunellia', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-36006188\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416869821', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Brunellia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-49189390\-0', 'Prunus', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-49189390\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416699433', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Prunus@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-33126020\-0', 'Utricularia', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-33126020\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416640767', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Utricularia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-79210252\-0', 'Rollinia', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-79210252\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426932858', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Rollinia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-80159064\-0', 'Miconea', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-80159064\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414476061', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Miconea@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-23594483\-0', 'Wettinia', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-23594483\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424682489', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Wettinia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-92328493\-0', 'Zamia', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-92328493\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212423177', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Zamia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-63771028\-0', 'Magnolia', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-63771028\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412979030', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Magnolia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-96275824\-0', 'Brunellia', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-96275824\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416485151', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Brunellia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-57277534\-0', 'Miconea', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-57277534\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212267504', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Miconea@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-27678493\-0', 'Espeletia', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-27678493\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212418804', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Espeletia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-74828614\-0', 'Xylosma', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-74828614\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416285117', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Xylosma@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-21913098\-0', 'Prunus', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-21913098\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424322216', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Prunus@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-39644560\-0', 'Magnolia', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-39644560\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424185684', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Magnolia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-53612436\-0', 'Solanum', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-53612436\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414475382', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Solanum@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia') as tablaLugar);
SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Floristeria') as tablaCategoria);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, fk_categoria, fk_ubicado) VALUES ('J\-57261702\-0', 'Guarea', 'Jardines de Babilonia C.A.', @categoria, @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-57261702\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412962957', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Guarea@gmail.com', @proveedor);

