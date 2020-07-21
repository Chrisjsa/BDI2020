SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Amazonas', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Amazonas' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Idoia Carrion');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416795949', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('3.5', '-66', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Anzoátegui', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Anzoátegui' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Jesus Antonio Zhu');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212794490', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.144418', '-64.677358', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Apure', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Apure' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Martin Revilla');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414979219', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.9', '-67.466667', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Aragua', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Aragua' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Juan Pablo Calle');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426313684', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.25', '-67.6', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Barinas', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Barinas' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Teofilo de Haro');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424938168', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.633333', '-70.2', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Bolívar', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Bolívar' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Oriol Estrada');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212629412', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.121944', '-63.55', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Carabobo', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Carabobo' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Francisco Jose Guirao');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424659359', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.193', '-67.98', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Cojedes', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Cojedes' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Elias Padron');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212459916', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.36', '-68.32', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Delta Amacuro', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Delta Amacuro' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Arnau Mejias');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414967849', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.632279', '-61.116943', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Distrito Capital', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Distrito Capital' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Avelino Aranda');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424570830', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.473056', '-66.995556', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Falcón', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Falcón' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Yeray Cruz');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212257610', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.172989', '-69.859741', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Guárico', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Guárico' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Alejandro Casado');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424515161', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.7', '-66.61', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de La Guaira', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%La Guaira' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Luis Maria Maza');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414479520', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.572', '-66.88', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Lara', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Lara' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Victor Manuel Arnaiz');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424161202', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.07', '-69.86', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Mérida', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Mérida' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Pablo Amado');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414490983', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.583333', '-71.133333', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Miranda', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Miranda' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Jose Santos');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426282948', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.250479', '-66.42715', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Monagas', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Monagas' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Sebastian Andrade');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412679336', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.43', '-63.08', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Nueva Esparta', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Nueva Esparta' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Oscar Burguillos');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416529415', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.95', '-64.01', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Portuguesa', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Portuguesa' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Octavio Marval');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424915282', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.11', '-69.28', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Sucre', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Sucre' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Daniel Leon');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416959343', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.645556', '-63.038889', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Táchira', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Táchira' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Ernesto Roman');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416375015', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.94', '-72.12', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Trujillo', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Trujillo' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Leonardo Saldivar');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414221617', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.417', '-70.5', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Yaracuy', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Yaracuy' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Brandon Bahuer');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412469056', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.31', '-68.71', @Notaria);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria de Zulia', 'Notaria', @pertenece);
SET @Notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Zulia' AND tipo = 'Notaria') as tablaNotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@Notaria, 'Mario Cartagena');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424630179', @Notaria);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.84', '-72.25', @Notaria);

