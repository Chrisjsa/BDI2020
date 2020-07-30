-- PARA ESTADOS

SELECT id_lugar ID, tipo Tipo, nombre Nombre FROM arma_tu_fiesta.lugar WHERE fk_pertenece = (SELECT fkLugar FROM(SELECT id_lugar as fkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela') as tablaLugar);

-- PARA MUNICIPIOS

SELECT id_lugar ID, tipo Tipo, nombre Nombre FROM arma_tu_fiesta.lugar WHERE fk_pertenece = 'ID_estado';

-- PARA PARROQUIAS

SELECT id_lugar ID, tipo Tipo, nombre Nombre FROM arma_tu_fiesta.lugar WHERE fk_pertenece = 'ID_municipio';