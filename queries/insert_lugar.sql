SET @tipo = 'Continente';

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`)
    VALUES
        ('America', @tipo),
        ('Africa', @tipo),
        ('Asia', @tipo),
        ('Europa', @tipo),
        ('Oceania', @tipo)
;

-- Paises

SET @tipo = 'Pais';
SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Continente' AND nombre = 'America')
    as tablaLugar);

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Venezuela', @tipo, @pertenece),
        ('Colombia', @tipo, @pertenece),
        ('Chile', @tipo, @pertenece),
        ('Brasil', @tipo, @pertenece),
        ('Argentina', @tipo, @pertenece)
;

-- 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Amazonas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alto Orinoco (La Esmeralda)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alto Orinoco (La Esmeralda)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alto Orinoco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alto Orinoco (La Esmeralda)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Huachamacare Acanaña', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alto Orinoco (La Esmeralda)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Marawaka Toky Shamanaña', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alto Orinoco (La Esmeralda)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mavaka Mavaka', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alto Orinoco (La Esmeralda)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sierra Parima Parimabé', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Atabapo (San Fernando de Atabapo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atabapo (San Fernando de Atabapo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Atabapo San Fernando de Atabapo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atabapo (San Fernando de Atabapo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ucata Laja Lisa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atabapo (San Fernando de Atabapo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Yapacana Macuruco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atabapo (San Fernando de Atabapo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caname Guarinuma', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Atures (Puerto Ayacucho)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Fernando Girón Tovar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Luis Alberto Gómez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pahueña Limón de Parhueña', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Platanillal', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Autana (Isla Ratón)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Autana (Isla Ratón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Samariapo Samariapo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Autana (Isla Ratón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sipapo Pendare', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Autana (Isla Ratón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Munduapo Munduapo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Autana (Isla Ratón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guayapo San Pedro del Orinoco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Autana (Isla Ratón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Isla Ratón', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manapiare (San Juan de Manapiare)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Manapiare (San Juan de Manapiare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alto Ventuari Cacurí​', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Manapiare (San Juan de Manapiare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Medio Ventuari Manami', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Manapiare (San Juan de Manapiare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bajo Ventuari Marueta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Manapiare (San Juan de Manapiare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manapiare', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Maroa (Maroa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maroa (Maroa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Maroa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maroa (Maroa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Victorino', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maroa (Maroa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Comunidad', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Río Negro (San Carlos de Río Negro)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Río Negro (San Carlos de Río Negro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Casiquiare Curimacare', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Río Negro (San Carlos de Río Negro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cocuy', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Río Negro (San Carlos de Río Negro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Carlos de Río Negro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Río Negro (San Carlos de Río Negro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Solano Solano', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Anzoátegui', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Anaco (Anaco)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Anaco (Anaco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Anaco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Anaco (Anaco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Joaquín', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Anaco (Anaco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Buena Vista', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aragua (Aragua de Barcelona)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aragua (Aragua de Barcelona)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cachipo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aragua (Aragua de Barcelona)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aragua de Barcelona', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar (Barcelona)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bergantín', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caigua', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Carmen.', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Pilar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Naricual.', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Cristóbal', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bruzual (Clarines)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bruzual (Clarines)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Clarines', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bruzual (Clarines)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guanape', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bruzual (Clarines)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sabana de Uchire', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cajigal (Onoto)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cajigal (Onoto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Onoto', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cajigal (Onoto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Pablo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carvajal (Valle de Guanape)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Valle de Guanape)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valle de Guanape', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Valle de Guanape)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Bárbara', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Freites (Cantaura)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Freites (Cantaura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cantaura', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Freites (Cantaura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertador', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Freites (Cantaura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rosa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Freites (Cantaura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urica', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guanipa (San José de Guanipa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanipa (San José de Guanipa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José de Guanipa', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guanta (Guanta)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanta (Guanta)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guanta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanta (Guanta)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chorrerón', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Independencia (Soledad)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Soledad)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mamo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Soledad)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Soledad', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertad (San Mateo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (San Mateo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Mateo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (San Mateo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Carito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (San Mateo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Inés', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (San Mateo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Romereña', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('McGregor (El Chaparro)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'McGregor (El Chaparro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Chaparro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'McGregor (El Chaparro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tomás Alfaro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'McGregor (El Chaparro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Calatrava', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miranda (Pariaguán)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Pariaguán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Atapirire', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Pariaguán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Boca del Pao', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Pariaguán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Pao', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Pariaguán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pariaguán', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monagas (Mapire)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Mapire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mapire', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Mapire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Piar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Mapire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Clara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Mapire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Diego de Cabrutica', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Mapire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Uverito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Mapire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zuata', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Peñalver (Puerto Píritu)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Peñalver (Puerto Píritu)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Puerto Píritu', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Peñalver (Puerto Píritu)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Miguel', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Peñalver (Puerto Píritu)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Píritu (Píritu)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Píritu (Píritu)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Píritu', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Píritu (Píritu)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan de Capistrano (Boca de Uchire)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Juan de Capistrano (Boca de Uchire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Boca de Uchire', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Juan de Capistrano (Boca de Uchire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Boca de Chávez', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Ana (Santa Ana)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Ana (Santa Ana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pueblo Nuevo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Ana (Santa Ana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Ana', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Simón Rodríguez (El Tigre)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Simón Rodríguez (El Tigre)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Edmundo Barrios', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Simón Rodríguez (El Tigre)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miguel Otero Silva', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sotillo (Puerto La Cruz)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sotillo (Puerto La Cruz)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Puerto La Cruz', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sotillo (Puerto La Cruz)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pozuelos', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urbaneja (Lechería)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urbaneja (Lechería)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lechería', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urbaneja (Lechería)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Morro', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Apure', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Achaguas (Achaguas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Achaguas (Achaguas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Achaguas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Achaguas (Achaguas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Apurito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Achaguas (Achaguas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Yagual', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Achaguas (Achaguas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guachara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Achaguas (Achaguas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mucuritas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Achaguas (Achaguas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Queseras del medio', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Biruaca (Biruaca)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Biruaca (Biruaca)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Biruaca', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Camejo (San Juan de Payara)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camejo (San Juan de Payara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan de Payara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camejo (San Juan de Payara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Codazzi', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camejo (San Juan de Payara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cunaviche', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Muñoz (Bruzual)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Muñoz (Bruzual)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bruzual', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Muñoz (Bruzual)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mantecal', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Muñoz (Bruzual)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Quintero', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Muñoz (Bruzual)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rincón Hondo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Muñoz (Bruzual)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Vicente', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Páez (Guasdualito)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Guasdualito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guasdualito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Guasdualito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aramendi', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Guasdualito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Amparo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Guasdualito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Camilo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Guasdualito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urdaneta', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rómulo Gallegos (Elorza)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Gallegos (Elorza)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Elorza', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Gallegos (Elorza)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Trinidad', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Fernando (San Fernando de Apure)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Fernando', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Recreo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Peñalver', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Rafael de Atamaica', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aragua', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alcántara (Santa Rita)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alcántara (Santa Rita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rita', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alcántara (Santa Rita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Francisco de Miranda', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alcántara (Santa Rita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Moseñor Feliciano González', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar (San Mateo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Mateo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Camatagua (Camatagua)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camatagua (Camatagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Camatagua', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camatagua (Camatagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carmen de Cura', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Girardot (Maracay)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pedro José Ovalles', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Joaquín Crespo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Casanova Godoy', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Madre María de San José', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Andrés Eloy Blanco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Tacarigua', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Delicias', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Choroní', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Iragorry (El Limón)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iragorry (El Limón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Limón', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iragorry (El Limón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caña de Azúcar', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lamas (Santa Cruz de Aragua)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lamas (Santa Cruz de Aragua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Cruz', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertador (Palo Negro)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Palo Negro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Palo Negro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Palo Negro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Martín de Porres', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mariño (Turmero)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Turmero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Turmero', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Turmero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arévalo Aponte', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Turmero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chuao', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Turmero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Samán de Güere', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Turmero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alfredo Pacheco Miranda', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Michelena (Las Tejerías)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Michelena (Las Tejerías)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santos Michelena', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Michelena (Las Tejerías)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tiara', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ocumare de la Costa de Oro (Ocumare de la Costa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ocumare de la Costa de Oro (Ocumare de la Costa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ocumare de la Costa', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Revenga (El Consejo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Revenga (El Consejo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Rafael Revenga', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Revenga (El Consejo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Consejo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ribas (La Victoria)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (La Victoria)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Félix Ribas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (La Victoria)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Castor Nieves Ríos', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (La Victoria)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Guacamayas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (La Victoria)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pao de Zárate', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (La Victoria)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zuata', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Casimiro (San Casimiro)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Casimiro (San Casimiro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Casimiro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Casimiro (San Casimiro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Güiripa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Casimiro (San Casimiro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ollas de Caramacate', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Casimiro (San Casimiro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valle Morín', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Sebastián (San Sebastián de Los Reyes)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Sebastián (San Sebastián de Los Reyes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Sebastían', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre (Cagua)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cagua', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bella Vista', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tovar (Colonia Tovar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tovar (Colonia Tovar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tovar', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urdaneta (Barbacoas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Barbacoas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urdaneta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Barbacoas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Peñitas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Barbacoas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco de Cara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Barbacoas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Taguay', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zamora (Villa de Cura)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Villa de Cura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Villa de Cura', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Villa de Cura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Magdaleno', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Villa de Cura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco de Asís', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Villa de Cura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valles de Tucutunemo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Villa de Cura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Augusto Mijares', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Barinas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alberto Arvelo Torrealba (Sabaneta)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alberto Arvelo Torrealba (Sabaneta)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sabaneta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alberto Arvelo Torrealba (Sabaneta)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan Antonio Rodríguez Domínguez', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Andrés Eloy Blanco (El Cantón)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Eloy Blanco (El Cantón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Cantón', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Eloy Blanco (El Cantón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Cruz de Guacas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Eloy Blanco (El Cantón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Puerto Vivas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antonio José de Sucre (Socopó)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio José de Sucre (Socopó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Socopo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio José de Sucre (Socopó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Nicolás Pulido', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio José de Sucre (Socopó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Andrés Bello', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arismendi (Arismendi)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Arismendi)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arismendi', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Arismendi)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guadarrama', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Arismendi)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Unión', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Arismendi)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Antonio', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Barinas (Barinas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Barinas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alfredo Arvelo Larriva', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Silvestre', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Inés', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Lucía', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Torunos', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Carmen', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rómulo Betancourt', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Corazón de Jesús', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ramón Ignacio Méndez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alto Barinas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manuel Palacio Fajardo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan Antonio Rodríguez Domínguez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Dominga Ortiz de Páez', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar (Barinitas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barinitas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Barinitas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barinitas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Altamira de Cáceres', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barinitas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Calderas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cruz Paredes (Barrancas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Paredes (Barrancas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Barrancas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Paredes (Barrancas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Socorro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Paredes (Barrancas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mazparrito', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ezequiel Zamora (Santa Bárbara)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (Santa Bárbara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Bárbara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (Santa Bárbara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pedro Briceño Méndez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (Santa Bárbara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ramón Ignacio Méndez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (Santa Bárbara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Ignacio del Pumar', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Obispos (Obispos)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Obispos (Obispos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Obispos', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Obispos (Obispos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Guasimitos', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Obispos (Obispos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Real', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Obispos (Obispos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Luz', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pedraza (Ciudad Bolivia)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedraza (Ciudad Bolivia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ciudad Bolivia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedraza (Ciudad Bolivia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Ignacio Briceño', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedraza (Ciudad Bolivia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Félix Ribas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedraza (Ciudad Bolivia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Páez', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rojas (Libertad)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rojas (Libertad)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertad', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rojas (Libertad)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Dolores', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rojas (Libertad)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rosa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rojas (Libertad)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Palacio Fajardo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rojas (Libertad)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Simón Rodríguez', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sosa (Ciudad de Nutrias)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sosa (Ciudad de Nutrias)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ciudad de Nutrias', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sosa (Ciudad de Nutrias)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Regalo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sosa (Ciudad de Nutrias)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Puerto Nutrias', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sosa (Ciudad de Nutrias)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Catalina', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sosa (Ciudad de Nutrias)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Simón Bolívar', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Angostura (Ciudad Piar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura (Ciudad Piar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Raúl Leoni', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura (Ciudad Piar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Barceloneta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura (Ciudad Piar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Bárbara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura (Ciudad Piar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Angostura del Orinoco (Ciudad Bolívar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Catedral', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zea', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Orinoco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Antonio Páez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Marhuanta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Agua Salada', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Vista Hermosa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Sabanita', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Panapana', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caroní (Ciudad Guayana)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cachamay', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chirica', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Dalla Costa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Once de Abril', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Simón Bolívar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Unare', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Universidad', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Vista al Sol', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pozo Verde', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Yocoima', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('5 de Julio', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('pto.Ordaz', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cedeño (Caicara del Orinoco)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara del Orinoco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cedeño', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara del Orinoco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Altagracia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara del Orinoco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ascensión Farreras', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara del Orinoco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guaniamo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara del Orinoco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Urbana', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara del Orinoco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pijiguaos', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chien (El Palmar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chien (El Palmar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Padre Pedro Chien', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Callao (El Callao)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Callao (El Callao)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Callao', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Gran Sabana (Santa Elena de Uairén)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gran Sabana (Santa Elena de Uairén)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Gran Sabana', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gran Sabana (Santa Elena de Uairén)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('IkabaRú', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Piar (Upata)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Upata)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Andrés Eloy Blanco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Upata)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pedro Cova', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Upata)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Upata', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Roscio (Guasipati)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (Guasipati)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Roscio', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (Guasipati)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Salóm', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sifontes (El Dorado)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sifontes (El Dorado)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tumeremo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sifontes (El Dorado)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Dalla Costa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sifontes (El Dorado)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Isidro', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre (Maripa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Maripa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Maripa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aripao', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Maripa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guarataro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Maripa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Majadas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Maripa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Moitaco', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carabobo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bejuma (Bejuma)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bejuma (Bejuma)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Canoabo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bejuma (Bejuma)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Simon Bolivar', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carlos Arvelo (Güigüe)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carlos Arvelo (Güigüe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Güigüe', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carlos Arvelo (Güigüe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Belén', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carlos Arvelo (Güigüe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tacarigua', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Diego Ibarra (Mariara)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Diego Ibarra (Mariara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mariara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Diego Ibarra (Mariara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aguas Calientes', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guacara (Guacara)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guacara (Guacara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ciudad Alianza', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guacara (Guacara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guacara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guacara (Guacara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Yagua', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertador (Tocuyito)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Tocuyito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tocuyito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Tocuyito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Independencia', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Guayos (Los Guayos)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Guayos (Los Guayos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Guayos', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miranda (Miranda)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Miranda)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miranda', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mora (Morón)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mora (Morón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Morón', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mora (Morón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urama', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Montalbán (Montalbán)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montalbán (Montalbán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Montalbán', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Naguanagua ( Naguanagua)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Naguanagua ( Naguanagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urbana Naguanagua', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Puerto Cabello (Puerto Cabello)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Puerto Cabello (Puerto Cabello)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bartolomé Salóm', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Puerto Cabello (Puerto Cabello)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Democracia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Puerto Cabello (Puerto Cabello)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Fraternidad', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Puerto Cabello (Puerto Cabello)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Goaigoaza', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Puerto Cabello (Puerto Cabello)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan José Flores', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Puerto Cabello (Puerto Cabello)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Unión', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Puerto Cabello (Puerto Cabello)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Borburata', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Puerto Cabello (Puerto Cabello)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Patanemo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Diego (San Diego)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Diego (San Diego)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Diego', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Joaquín (San Joaquín)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Joaquín (San Joaquín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Joaquín', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valencia (Valencia)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Candelaria', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Catedral', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Socorro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miguel Peña', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rafael Urdaneta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Blas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rosa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Negro Primero', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cojedes', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Anzoátegui (Cojedes)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Anzoátegui (Cojedes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cojedes', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Anzoátegui (Cojedes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan de Mata Suárez', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tinaquillo (Tinaquillo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tinaquillo (Tinaquillo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tinaquillo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Girardot (El Baúl)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (El Baúl)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Baúl', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (El Baúl)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lima Blanco (Macapo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lima Blanco (Macapo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Aguadita', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lima Blanco (Macapo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Macapo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pao de San Juan Bautista (El Pao)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pao de San Juan Bautista (El Pao)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Pao', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ricaurte (Libertad)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ricaurte (Libertad)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Amparo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ricaurte (Libertad)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertad de Cojedes', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rómulo Gallegos (Las Vegas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Gallegos (Las Vegas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rómulo Gallegos', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ezequiel Zamora (San Carlos)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Carlos de Austria', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan Ángel Bravo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manuel Manrique', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tinaco (Tinaco)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tinaco (Tinaco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('General en Jefe José Laurencio Silva', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Delta Amacuro', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antonio Díaz', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio Díaz')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Curiapo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio Díaz')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Almirante Luis Brión', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio Díaz')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Francisco Aniceto Lugo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio Díaz')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manuel Renaud', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio Díaz')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Padre Barral', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio Díaz')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santos de Abelgas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Casacoima (Sierra Imataca)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Casacoima (Sierra Imataca)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Imataca', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Casacoima (Sierra Imataca)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan Bautista Arismendi', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Casacoima (Sierra Imataca)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manuel Piar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Casacoima (Sierra Imataca)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rómulo Gallegos', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pedernales (Pedernales)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedernales (Pedernales)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pedernales', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedernales (Pedernales)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Luis Beltrán Prieto Figueroa', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tucupita (Tucupita)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Vidal Marcano', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Leonardo Ruíz Pineda', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mariscal Antonio José de Sucre', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monseñor Argimiro García', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Virgen del Valle', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Rafael', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan Millan', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Distrito Capital', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertador (Caracas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('23 de enero', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Altagracia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antímano', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caricuao', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Catedral', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Coche', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Junquito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Paraíso', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Recreo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Valle', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Candelaria', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Pastora', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Vega', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Macarao', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Agustín', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Bernardino', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Pedro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rosalia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Teresa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Falcón', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Acosta (San Juan de los Cayos)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Juan de los Cayos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Capadare', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Juan de los Cayos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Pastora', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Juan de los Cayos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertador', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Juan de los Cayos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan de los Cayos', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar (San Luis)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Luis)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aracua', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Luis)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Peña', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Luis)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Luis', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Buchivacoa (Capatárida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buchivacoa (Capatárida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bariro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buchivacoa (Capatárida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Borojó', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buchivacoa (Capatárida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Capatárida', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buchivacoa (Capatárida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guajiro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buchivacoa (Capatárida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Seque', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buchivacoa (Capatárida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valle de Eroa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buchivacoa (Capatárida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zazárida', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carirubana (Punto Fijo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carirubana (Punto Fijo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Norte', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carirubana (Punto Fijo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carirubana', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carirubana (Punto Fijo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Ana', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carirubana (Punto Fijo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urbana Punta Cardón', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Colina (La Vela de Coro)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colina (La Vela de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Vela de Coro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colina (La Vela de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Acurigua', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colina (La Vela de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guaibacoa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colina (La Vela de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Calderas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colina (La Vela de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mataruca', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Dabajuro (Dabajuro)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Dabajuro (Dabajuro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Dabajuro', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Democracia (Pedregal)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Democracia (Pedregal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Agua Clara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Democracia (Pedregal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Avaria', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Democracia (Pedregal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pedregal', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Democracia (Pedregal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Piedra Grande', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Democracia (Pedregal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Purureche', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Falcón (Pueblo Nuevo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Adaure', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Adícora', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Baraived', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Buena Vista', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jadacaquiva', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Vínculo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Hato', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Moruy', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pueblo Nuevo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Federación (Churuguara)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Federación (Churuguara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Agua Larga', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Federación (Churuguara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Churuguara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Federación (Churuguara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Paují', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Federación (Churuguara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Independencia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Federación (Churuguara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mapararí', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Iturriza (Chichiriviche)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iturriza (Chichiriviche)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Boca del Tocuyo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iturriza (Chichiriviche)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chichiriviche', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iturriza (Chichiriviche)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tocuyo de la Costa', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jacura (Jacura)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jacura (Jacura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Agua Linda', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jacura (Jacura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Araurima', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jacura (Jacura)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jacura', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Taques (Santa Cruz de Los Taques)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Taques (Santa Cruz de Los Taques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Taques', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Taques (Santa Cruz de Los Taques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Judibana', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manaure (Yaracal)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Manaure (Yaracal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cacique Manaure', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mauroa (Mene de Mauroa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mauroa (Mene de Mauroa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mene de Mauroa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mauroa (Mene de Mauroa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Félix', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mauroa (Mene de Mauroa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Casigua', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miranda (Santa Ana de Coro)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guzmán Guillermo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mitare', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Río Seco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sabaneta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Antonio', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Gabriel', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Ana', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Palmasola (Palmasola)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Palmasola (Palmasola)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Palmasola', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Petit (Cabure)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Petit (Cabure)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cabure', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Petit (Cabure)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Colina', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Petit (Cabure)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Curimagua', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Píritu (Falcón) ', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Píritu (Falc)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José de la Costa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Píritu (Falcón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Píritu', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco (Mirimire)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (Mirimire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Capital San Francisco Mirimire', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre (La Cruz de Taratara)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (La Cruz de Taratara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (La Cruz de Taratara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pecaya', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Silva (Tucacas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Silva (Tucacas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tucacas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Silva (Tucacas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Boca de Aroa', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tocópero (Tocópero)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tocópero (Tocópero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tocópero', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Unión (Santa Cruz de Bucaral)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Unión (Santa Cruz de Bucaral)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Charal', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Unión (Santa Cruz de Bucaral)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Vegas del Tuy', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Unión (Santa Cruz de Bucaral)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Cruz de Bucaral', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urumaco (Urumaco)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urumaco (Urumaco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bruzual', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urumaco (Urumaco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urumaco', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zamora (Puerto Cumarebo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Puerto Cumarebo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Puerto Cumarebo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Puerto Cumarebo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Ciénaga', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Puerto Cumarebo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Soledad', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Puerto Cumarebo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pueblo Cumarebo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Puerto Cumarebo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zazárida', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guárico', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Camaguán (Camaguán)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camaguán (Camaguán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Camaguán', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camaguán (Camaguán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Puerto Miranda', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camaguán (Camaguán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Uverito', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chaguaramas (Chaguaramas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chaguaramas (Chaguaramas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chaguaramas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Socorro (El Socorro)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Socorro (El Socorro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Socorro', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Mercedes (Las Mercedes)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Las Mercedes (Las Mercedes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Mercedes', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Las Mercedes (Las Mercedes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cabruta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Las Mercedes (Las Mercedes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rita de Manapire', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Leonardo Infante (Valle de La Pascua)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Leonardo Infante (Valle de La Pascua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valle de la Pascua', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Leonardo Infante (Valle de La Pascua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Espino', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Julián Mellado (El Sombrero)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Julián Mellado (El Sombrero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Sombrero', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Julián Mellado (El Sombrero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sosa', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Francisco de Miranda (Calabozo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Francisco de Miranda (Calabozo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Calvario', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Francisco de Miranda (Calabozo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Rastro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Francisco de Miranda (Calabozo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guardatinajas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Francisco de Miranda (Calabozo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Capital Urbana Calabozo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monagas (Altagracia de Orituco)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Altagracia de Orituco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Altagracia de Orituco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Altagracia de Orituco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Rafael de Orituco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Altagracia de Orituco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco Javier de Lezama', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Altagracia de Orituco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Paso Real de Macaira', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Altagracia de Orituco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carlos Soublette', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Altagracia de Orituco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco de Macaira', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Altagracia de Orituco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertad de Orituco', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ortiz (Ortiz)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ortiz (Ortiz)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José de Tiznados', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ortiz (Ortiz)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco de Tiznados', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ortiz (Ortiz)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Lorenzo de Tiznados', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ortiz (Ortiz)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ortiz', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ribas (Tucupido)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (Tucupido)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tucupido', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (Tucupido)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Rafael de Laya', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Roscio (San Juan de Los Morros)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cantagallo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan de Los Morros', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Parapara', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Gerónimo de Guayabal (Guayabal)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Gerónimo de Guayabal (Guayabal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guayabal', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Gerónimo de Guayabal (Guayabal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cazorla', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José de Guaribe (San José de Guaribe)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San José de Guaribe (San José de Guaribe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José de Guaribe', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa María de Ipire (Santa María de Ipire)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa María de Ipire (Santa María de Ipire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa María de Ipire', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa María de Ipire (Santa María de Ipire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Altamira', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zaraza (Zaraza)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zaraza (Zaraza)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José de Unare', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zaraza (Zaraza)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zaraza', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Guaira', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Vargas (La Guaira)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caraballeda', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carayaca', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carlos Soublette', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caruao', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Catia La Mar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Junko', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Guaira', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Macuto', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Maiquetía', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Naiguatá', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urimare', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lara', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Blanco (Sanare)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Blanco (Sanare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Quebrada Honda de Guache', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Blanco (Sanare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pio Tamayo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Blanco (Sanare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Yacambú', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Crespo (Duaca)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Crespo (Duaca)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Freitez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Crespo (Duaca)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José María Blanco', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Iribarren (Barquisimeto)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aguedo Felipe Alvarado', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Buena Vista', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Catedral', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Concepción', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Cují', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juárez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ana Soto (Antigua Juan de Villegas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rosa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tamaca', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Unión', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jiménez (Quibor)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jiménez (Quibor)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan Bautista Rodríguez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jiménez (Quibor)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cuara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jiménez (Quibor)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Diego de Lozada', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jiménez (Quibor)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Paraíso de San José', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jiménez (Quibor)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Miguel', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jiménez (Quibor)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tintorero', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jiménez (Quibor)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Bernardo Dorante', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jiménez (Quibor)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Coronel Mariano Peraza', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Morán (El Tocuyo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Morán (El Tocuyo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Anzoátegui', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Morán (El Tocuyo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Morán (El Tocuyo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guárico', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Morán (El Tocuyo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Hilario Luna y Luna', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Morán (El Tocuyo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Humocaro Bajo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Morán (El Tocuyo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Humocaro Alto', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Morán (El Tocuyo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Candelaria', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Morán (El Tocuyo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Morán', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Palavecino (Cabudare)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Palavecino (Cabudare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cabudare', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Palavecino (Cabudare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Gregorio Bastidas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Palavecino (Cabudare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Agua Viva', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Planas (Sarare)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Planas (Sarare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Buría', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Planas (Sarare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Gustavo Vega', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Planas (Sarare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sarare', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Torres (Carora)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Altagracia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antonio Díaz', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Camacaro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Castañeda', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cecilio Zubillaga', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chiquinquira', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Blanco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Espinoza de los Monteros', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Heriberto Arrollo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Mercedes', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manuel Morillo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Montaña Verde', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Montes de Oca', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Reyes de Vargas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Torres', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Trinidad Samuel', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urdaneta (Siquisique)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Siquisique)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Xaguas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Siquisique)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Siquisique', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Siquisique)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Miguel', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Siquisique)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Moroturo', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mérida', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Adriani (El Vigía)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Adriani (El Vigía)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Presidente Betancourt ( El Vigía)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Adriani (El Vigía)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Presidente Páez ( El Vigía)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Adriani (El Vigía)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Presidente Rómulo Gallegos ( El Vigía)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Adriani (El Vigía)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Gabriel Picón González ( La Palmita)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Adriani (El Vigía)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Héctor Amable Mora ( Mucujepe)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Adriani (El Vigía)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Nucete Sardi ( Los Naranjos)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Adriani (El Vigía)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pulido Méndez ( La Blanca)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Andrés Bello (La Azulita)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (La Azulita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Azulita', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aricagua (Aricagua)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aricagua (Aricagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aricagua ( Aricagua)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aricagua (Aricagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Antonio ( Campo Elías)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Briceño (Torondoy)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Briceño (Torondoy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Cristóbal de Torondoy ( San Cristóbal de Torondoy)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Briceño (Torondoy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Torondoy', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chacón (Canaguá)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacón (Canaguá)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Canagua', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacón (Canaguá)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Capurí ( Capurí)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacón (Canaguá)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chacantá (Chacantá)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacón (Canaguá)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Molino ( El Molino)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacón (Canaguá)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guaimaral ( El Viento)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacón (Canaguá)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mucutuy ( Mucutuy)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacón (Canaguá)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mucuchachí ( Mucuchachí)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Campo Elías (Ejido)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campo Elías (Ejido)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Fernández Peña ( Ejido)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campo Elías (Ejido)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Matriz ( Ejido)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campo Elías (Ejido)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Montalbán ( Ejido)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campo Elías (Ejido)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Acequias', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campo Elías (Ejido)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jají', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campo Elías (Ejido)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Mesa ( La Mesa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campo Elías (Ejido)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José del Sur ( San José)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Dávila (Bailadores)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Dávila (Bailadores)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Gerónimo Maldonado', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Dávila (Bailadores)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bailadores', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Febres Cordero (Nueva Bolivia)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Febres Cordero (Nueva Bolivia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Independencia ( Palmarito)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Febres Cordero (Nueva Bolivia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('María de la Concepción Palacios Blanco ( Las Virtudes)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Febres Cordero (Nueva Bolivia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Nueva Bolivia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Febres Cordero (Nueva Bolivia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Apolonia', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guaraque (Guaraque)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaraque (Guaraque)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guaraque ( Guaraque)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaraque (Guaraque)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mesa de Quintero ( Mesa de Quintero)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaraque (Guaraque)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Río Negro ( Río Negro)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertador (Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antonio Spinetti Dini ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arias ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caracciolo Parra Pérez ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Domingo Peña ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Llano ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Gonzalo Picón Febres ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jacinto Plaza ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan Rodríguez Suárez ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lasso de la Vega ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mariano Picón Salas ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Milla ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Osuna Rodríguez ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sagrario ( Mérida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Morro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Nevados', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miranda (Timotes)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Timotes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Andrés Eloy Blanco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Timotes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Venta ( La Venta)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Timotes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Piñango', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Timotes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Timotes', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Noguera (Santa María de Caparo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Noguera (Santa María de Caparo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa María de Caparo ( Santa María de Caparo)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Parra Olmedo (Tucaní)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Parra Olmedo (Tucaní)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tucaní ( Tucaní)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Parra Olmedo (Tucaní)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Florencio Ramírez ( El Pinar)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pinto Salinas (Santa Cruz de Mora)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pinto Salinas (Santa Cruz de Mora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Cruz de Mora', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pinto Salinas (Santa Cruz de Mora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mesa Bolívar (Mesa Bolívar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pinto Salinas (Santa Cruz de Mora)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mesa de Las Palmas (Mesa de Las Palmas)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pueblo Llano (Pueblo Llano)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pueblo Llano (Pueblo Llano)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pueblo Llano', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Quintero (Santo Domingo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Quintero (Santo Domingo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santo Domingo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Quintero (Santo Domingo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Piedras ( Las Piedras)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rangel (Mucuchíes)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Mucuchíes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cacute ( Cacute)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Mucuchíes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Toma ( La Toma)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Mucuchíes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mucuchíes', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Mucuchíes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mucurubá ( Mucurubá)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Mucuchíes)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Rafael', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ramos de Lora (Santa Elena de Arenales)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ramos de Lora (Santa Elena de Arenales)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Eloy Paredes ( Guayabones)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ramos de Lora (Santa Elena de Arenales)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Rafael de Alcázar ( San Rafael de Alcázar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ramos de Lora (Santa Elena de Arenales)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Elena de Arenales', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Salas (Arapuey)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Salas (Arapuey)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arapuey ( Arapuey)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Salas (Arapuey)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Palmira ( San José de Palmira)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Marquina (Tabay)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Marquina (Tabay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tabay', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre (Lagunillas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Lagunillas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chiguará', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Lagunillas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Estánques ( Estánques)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Lagunillas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lagunillas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Lagunillas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Trampa ( La Trampa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Lagunillas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pueblo Nuevo del Sur ( Pueblo Nuevo del Sur)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Lagunillas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tovar (Tovar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tovar (Tovar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Amparo ( Tovar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tovar (Tovar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Llano ( Tovar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tovar (Tovar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco ( Tovar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tovar (Tovar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tovar ( Tovar)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zea (Zea)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zea (Zea)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caño El Tigre ( Caño Tigre)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zea (Zea)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zea', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miranda', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Acevedo (Caucagua)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acevedo (Caucagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aragüita', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acevedo (Caucagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arévalo González', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acevedo (Caucagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Capaya', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acevedo (Caucagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caucagua', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acevedo (Caucagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Panaquire', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acevedo (Caucagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ribas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acevedo (Caucagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Café', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acevedo (Caucagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Marizapa', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Andrés Bello (San José de Barlovento)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (San José de Barlovento)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cumbo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (San José de Barlovento)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José de Barlovento', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Baruta (Baruta)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baruta (Baruta)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Cafetal ( Área metropolitana de Caracas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baruta (Baruta)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Minas ( Área metropolitana de Caracas)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Brión (Higuerote)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Brión (Higuerote)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Higuerote', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Brión (Higuerote)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Curiepe', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Brión (Higuerote)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tacarigua de Brión', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar (San Francisco de Yare)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Francisco de Yare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Antonio de Yare', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Francisco de Yare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco de Yare', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Buroz (Mamporal)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buroz (Mamporal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mamporal', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carrizal (Carrizal)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carrizal (Carrizal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carrizal', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chacao (Chacao)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacao (Chacao)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chacao ( Área metropolitana de Caracas)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cristóbal Rojas (Charallave)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cristóbal Rojas (Charallave)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Charallave', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cristóbal Rojas (Charallave)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Brisas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Hatillo (El Hatillo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Hatillo (El Hatillo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rosalía de Palermo( Área metropolitana de Caracas)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guaicaipuro (Los Teques)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Altagracia de la Montaña', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cecilio Acosta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Teques', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Jarillo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Pedro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tácata', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Paracotos', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Gual (Cúpira)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gual (Cúpira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cúpira', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gual (Cúpira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Machurucuto', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Independencia (Santa Teresa del Tuy)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Santa Teresa del Tuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cartanal', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Santa Teresa del Tuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Teresa del Tuy', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lander (Ocumare del Tuy)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lander (Ocumare del Tuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Democracia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lander (Ocumare del Tuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ocumare del Tuy', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lander (Ocumare del Tuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Bárbara', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Salias (San Antonio de los Altos)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Salias (San Antonio de los Altos)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Antonio de los Altos', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Páez (Río Chico)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Río Chico)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Río Chico', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Río Chico)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Guapo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Río Chico)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tacarigua de la Laguna', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Río Chico)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Paparo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Río Chico)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Fernando del Guapo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Paz Castillo (Santa Lucía)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Paz Castillo (Santa Lucía)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Lucía del Tuy', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Plaza (Guarenas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Plaza (Guarenas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guarenas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre (Petare)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Petare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Leoncio Martínez ( Área metropolitana de Caracas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Petare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caucagüita ( Área metropolitana de Caracas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Petare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Filas de Mariche ( Área metropolitana de Caracas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Petare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Dolorita ( Área metropolitana de Caracas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Petare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Petare ( Área metropolitana de Caracas)', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urdaneta (Cúa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Cúa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cúa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Cúa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Nueva Cúa', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zamora (Guatire)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Guatire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guatire', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Guatire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monagas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Acosta (San Antonio de Capayacuar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Antonio de Capayacuar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Antonio de Maturín', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Antonio de Capayacuar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco de Maturín', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aguasay (Aguasay)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aguasay (Aguasay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aguasay', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar (Caripito)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Caripito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caripito', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caripe (Caripe)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caripe (Caripe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Guácharo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caripe (Caripe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Guanota', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caripe (Caripe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sabana de Piedra', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caripe (Caripe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Agustín', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caripe (Caripe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Teresen', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caripe (Caripe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caripe', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cedeño (Caicara de Maturín)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara de Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Areo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara de Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Capital Cedeño', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara de Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Félix de Cantalicio', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara de Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Viento Fresco', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertador (Temblador)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Temblador)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chaguaramas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Temblador)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Alhuacas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Temblador)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tabasca', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Temblador)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Temblador', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Maturín (Maturín)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alto de los Godos', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Boquerón', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Cocuizas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Cruz', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Simón', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Corozo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Furrial', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jusepín', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Pica', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Vicente', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Piar (Aragua de Maturín)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Aragua de Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aparicio', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Aragua de Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aragua de Maturín', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Aragua de Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chaguaramal', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Aragua de Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Pinto', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Aragua de Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guanaguana', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Aragua de Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Toscana', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Aragua de Maturín)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Taguaya', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Punceres (Quiriquire)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Punceres (Quiriquire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cachipo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Punceres (Quiriquire)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Quiriquire', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Bárbara (Santa Bárbara)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Bárbara (Santa Bárbara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Bárbara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Bárbara (Santa Bárbara)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Morón', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sotillo (Barrancas del Orinoco)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sotillo (Barrancas del Orinoco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Barrancas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sotillo (Barrancas del Orinoco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Barrancos de Fajardo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Uracoa (Uracoa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Uracoa (Uracoa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Uracoa', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zamora (Punta de Mata)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Punta de Mata)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Tejero', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Punta de Mata)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Punta de Mata', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Nueva Esparta', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antolín del Campo (Paraguachí)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antolín del Campo (Paraguachí)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antolín del Campo​', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arismendi (La Asunción)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arismendi​', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Díaz (San Juan Bautista)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Díaz (San Juan Bautista)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan Bautista​', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Díaz (San Juan Bautista)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zabala​', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('García (El Valle)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'García (El Valle)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('García​', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'García (El Valle)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Francisco Fajardo​', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Gómez (Santa Ana)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gómez (Santa Ana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar​', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gómez (Santa Ana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guevara​', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gómez (Santa Ana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Matasiete​', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gómez (Santa Ana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Ana​', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gómez (Santa Ana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre​', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Macanao (Boca de Río)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Macanao (Boca de Río)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco de Macanao​', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Macanao (Boca de Río)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Boca de Río​', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Maneiro (Pampatar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maneiro (Pampatar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aguirre​', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maneiro (Pampatar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Maneiro​', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Marcano (Juan Griego)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Marcano (Juan Griego)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Adrián​', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Marcano (Juan Griego)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan Griego', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mariño (Porlamar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Porlamar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mariño​', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tubores (Punta de Piedras)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tubores (Punta de Piedras)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tubores​', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tubores (Punta de Piedras)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Barales', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Villalba (San Pedro de Coche)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Villalba (San Pedro de Coche)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Vicente Fuentes', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Villalba (San Pedro de Coche)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Villalba', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Portuguesa', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Agua Blanca (Agua Blanca)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Agua Blanca (Agua Blanca)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Agua Blanca', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Araure (Araure)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Araure (Araure)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Araure', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Araure (Araure)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Río Acarigua', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Esteller (Píritu)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Esteller (Píritu)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Píritu', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Esteller (Píritu)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Uveral', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guanare (Guanare)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cordova', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guanare', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José de la Montaña', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan de Guanaguanare', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Virgen de Coromoto', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guanarito (Guanarito)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanarito (Guanarito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guanarito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanarito (Guanarito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Trinidad de la Capilla', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanarito (Guanarito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Divina Pastora', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ospino (Ospino)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ospino (Ospino)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aparición', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ospino (Ospino)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Estación', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ospino (Ospino)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ospino', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Páez (Acarigua)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Acarigua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Acarigua', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Acarigua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Payara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Acarigua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pimpinela', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Acarigua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ramón Peraza', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Papelón (Papelón)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Papelón (Papelón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Caño Delgadito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Papelón (Papelón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Papelón', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Genaro de Boconoíto (Boconoíto)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Genaro de Boconoíto (Boconoíto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antolín Tovar Anquino', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Genaro de Boconoíto (Boconoíto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Boconoíto', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Rafael de Onoto (San Rafael de Onoto)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Rafael de Onoto (San Rafael de Onoto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Fé', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Rafael de Onoto (San Rafael de Onoto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Rafael de Onoto', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Rafael de Onoto (San Rafael de Onoto)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Thelmo Morles', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rosalía (El Playón)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rosalía (El Playón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Florida', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rosalía (El Playón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Playón', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre (Biscucuy)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Biscucuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Biscucuy', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Biscucuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Concepción', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Biscucuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José de Saguaz', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Biscucuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Rafael de Palo Alzado', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Biscucuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Uvencio Antonio Velásquez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Biscucuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Villa Rosa', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Turén (Villa Bruzual)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Turén (Villa Bruzual)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Villa Bruzual', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Turén (Villa Bruzual)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Canelones', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Turén (Villa Bruzual)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Cruz', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Turén (Villa Bruzual)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Isidro Labrador', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Unda (Chabasquén)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Unda (Chabasquén)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chabasquén', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Unda (Chabasquén)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Peña Blanca', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arismendi (Río Caribe)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Río Caribe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Río Caribe', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Río Caribe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antonio José de Sucre', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Río Caribe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Morro de Puerto Santo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Río Caribe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Puerto Santo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Río Caribe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan de las Galdonas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Benítez (El Pilar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Benítez (El Pilar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Pilar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Benítez (El Pilar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Rincón', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Benítez (El Pilar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('General Francisco Antonio Vázquez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Benítez (El Pilar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guaraúnos', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Benítez (El Pilar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tunapuicito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Benítez (El Pilar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Unión', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bermúdez (Carúpano)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bermúdez (Carúpano)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Catalina', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bermúdez (Carúpano)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rosa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bermúdez (Carúpano)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Teresa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bermúdez (Carúpano)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bermúdez (Carúpano)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Maracapana', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Blanco (Casanay)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Blanco (Casanay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mariño', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Blanco (Casanay)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rómulo Gallegos', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar (Marigüitar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Marigüitar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Marigüitar', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cajigal (Yaguaraparo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cajigal (Yaguaraparo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertad', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cajigal (Yaguaraparo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Paujil', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cajigal (Yaguaraparo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Yaguaraparo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cruz Salmerón Acosta (Araya)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Salmerón Acosta (Araya)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Araya', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Salmerón Acosta (Araya)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chacopata', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Salmerón Acosta (Araya)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manicuare', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertador (Tunapuy)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Tunapuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tunapuy', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Tunapuy)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Campo Elías', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mariño (Irapa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Irapa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Irapa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Irapa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Campo Claro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Irapa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Marabal', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Irapa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Antonio de Irapa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Irapa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Soro', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mata (San José de Aerocuar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mata (San José de Aerocuar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José de Areocuar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mata (San José de Aerocuar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tavera Acosta', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mejía (San Antonio del Golfo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mejía (San Antonio del Golfo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Antonio del Golfo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Montes (Cumanacoa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montes (Cumanacoa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cumanacoa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montes (Cumanacoa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arenas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montes (Cumanacoa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Aricagua', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montes (Cumanacoa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cocollar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montes (Cumanacoa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Fernando', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montes (Cumanacoa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Lorenzo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ribero (Cariaco)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribero (Cariaco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cariaco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribero (Cariaco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Catuaro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribero (Cariaco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rendón', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribero (Cariaco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Cruz', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribero (Cariaco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa María', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre (Cumaná)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Altagracia (Cumaná)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Inés (Cumaná)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valentín Valiente (Cumaná)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ayacucho (Cumaná)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Raúl Leoni', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Gran Mariscal', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valdez (Güiria)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valdez (Güiria)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cristóbal Colón', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valdez (Güiria)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bideau', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valdez (Güiria)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Punta de Piedras', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valdez (Güiria)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Güiria', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Táchira', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Andrés Bello (Cordero)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (Cordero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cordero', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ayacucho (Colón)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ayacucho (Colón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rivas Berti', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ayacucho (Colón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan de Colon', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ayacucho (Colón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Pedro del Rio', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar (San Antonio del Táchira)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Antonio del Táchira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Isaias Medina Angarita', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Antonio del Táchira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan Vicente Gomez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Antonio del Táchira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Palotal', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Antonio del Táchira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Antonio del Tachira', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cárdenas (Táriba)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cárdenas (Táriba)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Amenodoro Rangel Lamus', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cárdenas (Táriba)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Florida', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cárdenas (Táriba)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tariba', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Córdoba (Santa Ana de Táchira)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Córdoba (Santa Ana de Táchira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Ana del Tachira', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Fernández (San Rafael del Piñal)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Fernández (San Rafael del Piñal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alberto Adriani', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Fernández (San Rafael del Piñal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Rafael', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Fernández (San Rafael del Piñal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santo Domingo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guásimos (Palmira)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guásimos (Palmira)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Palmira', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Hevia (La Fría)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Hevia (La Fría)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Boca de Grita', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Hevia (La Fría)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jose Antonio Paez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Hevia (La Fría)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Fria', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Independencia (Capacho Nuevo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Capacho Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Capacho Nuevo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Capacho Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan German Roscio', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Capacho Nuevo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Roman Cardenas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jáuregui (La Grita)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jáuregui (La Grita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Emilio Constantino Guerrero', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jáuregui (La Grita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Grita', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jáuregui (La Grita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miguel Antonio Salias', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Junín (Rubio)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Junín (Rubio)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bramon', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Junín (Rubio)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Petrolea', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Junín (Rubio)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Quinimari', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Junín (Rubio)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rubio', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertad (Capacho Viejo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (Capacho Viejo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Capacho Viejo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (Capacho Viejo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cipriano Castro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (Capacho Viejo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manuel Felipe Rugeles', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertador (Abejales)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Abejales)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Abejales', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Abejales)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Doradas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Abejales)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Emeterio Ochoa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Abejales)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Joaquin de Navay', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lobatera (Lobatera)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lobatera (Lobatera)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lobatera', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lobatera (Lobatera)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Constitucion', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Maldonado (La Tendida)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maldonado (La Tendida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bocono', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maldonado (La Tendida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Hernandez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maldonado (La Tendida)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Tendida', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Michelena (Michelena)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Michelena (Michelena)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Michelena', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miranda (San José de Bolívar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (San José de Bolívar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Jose de Bolivar', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Panamericano (Coloncito)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Panamericano (Coloncito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Coloncito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Panamericano (Coloncito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Palmita', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rómulo Costa (Las Mesas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Costa (Las Mesas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Mesas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Cristóbal (San Cristóbal)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Francisco Romero Lobo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Concordia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pedro Maria Morantes', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Juan Bautista', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Sebastian', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Judas Tadeo (Umuquena)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Judas Tadeo (Umuquena)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Umuquena', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Seboruco (Seboruco)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Seboruco (Seboruco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Seboruco', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Simón Rodríguez (San Simón)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Simón Rodríguez (San Simón)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Simon', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre (Queniquea)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Queniquea)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Eleazar Lopez Contreras', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Queniquea)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Capital Sucre', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Queniquea)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Pablo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Torbes (San Josecito)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torbes (San Josecito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Josecito', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urdaneta (Delicias)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Delicias)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Delicias', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ureña (Ureña)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ureña (Ureña)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ureña', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ureña (Ureña)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Nueva Arcadia', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Uribante (Pregonero)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Uribante (Pregonero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cardenas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Uribante (Pregonero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan Pablo Peñaloza', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Uribante (Pregonero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Potosi', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Uribante (Pregonero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pregonero', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Vargas (El Cobre)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (El Cobre)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Cobre', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Trujillo', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Andrés Bello (Santa Isabel)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (Santa Isabel)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Araguaney', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (Santa Isabel)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Jaguito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (Santa Isabel)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Esperanza', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (Santa Isabel)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Isabel', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Boconó (Boconó)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Boconó', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Carmen', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mosquey', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ayacucho', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Burbusay', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('General Ribas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guaramacal', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Vega de Guaramacal', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monseñor Jáuregui', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rafael Rangel', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Miguel', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar (Sabana Grande)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Sabana Grande)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sabana Grande', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Sabana Grande)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cherengue', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Sabana Grande)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Granados', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Candelaria (Chejendé)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Candelaria (Chejendé)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arnoldo Gabaldón', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Candelaria (Chejendé)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolivia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Candelaria (Chejendé)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carrillo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Candelaria (Chejendé)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cegarra', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Candelaria (Chejendé)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chejende', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Candelaria (Chejendé)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manuel Salvador Ulloa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Candelaria (Chejendé)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Jose', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carache (Carache)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carache (Carache)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carache', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carache (Carache)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Concepción', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carache (Carache)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cuicas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carache (Carache)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Panamericana', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carache (Carache)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa cruz', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Campos Elías (Campo Elías)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campos Elías (Campo Elías)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Campo Elías', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campos Elías (Campo Elías)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arnoldo Gabaldón', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carvajal (Carvajal)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Carvajal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carvajal', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Carvajal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Campo Alegre', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Carvajal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antonio Nicolás Briceño', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Carvajal)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Leonardo Suárez', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Escuque (Escuque)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Escuque (Escuque)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Escuque', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Escuque (Escuque)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Unión (El Alto Escuque)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Escuque (Escuque)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rita', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Escuque (Escuque)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sabana Libre', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Ceiba (Santa Apolonia)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Ceiba (Santa Apolonia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Apolonia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Ceiba (Santa Apolonia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Progreso', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Ceiba (Santa Apolonia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Ceiba', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Ceiba (Santa Apolonia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tres de Febrero', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Márquez Cañizales (El Paradero)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Márquez Cañizales (El Paradero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Socorro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Márquez Cañizales (El Paradero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Caprichos', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Márquez Cañizales (El Paradero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antonio José de Sucre', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miranda (El Dividive)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (El Dividive)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Dividive', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (El Dividive)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Agua Santa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (El Dividive)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Agua Caliente', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (El Dividive)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Cenizo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (El Dividive)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valerita', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monte Carmelo (Monte Carmelo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monte Carmelo (Monte Carmelo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monte Carmelo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monte Carmelo (Monte Carmelo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Buena Vista', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monte Carmelo (Monte Carmelo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa María del Horcón', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Motatán (Motatán)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Motatán (Motatán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Motatán', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Motatán (Motatán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Baño', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Motatán (Motatán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jalisco', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pampán (Pampán)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampán (Pampán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pampán', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampán (Pampán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Flor de Patria', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampán (Pampán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Paz', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampán (Pampán)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Ana', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pampanito (Pampanito)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampanito (Pampanito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pampanito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampanito (Pampanito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Concepción', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampanito (Pampanito)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pampanito II', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rangel (Betijoque)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Betijoque)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Betijoque', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Betijoque)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Gregorio Hernández', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Betijoque)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Pueblita', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Betijoque)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Cedros', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre (Sabana de Mendoza)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Sabana de Mendoza)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sabana de Mendoza', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Sabana de Mendoza)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Junín', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Sabana de Mendoza)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valmore Rodríguez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Sabana de Mendoza)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Paraíso', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Trujillo (Trujillo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Andrés Linares', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chiquinquirá', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cristóbal Mendoza', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cruz Carrillo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Matriz', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monseñor Carrillo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tres Esquinas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urdaneta (La Quebrada)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (La Quebrada)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cabimbú', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (La Quebrada)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jajó', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (La Quebrada)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Mesa de Esnujaque', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (La Quebrada)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santiago', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (La Quebrada)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tuñame', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (La Quebrada)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Quebrada', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valera (Valera)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valera (Valera)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juan Ignacio Montilla', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valera (Valera)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Beatriz', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valera (Valera)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Puerta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valera (Valera)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mendoza del Valle de Momboy', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valera (Valera)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mercedes Díaz', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valera (Valera)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Luis', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Yaracuy', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arístides Bastidas (San Pablo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arístides Bastidas (San Pablo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arístides Bastidas', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar (Aroa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Aroa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bruzual (Chivacoa)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bruzual (Chivacoa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chivacoa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bruzual (Chivacoa)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Campo Elías', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cocorote (Cocorote)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cocorote (Cocorote)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cocorote', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Independencia (Independencia)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Independencia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Independencia', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Trinidad (Boraure)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Trinidad (Boraure)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Trinidad', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monge (Yumare)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monge (Yumare)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manuel Monge', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Nirgua (Nirgua)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Nirgua (Nirgua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Salóm', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Nirgua (Nirgua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Temerla', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Nirgua (Nirgua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Nirgua', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Páez (Sabana de Parra)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Sabana de Parra)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Antonio Páez', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Peña (Yaritagua)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Peña (Yaritagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Andrés', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Peña (Yaritagua)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Yaritagua', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Felipe (San Felipe)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Javier', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Albarico', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Felipe', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre (Guama)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Guama)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urachiche (Urachiche)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urachiche (Urachiche)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urachiche', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Veroes (Farriar)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Veroes (Farriar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Guayabo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Veroes (Farriar)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Farriar', @tipo, @pertenece);

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Zulia', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar (Tía Juana)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Tía Juana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rafael Maria Baralt', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Tía Juana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manuel Manrique', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Tía Juana)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rafael Urdaneta', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Baralt (San Timoteo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baralt (San Timoteo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Timoteo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baralt (San Timoteo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('General Urdaneta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baralt (San Timoteo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertador', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baralt (San Timoteo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Marcelino Briceño', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baralt (San Timoteo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Nuevo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baralt (San Timoteo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manuel Guanipa Matos', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cabimas (Cabimas)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ambrosio', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carmen Herrera', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Rosa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Germán Ríos Linares', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Benito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rómulo Betancourt', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jorge Hernández', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Punta Gorda', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Arístides Calvani', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Catatumbo (Encontrados)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Catatumbo (Encontrados)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Encontrados', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Catatumbo (Encontrados)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Udón Pérez', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Colón (San Carlos del Zulia)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colón (San Carlos del Zulia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Moralito', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colón (San Carlos del Zulia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Carlos del Zulia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colón (San Carlos del Zulia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Cruz del Zulia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colón (San Carlos del Zulia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Bárbara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colón (San Carlos del Zulia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Urribarrí', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guajira (Sinamaica)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guajira (Sinamaica)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sinamaica', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guajira (Sinamaica)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alta Guajira', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guajira (Sinamaica)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Elías Sánchez Rubio', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guajira (Sinamaica)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Guajira', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Padilla (El Toro)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Padilla (El Toro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Isla de Toas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Padilla (El Toro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monagas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Padilla (El Toro)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Fernando', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pulgar (Pueblo Nuevo-El Chivo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pulgar (Pueblo Nuevo-El Chivo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Agustín Codazzi', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pulgar (Pueblo Nuevo-El Chivo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carlos Quevedo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pulgar (Pueblo Nuevo-El Chivo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Francisco Javier Pulgar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pulgar (Pueblo Nuevo-El Chivo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Simón Rodríguez', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lossada (La Concepción)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lossada (La Concepción)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Concepción (capital)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lossada (La Concepción)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lossada (La Concepción)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mariano Parra León', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lossada (La Concepción)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Ramón Yépez', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Semprún (Casigua El Cubo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Semprún (Casigua El Cubo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Jesús María Semprún', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Semprún (Casigua El Cubo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Barí', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Cañada de Urdaneta (Concepción)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Cañada de Urdaneta (Concepción)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Concepción', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Cañada de Urdaneta (Concepción)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Andrés Bello', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Cañada de Urdaneta (Concepción)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chiquinquirá', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Cañada de Urdaneta (Concepción)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Carmelo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Cañada de Urdaneta (Concepción)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Potreritos', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Lagunillas (Ciudad Ojeda)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lagunillas (Ciudad Ojeda)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertad', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lagunillas (Ciudad Ojeda)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Alonso de Ojeda', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lagunillas (Ciudad Ojeda)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Venezuela', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lagunillas (Ciudad Ojeda)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Eleazar López Contreras', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lagunillas (Ciudad Ojeda)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Campo Lara', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Machiques (Machiques)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Machiques (Machiques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bartolomé de las Casas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Machiques (Machiques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Libertad', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Machiques (Machiques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Río Negro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Machiques (Machiques)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José de Perijá', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Mara (San Rafael del Moján)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mara (San Rafael del Moján)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Rafael', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mara (San Rafael del Moján)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Sierrita', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mara (San Rafael del Moján)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Las Parcelas', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mara (San Rafael del Moján)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Luis De Vicente', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mara (San Rafael del Moján)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monseñor Marcos Sergio Godoy', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mara (San Rafael del Moján)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ricaurte', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mara (San Rafael del Moján)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Tamare', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Maracaibo (Maracaibo)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Antonio Borjas Romero', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bolívar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cacique Mara', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Carracciolo Parra Pérez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cecilio Acosta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Cristo de Aranza', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Coquivacoa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Chiquinquirá', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Francisco Eugenio Bustamante', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Idelfonzo Vásquez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Juana de Ávila', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Luis Hurtado Higuera', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Manuel Dagnino', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Olegario Villalobos', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Raúl Leoni', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Lucía', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Isidro', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Venancio Pulgar', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Miranda (Los Puertos de Altagracia)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Los Puertos de Altagracia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Altagracia', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Los Puertos de Altagracia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Faría', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Los Puertos de Altagracia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Ana María Campos', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Los Puertos de Altagracia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Antonio', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Los Puertos de Altagracia)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San José', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rosario (La Villa del Rosario)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rosario (La Villa del Rosario)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Donaldo García', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rosario (La Villa del Rosario)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Rosario', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rosario (La Villa del Rosario)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sixto Zambrano', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco (San Francisco)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (San Francisco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('San Francisco', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (San Francisco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Bajo', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (San Francisco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Domitila Flores', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (San Francisco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Francisco Ochoa', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (San Francisco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Los Cortijos', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (San Francisco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Marcial Hernández', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (San Francisco)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Domingo Rus', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rita (Santa Rita)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rita (Santa Rita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Santa Rita', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rita (Santa Rita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Mene', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rita (Santa Rita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Pedro Lucas Urribarrí', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rita (Santa Rita)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('José Cenobio Urribarrí', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Sucre (Bobures)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Bobures)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Bobures', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Bobures)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Gibraltar', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Bobures)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Heras', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Bobures)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Monseñor Arturo Álvarez', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Bobures)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rómulo Gallegos', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Bobures)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('El Batey', @tipo, @pertenece);

SET @tipo = 'Municipio';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Valmore Rodríguez (Bachaquero)', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valmore Rodríguez (Bachaquero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Rafael Urdaneta', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valmore Rodríguez (Bachaquero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('La Victoria', @tipo, @pertenece);

SET @tipo = 'Parroquia';
SET @pertenece = (SELECT pkLugar FROM
	(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valmore Rodríguez (Bachaquero)')
	as tablaLugar);
INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES ('Raúl Cuenca', @tipo, @pertenece);