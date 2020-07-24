SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa redonda', 'Mesa redonda de 8 puestos', '90.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa cuadrada de teka', 'Mesa cuadrada de teka de 8 personas 1.20 x 1.20', '320.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Manteleria base y tope infantil', 'Alquiler manteleria base y tope unicolor para infantiles', '120.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Manteleria base y tope de lujo', 'Alquiler manteleria base y tope unicolor de lujo', '150.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa cuadrada revestida', 'Mesa cuadrada revestida de telas de colores', '350.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Ganchos y apliques para manteleria triple', 'Alquiler y montaje de ganchos y apliques para manteleria triple', '80.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Caminos de mesas unicolores o tematicos para mesas cuadradas', 'Alquiler caminos de mesas unicolores o tematicos para mesas cuadradas', '70.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Caminos para meson rectangular', 'Alquiler de caminos de organza yute fuchsia verde pistacho marron para menson rectangular', '75.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa redonda para torta y dulces', 'Mesa redonda para tortas y dulces', '75.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Manteleria base y tope para mesa de torta infantil', 'Alquiler manteleria base y tope para mesas de tortas infantiles', '120.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Alquiler manteleria base y tope para mesa de torta de lujo', 'Alquiler manteleria base y tope para mesas de tortas de lujos', '150.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Meson tradicional para buffet', 'Alquiler de meson tradicional para buffet / estacion mesa de quesos postres torta crepps', '110.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mantel y faldon para mesa rectangular', 'Mantel y faldon para mesa rectangular / mesa principal', '150.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Silla paris sola', 'Alquiler silla paris sola', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Silla paris con forro', 'Silla paris con forro', '15.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Silla paris con forro y lazo', 'Silla paris con forro y lazo', '20.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Silla tiffany dorada sin lazo', 'Silla tiffany dorada sin lazo', '22.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Silla tiffany plateada sin lazo', 'Silla tiffany plateada sin lazo', '35.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Silla tiffany blanca sin lazo', 'Silla tiffany blanca sin lazo', '40.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Lazo de razo para silla tiffany', 'Lazo de razo para silla tiffany', '10.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Festejo') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-81007875-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Trenzado o montaje especial de lazos para sillas tiffany', 'Trenzado o montaje especial de lazos para sillas tiffany', '6.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Meson rectangular blanco con base de color', 'Meson rectangular con base de color', '300.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Meson rectangular revestido', 'Meson rectangular revestido con telas de colores', '450.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa de estilo ultra lounge de madera colonial', 'Mesa de estilo ultra lounge de madera colonial para estaciones mesa de postres o ceremonia', '600.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Puff elite semicuero blanco 1 puesto sin espaldar', 'Puff elite semicuero blanco de 1 puesto sin espaldar', '60.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Puff elite semicuero blanco 1 puesto con espaldar', 'Puff elite semicuero blanco de 1 puesto con espaldar', '70.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Puff elite semicuero blanco 2 puestos sin espaldar', 'Puff elite semicuero blanco de 2 puestos sin espaldar', '130.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Puff elite semicuero blanco 2 puestos con espaldar', 'Puff elite semicuero blanco de 2 puestos con espaldar', '145.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Puff elite redondo 4 puestos', 'Puff elite redondo 4 puestos blanco y negro', '350.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Cama en semicuero blanca capitoneada', 'Cama en semicuero blanca capitoneada para 4 personas patas cromadas', '380.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa baja no iluminada', 'Mesa baja no iluminada color cafe tostado y tope blanco', '80.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa baja de madera', 'Mesa baja de madera Precio engue o blanca', '80.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Divan en semicuero blanco', 'Divan en semicuero blancp para set fotografico', '1200.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Barra de tragos iluminada', 'Barra de tragos iluminada blanca', '990.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Barra de tragos ilumindad led', 'Barra de tragos ilumindad de led de colores', '1200.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa coctelera de aluminio', 'Mesa coctelera de aluminio', '95.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Alquiler de butacas', 'Alquiler de butacas blancas o plateadas capitoneadas (Minimo 12)', '180.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Alquiler de sillas o butacas lounge con respaldar', 'Butacas o sillas con estilo ultra lounge con respaldar', '180.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Chaise ultra lounge', 'Alquiler de chaise ultra lounge', '180.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mobiliario lounge clasico', 'Alquiler de mobiliario lounge clasico', '80.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Puff multiforma', 'Puff multifomar de colores', '80.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Puff capitoneado', 'Puff capitoneado blanco negro plateado (MINIMO 12 )', '180.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa alta tipo coctel', 'Mesa alta tipo coctel vestidas con mantel y lazo', '180.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesas cocteleras iluminadas', 'Mesas cocteleras iluminadas de 6 o 8 puestos blancas', '750.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Sillas de altura tipo banqueta', 'Sillas de altura tipo banqueta blanca', '100.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa alta tipo coctel', 'Mesa alta tipo coctel vestida con mantel y lazo', '180.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Alquiler de Sombrilla', 'Sombrilla 25 x 25 beige verde terracota sin punto de luz', '250.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario Lounge') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-83096897-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Alquiler y montaje bano portatil', 'Alquiler y montaje de banos portatiles', '1800.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-18023173-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa de vidrio cuadrada sin iluminacion', 'Mesa de vidrio cuadrada sin iluminacion', '580.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-18023173-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa de vidrio cuadrada con iluminacion', 'Mesa de vidrio cuadrada con iluminacion', '650.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-18023173-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa de vidrio rectangular sin iluminacion', 'Mesa de vidrio rectangular sin iluminacion', '600.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-18023173-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa de vidrio rectangular con iluminacion', 'Mesa de vidrio rectangular con iluminacion', '700.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-18023173-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa baja de acrilico transparente', 'Mesa baja de acrilico transparente', '85.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Mobiliario de Acrilico y Cristal') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-18023173-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesa coctelera de acrilico', 'Mesa coctelera de acrilico transparente con para cromada ajustable', '250.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tequenos doble queso', 'Tequenos doble queso', '7.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tequenos capresa', 'Tequenos capresa', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tequenos ricotta y espinaca', 'Tequenos ricotta y espinaca', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tequenos salchichon y queso crema', 'Tequenos salchichon y queso crema', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tequenos jamon y queso', 'Tequenos jamon y queso', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tequenos guayaba y queso', 'Tequenos guayaba y queso', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tequenos platano con queso', 'Tequenos platano con queso', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tequenos manzana caramelizada con queso', 'Tequenos manzana caramelizada con queso', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tequenos de chocolate', 'Tequenos de chocolate', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tequenos de nutella', 'Tequenos de nutella', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Croqueta de papa', 'Croqueta de papa (salsa sugerida: Mayonesa de ajo y perejil)', '6.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Croqueta de pescado', 'Croqueta de pescado (salsa sugeridad: tartara)', '7.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Croqueta de camaron', 'Croqueta de camaron (salsa sugeridad: mayonesa de curry)', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Croqueta de pollo', 'Croqueta de pollo (salsa sugeridad: dijonesa)', '7.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Croqueta de atun', 'Croqueta de atun (salsa sugeridad: salsa citrica)', '8.5', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Croqueta de salmon', 'Croqueta de salmon (salsa sugeridad: mayonesa de eneldo)', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Croqueta de cerdo y pistacho', 'Croqueta de cerdo y pistacho (salsa sugeridad: reduccion de oporto)', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tartaleta de ajoporro', 'Tartaleta de ajoporro', '6.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tartaleta de crema de pimenton asado', 'Tartaleta de crema de pimenton asado', '7.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tartaleta de champinones', 'Tartaleta de champinones', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tartaleta de camaron', 'Tartaleta de camaron', '9.5', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tartaleta de atun', 'Tartaleta de atun', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tartaleta de anchoa', 'Tartaleta de anchoa', '9.5', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tartaleta de salchichon', 'Tartaleta de salchichon', '6.5', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Shot de ceviche con fruta exotica', 'shot de ceviche con fruta exotica', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Shot de csalpicon de mariscos', 'shot de salpicon de mariscos', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Shot de vieiras a la naranja', 'shot de vieiras a la naranja', '13.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Shot de pescado thal', 'shot de pescado thal', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Shot de coctel de camarones', 'shot de coctel de camarones', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Shot de antipasto de berenjena', 'shot de antipasto de berenjena', '10.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Shot de antipasto de pimenton', 'shot de antipasto de pimenton', '10.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Shot de vegetales mixtos', 'shot de vegetales mixtos', '10.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Shot de ensalada de atun', 'shot de ensalada de atun', '10.5', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bolitas de queso con salsa de papelon', 'bolitas de queso con salsa de papelon', '7.5', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Kibbe frito', 'Kibbe frito (Salsa recomendada: salsa de ajonjoli)', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Falafel', 'Falafel (Salsa recomendada: salsa de ajonjoli)', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Nugget de pollo', 'Nugget de pollo (Salsa recomendada: BBQ)', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Salsa pequena', 'Salsa pequena para 50 pasapalos', '50.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Salsa mediana', 'Salsa mediana para 100 pasapalos', '70.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Salsa grande', 'Salsa grande para 200 pasapalos', '130.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Pasapalos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-54075006-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bandeja para llevar', 'Bandeja para llevar capacidad de 30 unidades', '50.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini bronies', 'Mini bronies', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini tartaleta de frutas con crema pastelera', 'Mini tartaleta de frutas con crema pastelera (fresasmelocotoneskiPrecio isuvas)', '14.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini tartaleta de frutas con crema pastelera de chocolate', 'Mini tartaleta de frutas con crema pastelera de chocolate', '14.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini tartaleta de limon', 'Mini tartaleta de limon con glaceado de malvavisco y teja de almendra', '15.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini tartaleta de nutella y frutas', 'Mini tartaleta de nutella y frutas', '14.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini tartaleta de nutella o arequipe', 'Mini tartaleta de nutella o arequipe y almendra caramelizada', '14.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini shots de mouse de chocolate', 'Mini shots de mouse de chocolate con merengue y pirulin', '15.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini shots de biscocho', 'Mini shots de biscocho con culis de fresa y chantilly', '15.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini pincho de jamon serrano', 'Mini pincho de jamon serrano y bolitas de melon', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini pincho de salmon', 'Mini pincho de salmon y crujiente de yuca (salsa recomendada: mayonesa de aji)', '14.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini pincho de jamon serrano y queso manchego', 'Mini pincho de jamon serrano queso manchego tomates cherry y pina', '11.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini pincho de lomito', 'Mini pincho de lomito (salsa recomendada: pisto)', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini pincho de pollo', 'Mini pincho de pollo (salsa recomendada: pisto)', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini pincho mixto', 'Mini pincho de misxto(carne y pollo) (salsa recomendada: pisto)', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini pincho de langostino tempurizado', 'Mini pincho de langostino tempurizado (salsa recomendada: teriyaki)', '13.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini pincho de camaron', 'Mini pincho de camaron y crujiente de arroz japones (salsa recomendada: chutney de pina y gengibre)', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini filet de mignon', 'Mini filet mignon (salsa recomendada: champinon)', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini filet mignon de pollo', 'Mini filet mignon de pollo(salsa recomendada: champinon)', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bolitas de carne con centro de queso mozzarella', 'Bolitas de carne con centro de queso mozzarella (salsa recomendada: napole)', '7.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bolitas de pollo con centro de pistacho', 'Bolitas de pollo con centro de pistacho (salsa recomendada: mayonesa de ajo y perejil)', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bolitas de carne de cerdo con centro de nuez', 'Bolitas de carne de cerdo con centro de nuez', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bolitas de cangrejo', 'Bolitas de cangrejo (salsa recomendada: mayonesa de ostras)', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bolitas de pollo con centro de pistacho', 'Bolitas de pollo con centro de pistacho (salsa recomendada: mayonesa de ajo y perejil)', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bolitas de yuca y rocoto', 'Bolitas de yuca y rocoto (salsa recomendada: papelon)', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bolitas de pollo con centro de pistacho', 'Bolitas de pollo con centro de pistacho (salsa recomendada: mayonesa de ajo y perejil)', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Champinon relleno de chorizo', 'champinon relleno de chorizo y aceitunas negras (salsa recomendada: vino tinto)', '10.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Champinon crocante', 'Champinon crocante (salsa recomendada: mango)', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tomates cherrys relleno de mouse de atun', 'Tomates cherrys relleno de mouse de atun', '13.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tomates de cherry relleno de mouse de camaron', 'Tomates de cherry relleno de mouse de camaron', '13.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini lumpias', 'Mini lumpias', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini lumpias', 'Mini lumpias', '12.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini cachapas con queso', 'Mini cachapas con queso', '6.5', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini cachapas con pernil', 'Mini cachapas con pernil', '7.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini arepitas crujientes de reina', 'Mini arepitas crujientes de reina', '7.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini arepitas crujientes de pollo', 'Mini arepitas crujientes de pollo', '7.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini arepitas crujientes de queso palmita', 'Mini arepitas crujientes de queso palmita', '7.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini arepitas crujientes de queso gouda amarillo', 'Mini arepitas crujientes de queso gouda amarillo', '7.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mini arepitas crujientes con carne mechada', 'Mini arepitas crujientes con carne mechada', '7.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tartaleta de anchoa', 'Tartaleta de anchoa', '9.5', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Minidulces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-46735611-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tartaleta de salchichon', 'Tartaleta de salchichon', '6.5', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Platos llanos redondo', 'Platos llanos redondo para buffet \ estacion', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Platos llanos redondo de postre', 'Platos llanos redondo para postre \ estacion de queso', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Platos llanos cuadrado', 'Platos llanos cuadrado para buffet \ estacion', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Platos llanos cuadrado de postre \ queso', 'Platos llanos cuadrado para postres \ estacion de queso', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Platos llanos cuadrado', 'Platos llanos cuadrado para buffet \ estacion', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bowl redondo tipo ensaladera', 'Bowl redondo tipo ensaladera o soperas', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Taza para consome', 'Taza para consome o chupe con plato de base', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Taza para cafe y te', 'Taza para cafe o te pequena', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Vasos de vidrio', 'Vasos de vidrio de 12 onzas (cajas de 48 unidades)', '8.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Copa de vino tinto o agua', 'Copa de vino tinto o agua (caja de 24 unidades)', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Copa de vino blanco', 'Copa de vino blanco', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Copa de champane', 'Copa de champane', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Vaso tequilero', 'Vaso tequilero', '5.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Copa de martini', 'Copa de martini', '10.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Chiller para ceviche', 'Chiller para ceviche \ coctel de camarones \ postre', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tenedores regulares', 'Tenedores de tamano regular', '6.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tenedor pequeno para ceviche', 'Tenedor pequeno tipo lunch para ceviche', '6.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Cuchillos', 'Cuchillos', '6.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Cuchillo para queso', 'Cuchillo para queso', '6.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Cucharas', 'Cucharas', '6.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Cucharilla para postre', 'Cucharilla para postre', '6.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Trinche para torta', 'Trinche para torta', '15.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Trinches variados', 'Trinches variados 3 cucharones y 1 pinza', '15.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Cesta para pan de banquete', 'Cesta para pan de banquete con servilleta de tela', '15.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Hielera con pinza', 'Hielera con pinza', '40.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Jarras para agua o jugo', 'Jarras para agua o jugo', '15.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Cecineros', 'Ceniceros', '5.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Cocina completa con utensilios sin aceite', 'Cocina completa con utensilios sin aceite', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Cocina completa con utensilios doble hornilla', 'Cocina completa con utensilios doble hornilla sin aceite', '260.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Deposito de hielo', 'Deposito de hielo', '300.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Deposito de basura', 'Deposito de basura', '30.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bandeja de servicios', 'Bandeja de servicios', '20.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Bandeja de pasapalos de porcelana', 'Bandeja de pasapalos de porcelana', '20.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesonero barman cocinero', 'Mesonero cocinero barman x 7 horas', '750.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Chafing dish de acero sin quemadores', 'Chafing dish de acero sin quemadores', '200.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Termos dispensadores', 'Termos dispensadores para jugos y bebidas transparentes', '200.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Copa de vino blanco', 'Copa de vino blanco', '9.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Vidrios torres y cilindros', 'Alquiler de vidrios torres y cilindros para montaje de cupcakes', '50.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tablas para quesos', 'Tablas para quesos', '15.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Utileria') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-79136674-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Rejillas tipo parabanes', 'Rejillas tipo parabanes para delimitar area de servicio cada hoja de 1 metro', '150.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo convencional liso 8 x 12', 'Toldo convencional liso 8 x 12', '4900.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo convencional liso 12 x 12', 'Toldo convencional liso 12 x 12', '9970.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo convencional liso 5 x 10', 'Toldo convencional liso 5 x 10', '3500.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo convencional liso 8 x 8', 'Toldo convencional liso 8 x 8', '3900.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo convencional liso 6 x 12', 'Toldo convencional liso 6 x 12', '4500.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo pequeno', 'Toldo pequeno', '2500.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo convencional drapeado 8 x 12', 'Toldo convencional drapeado 8 x 12', '6900.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo convencional drapeado 12 x 12', 'Toldo convencional drapeado 12 x 12', '13800.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo convencional drapeado 5 x 12', 'Toldo convencional drapeado 5 x 12', '5800.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo convencional drapeado 8 x 8', 'Toldo convencional drapeado 8 x 8', '6000.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Toldos') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-94203774-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo convencional drapeado 6 x 12', 'Toldo convencional drapeado 6 x 12', '6900.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Luces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-27153177-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Luces indirectas para toldos', 'Luces indirectas para toldos', '180.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Luces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-27153177-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Canales para toldos', 'Canales para toldos', '200.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Luces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-27153177-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Galones de colores para toldos', 'Galones de colores para toldos', '250.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Luces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-27153177-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Toldo convencional drapeado 8 x 12', 'Toldo convencional drapeado 8 x 12', '6900.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Luces') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-27153177-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Lona lateral para toldo', 'Lona lateral para toldo', '300.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Tarimas') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-23598196-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Pista de baile x metro cuadrado', 'Pista de baile x metro cuadrado', '280.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Tarimas') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-23598196-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Tarima', 'Tarima de 75 cms de altura para grupo musical / DJ / otros x mt2', '280.0', @categoria, @proveedor);

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
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Mesonero', 'Mesonero', '850.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Transporte') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-97245992-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Montaje y desmontaje', 'Montaje y desmontaje depende de la cantidad de material (desde 400)', '400.0', @categoria, @proveedor);

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
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion Thai (Precio por persona)', '(Requiere un minimo de 40 personas, 2 mesones vestidos, area de servicio, 2 mesones area de cocina, 1 mesonero, 1 cocinero, transporte, area techada de trabajo, alquiler de cubiertos y vajillas) pollo al curry, lomito thal, arroz salvaje, arroz basmati o jasmin, utensilios', '250.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de sushi basica (Precio por persona)', '(Requiere un minimo de 50 personas, 2 mesones vestidos, o barra iluminada, 1 sushero, transporte, area techada, alquiler de vajillas) 1,5 roles de 8 piezas por persona, arroz japones, noris, akame, salmon, atun, camarones tempurizados, camarones sin tempurizar, aguacate, queso crema, pepino, salsas: soya, dinamita, anguila, especial, salseras, platos y palitos', '230.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Montaje de mesa de mini dulces', '(Requiere alquiler de meson de preferencia, seleccion de mini dulces, area techada y transporte) alturas de vidrio, montaje', '900.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de hamburguesa (Precio por hamburguesa)', '(Requiere un minimo de 70 personas, 2 mesones vestidos, 1 punto de luz, 1 operador, transporte, area techada) 1 hamburguesa por persona, pan bimbo, queso, tocineta, tomate, lechuga, 3 salsas clasicas, 1 salsa especial, plancha, utensilios', '80.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.producto (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de hamburguesa plus (Precio por hamburguesa)', '(Requiere un minimo de 60 hamburguesas, 2 mesones vestidos, 1 punto de luz, 1 operador, transporte, area techada) 1 hamburguesa base de carne, 1 hamburguesa base de pollo, panes artesanales medianos, Extras al guiso: queso, tocineta', '120.0', @categoria, @proveedor);

SET @categoria = (SELECT pkCategoria FROM (SELECT id_categoria as pkCategoria FROM arma_tu_fiesta.categoria WHERE nombre = 'Catering') as tablaCategoria);
SET @proveedor = (SELECT pkProveedor from (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-64589958-0') as tablaProveedor);
INSERT INTO arma_tu_fiesta.servicio_tercerizado (nombre, descripcion, precio, fk_categoria, fk_proveedor) VALUES ('Estacion de sandwiches (Precio por sandwich)', '(Requiere un minimo de 70 personas, 2 mesones vestidos, 1 punto de luz, 1 operador, transporte, area techada) 1.5 sandwiches por persona, queso gouda amarillo, jamon de pierna y de pavo, salchichon, pollo al grill, atun, tomate en aceite de oliva, tomate confitados, pimentones asados, champinones, cebolla caramelizada, pepinillos y aceitunas, mesclum de lechugas, alfalfa, 3 salsas clasicas, plancha, utensilios', '90.0', @categoria, @proveedor);

