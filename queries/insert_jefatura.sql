SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Amazonas', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Amazonas' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Donald Trump');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424253954', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('3.5', '-66', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Anzoátegui', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Anzoátegui' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Damian Taboada');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426166847', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.144418', '-64.677358', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Apure', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Apure' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Alejandro Morales');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416510927', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.9', '-67.466667', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Aragua', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Aragua' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Nuria Vallejo');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212523145', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.25', '-67.6', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Barinas', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Barinas' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Paula Llorens');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426482049', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.633333', '-70.2', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Bolívar', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Bolívar' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Malak Berenguer');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212576519', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.121944', '-63.55', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Carabobo', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Carabobo' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Rafaela del Olmo');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426615018', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.193', '-67.98', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Cojedes', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Cojedes' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Pere Quero');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416926690', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.36', '-68.32', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Delta Amacuro', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Delta Amacuro' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Raimundo Calero');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412669132', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.632279', '-61.116943', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Distrito Capital', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Distrito Capital' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Unai Rivera');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412633839', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.473056', '-66.995556', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Falcón', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Falcón' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Nelson Ramiro');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412893934', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.172989', '-69.859741', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Guárico', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Guárico' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Carla Jorge');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424122633', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.7', '-66.61', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado La Guaira', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%La Guaira' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Júlia Aguado');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412663354', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.572', '-66.88', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Lara', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Lara' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Aday Vidal');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212859605', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.07', '-69.86', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Mérida', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Mérida' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Martin Saldaña');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424793595', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.583333', '-71.133333', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Miranda', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Miranda' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Anna Ares');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414567908', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.250479', '-66.42715', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Monagas', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Monagas' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Concepcion Camacho');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426589882', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.43', '-63.08', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Nueva Esparta', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Nueva Esparta' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Anton Machado');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426561842', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.95', '-64.01', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Portuguesa', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Portuguesa' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Natividad Guerra');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416303940', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.11', '-69.28', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Sucre', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Sucre' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Minerva Calvo');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416919250', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.645556', '-63.038889', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Táchira', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Táchira' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Ona Poveda');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424556267', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.94', '-72.12', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Trujillo', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Trujillo' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Victor Ferreira');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426271885', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.417', '-70.5', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Yaracuy', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Yaracuy' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Balbina Viñas');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424427094', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.31', '-68.71', @jefatura);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia') tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Jefatura del Estado Zulia', 'Jefatura', @pertenece);
SET @jefatura = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Zulia' AND tipo = 'Jefatura') as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@jefatura, 'Nekane Ali');
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212417506', @jefatura);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.84', '-72.25', @jefatura);

