CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`locacion` (
    `id_locacion`           INT NOT NULL AUTO_INCREMENT,
    `nombre`                VARCHAR(80) NOT NULL,
    `fk_localizacion`       INT NOT NULL,
    CONSTRAINT `pk_locacion` PRIMARY KEY (`id_locacion`),
        CONSTRAINT `fk_locacion_lugar` FOREIGN KEY (`fk_localizacion`) REFERENCES `arma_tu_fiesta`.`lugar` (`id_lugar`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`jefatura` (
    `fk_jefatura`           INT NOT NULL,
    `jefe_civil`            VARCHAR(80) NOT NULL,
        CONSTRAINT `fk_jefatura_locacion` FOREIGN KEY (`fk_jefatura`) REFERENCES `arma_tu_fiesta`.`locacion` (`id_locacion`)
);

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Amazonas', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Amazonas')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Donald Trump');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Anzoátegui', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Anzoátegui')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Damian Taboada');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Apure', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Apure')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Alejandro Morales');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Aragua', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Aragua')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Nuria Vallejo');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Barinas', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Barinas')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Paula Llorens');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Bolívar', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Bolívar')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Malak Berenguer');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Carabobo', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Carabobo')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Rafaela del Olmo');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Cojedes', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Cojedes')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Pere Quero');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Delta Amacuro', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Delta Amacuro')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Raimundo Calero');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Distrito Capital', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Distrito Capital')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Unai Rivera');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Falcón', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Falcón')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Nelson Ramiro');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Guárico', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Guárico')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Carla Jorge');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado La Guaira', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%La Guaira')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Júlia Aguado');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Lara', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Lara')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Aday Vidal');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Mérida', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Mérida')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Martin Saldaña');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Miranda', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Miranda')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Anna Ares');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Monagas', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Monagas')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Concepcion Camacho');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Nueva Esparta', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Nueva Esparta')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Anton Machado');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Portuguesa', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Portuguesa')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Natividad Guerra');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Sucre', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Sucre')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Minerva Calvo');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Táchira', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Táchira')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Ona Poveda');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Trujillo', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Trujillo')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Victor Ferreira');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Yaracuy', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Yaracuy')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Balbina Viñas');

SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre,fk_localizacion) VALUES ('Jefatura del Estado Zulia', @pertenece);

SET @fk_jefatura = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Zulia')
	as tablaJefatura);
INSERT INTO arma_tu_fiesta.jefatura (fk_jefatura, jefe_civil) VALUES (@fk_jefatura, 'Nekane Ali');

