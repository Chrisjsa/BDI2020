
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Amazonas', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Amazonas')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Donald Trump');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Anzoátegui', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Anzoátegui')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Damian Taboada');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Apure', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Apure')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Alejandro Morales');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Aragua', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Aragua')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Nuria Vallejo');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Barinas', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Barinas')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Paula Llorens');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Bolívar', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Bolívar')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Malak Berenguer');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Carabobo', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Carabobo')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Rafaela del Olmo');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Cojedes', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Cojedes')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Pere Quero');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Delta Amacuro', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Delta Amacuro')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Raimundo Calero');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Distrito Capital', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Distrito Capital')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Unai Rivera');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Falcón', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Falcón')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Nelson Ramiro');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Guárico', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Guárico')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Carla Jorge');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado La Guaira', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%La Guaira')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Júlia Aguado');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Lara', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Lara')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Aday Vidal');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Mérida', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Mérida')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Martin Saldaña');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Miranda', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Miranda')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Anna Ares');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Monagas', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Monagas')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Concepcion Camacho');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Nueva Esparta', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Nueva Esparta')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Anton Machado');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Portuguesa', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Portuguesa')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Natividad Guerra');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Sucre', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Sucre')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Minerva Calvo');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Táchira', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Táchira')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Ona Poveda');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Trujillo', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Trujillo')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Victor Ferreira');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Yaracuy', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Yaracuy')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Balbina Viñas');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo,fk_localizacion) VALUES ('Jefatura del Estado Zulia', 'Jefatura', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Zulia')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Nekane Ali');

