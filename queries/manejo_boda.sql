-- Listar todos los datos de los templos

SELECT *
FROM arma_tu_fiesta.locacion as loc, arma_tu_fiesta.templo as tem
WHERE loc.tipo = 'Templo' AND tem.fk_templo = loc.id_locacion;

-- Lista los cursos disponibles con el id del templo catolico escogido

SET @templo = 30;

SELECT temp.id_locacion as id_templo, cur.id_curso, temp.nombre as nombre_templo, cur.nombre
FROM arma_tu_fiesta.locacion as temp, arma_tu_fiesta.curso as cur
WHERE temp.id_locacion = @templo AND cur.fk_templo = temp.id_locacion;

