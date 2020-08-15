-- LISTAR SERVICIOS PARA CITAS

SELECT ser.id_servicio, ser.nombre as nombre_servicio, cat.nombre as categoria
FROM arma_tu_fiesta.servicio_tercerizado as ser, arma_tu_fiesta.categoria as cat
WHERE cat.nombre IN ('Floristería', 'Decoración', 'Centro de Mesa', 'Diseñador', 'Costura', 'Modista', 'Fotografía') AND ser.fk_categoria = cat.id_categoria;

-- LISTAR CITAS DE UN ID USUARIO

SET @usuario = 4;

SELECT usu.username, ser.nombre, cit.fecha as fecha_cita
FROM arma_tu_fiesta.cita AS cit, arma_tu_fiesta.usuario AS usu, arma_tu_fiesta.servicio_tercerizado AS ser
WHERE cit.fk_usuario = @usuario AND usu.id_usuario = cit.fk_usuario AND ser.id_servicio = cit.fk_servicio;

-- LISTAR TODAS LAS CITAS

SELECT usu.username, ser.nombre, cit.fecha as fecha_cita
FROM arma_tu_fiesta.cita AS cit, arma_tu_fiesta.usuario AS usu, arma_tu_fiesta.servicio_tercerizado AS ser
WHERE usu.id_usuario = cit.fk_usuario AND ser.id_servicio = cit.fk_servicio
ORDER BY cit.fecha;

-- INSERTAR CITA

SET @usuario = ID_USUARIO;
SET @servicio = ID_SERVICIO;
SET @fecha = FECHA;

INSERT INTO arma_tu_fiesta.cita (fk_usuario, fk_servicio, fecha) VALUES (@usuario, @servicio, @fecha);