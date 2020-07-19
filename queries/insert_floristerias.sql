SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-84003841\-0', 'Licania', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-84003841\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412358736', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Licania@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-10029403\-0', 'Zamia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-10029403\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412318886', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Zamia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-73580992\-0', 'Magnolia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-73580992\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426786131', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Magnolia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-81560816\-0', 'Xylosma', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-81560816\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412318393', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Xylosma@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-84993095\-0', 'Oenocarpus', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-84993095\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424544802', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Oenocarpus@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-94885566\-0', 'Xylosma', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-94885566\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212449164', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Xylosma@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-66390335\-0', 'Zamia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-66390335\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412775859', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Zamia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-16031039\-0', 'Oenocarpus', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-16031039\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416628328', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Oenocarpus@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-97161813\-0', 'Zamia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-97161813\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416361453', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Zamia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-88948301\-0', 'Rollinia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-88948301\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212382909', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Rollinia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-86893008\-0', 'Romeroa', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-86893008\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414183949', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Romeroa@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-55276228\-0', 'Grias', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-55276228\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414430647', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Grias@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-98337681\-0', 'Prunus', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-98337681\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212966470', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Prunus@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-94824130\-0', 'Zamia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-94824130\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426616737', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Zamia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-37390349\-0', 'Brunellia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-37390349\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212553304', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Brunellia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-42596543\-0', 'Guarea', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-42596543\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412932843', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Guarea@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-58742158\-0', 'Miconea', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-58742158\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414564774', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Miconea@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-91951047\-0', 'Espeletia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-91951047\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414983302', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Espeletia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-36261388\-0', 'Espeletia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-36261388\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212359692', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Espeletia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-98892436\-0', 'Brunellia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-98892436\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212198967', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Brunellia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-35705669\-0', 'Zamia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-35705669\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212529248', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Zamia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-92757916\-0', 'Wettinia', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-92757916\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424520250', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Wettinia@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-21074443\-0', 'Calatola', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-21074443\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212591595', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Calatola@gmail.com', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia') as tablaLugar);
INSERT INTO arma_tu_fiesta.proveedor (rif, razon_social, denominacion_comercial, tipo, fk_ubicado) VALUES ('J\-49246678\-0', 'Guarea', 'Jardines de Babilonia C.A.', 'Floristeria', @pertenece);
SET @proveedor = (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J\-49246678\-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426652325', @proveedor);
INSERT INTO arma_tu_fiesta.email (correo, fk_proveedor) VALUES ('Guarea@gmail.com', @proveedor);

