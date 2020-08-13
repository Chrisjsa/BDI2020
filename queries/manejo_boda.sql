-- Listar todos los datos de los templos

SELECT loc.id_locacion as id_templo, loc.nombre as nombre_templo, loc.tipo as tipo_locacion, loc.fk_localizacion as id_estado, lug.nombre as estado, tem.parroco, tem.web, rel.nombre as religion, coor.latitud, coor.longitud
FROM arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as lug, arma_tu_fiesta.templo as tem, arma_tu_fiesta.religion as rel, arma_tu_fiesta.coordenada as coor
WHERE loc.tipo = 'Templo' AND loc.fk_localizacion = lug.id_lugar AND tem.fk_templo = loc.id_locacion AND tem.fk_religion = rel.id_religion AND coor.fk_locacion = loc.id_locacion
ORDER BY loc.id_locacion;

-- Lista los cursos disponibles con el id del templo catolico escogido

SET @templo = ID_TEMPLO;

SELECT temp.id_locacion as id_templo, cur.id_curso, temp.nombre as nombre_templo, cur.nombre
FROM arma_tu_fiesta.locacion as temp, arma_tu_fiesta.curso as cur
WHERE temp.id_locacion = @templo AND cur.fk_templo = temp.id_locacion;

