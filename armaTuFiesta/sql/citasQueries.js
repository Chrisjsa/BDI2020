exports.LEER_SERVICIOS =
  "SELECT ser.id_servicio, ser.nombre as nombre_servicio, cat.nombre as categoria FROM arma_tu_fiesta.servicio_tercerizado as ser, arma_tu_fiesta.categoria as cat WHERE cat.nombre IN ('Floristería', 'Decoración', 'Centro de Mesa', 'Diseñador', 'Costura', 'Modista', 'Fotografía') AND ser.fk_categoria = cat.id_categoria;"

exports.LEER_CITAS_USUARIO =
  "SET @usuario = ?; SELECT usu.username, ser.nombre, cit.fecha as fecha_cita FROM arma_tu_fiesta.cita AS cit, arma_tu_fiesta.usuario AS usu, arma_tu_fiesta.servicio_tercerizado AS ser WHERE cit.fk_usuario = @usuario AND usu.id_usuario = cit.fk_usuario AND ser.id_servicio = cit.fk_servicio;"

//[id_usuario]

exports.INSERTAR_CITA =
  "SET @usuario = ?; SET @servicio = ?; SET @fecha = ?; INSERT INTO arma_tu_fiesta.cita (fk_usuario, fk_servicio, fecha) VALUES (@usuario, @servicio, @fecha);"

//[id_usuario, id_servicio, fecha]
