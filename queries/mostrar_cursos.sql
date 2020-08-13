-- Lista los cursos disponibles una vez seleccionada un templo catolico

SET @templo = 30;

SELECT temp.id_locacion as id_templo, cur.id_curso, temp.nombre as nombre_templo, cur.nombre
FROM arma_tu_fiesta.locacion as temp, arma_tu_fiesta.curso as cur
WHERE temp.id_locacion = @templo AND cur.fk_templo = temp.id_locacion;

--