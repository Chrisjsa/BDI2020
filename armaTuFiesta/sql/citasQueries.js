exports.LEER_SERVICIOS =
  "SELECT ser.id_servicio, ser.nombre as nombre_servicio, cat.nombre as categoria FROM arma_tu_fiesta.servicio_tercerizado as ser, arma_tu_fiesta.categoria as cat WHERE cat.nombre IN ('Floristería', 'Decoración', 'Centro de Mesa', 'Diseñador', 'Costura', 'Modista', 'Fotografía') AND ser.fk_categoria = cat.id_categoria;"
