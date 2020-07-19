SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Amazonas', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Amazonas' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Idoia Carrion');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426570688', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Anzoátegui', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Anzoátegui' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Jesus Antonio Zhu');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412307320', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Apure', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Apure' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Martin Revilla');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424811253', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Aragua', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Aragua' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Juan Pablo Calle');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412209079', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Barinas', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Barinas' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Teofilo de Haro');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412610686', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Bolívar', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Bolívar' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Oriol Estrada');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416473732', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Carabobo', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Carabobo' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Francisco Jose Guirao');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426258641', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Cojedes', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Cojedes' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Elias Padron');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414943604', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Delta Amacuro', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Delta Amacuro' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Arnau Mejias');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424514729', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Distrito Capital', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Distrito Capital' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Avelino Aranda');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212421457', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Falcón', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Falcón' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Yeray Cruz');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414209107', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Guárico', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Guárico' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Alejandro Casado');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212877586', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de La Guaira', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%La Guaira' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Luis Maria Maza');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414676743', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Lara', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Lara' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Victor Manuel Arnaiz');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416701341', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Mérida', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Mérida' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Pablo Amado');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424908809', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Miranda', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Miranda' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Jose Santos');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414215179', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Monagas', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Monagas' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Sebastian Andrade');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412628472', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Nueva Esparta', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Nueva Esparta' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Oscar Burguillos');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424524471', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Portuguesa', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Portuguesa' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Octavio Marval');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426550376', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Sucre', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Sucre' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Daniel Leon');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212254311', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Táchira', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Táchira' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Ernesto Roman');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424393777', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Trujillo', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Trujillo' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Leonardo Saldivar');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412518268', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Yaracuy', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Yaracuy' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Brandon Bahuer');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212671128', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Zulia', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Zulia' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Mario Cartagena');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416653731', @Notaria);

