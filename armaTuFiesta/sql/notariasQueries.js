exports.LEER_NOTARIAS =
  "SELECT loc.id_locacion, loc.nombre as nombre, loc.tipo as tipo, nota.nombre_notario as notario, coor.latitud as latitud, coor.longitud as longitud FROM arma_tu_fiesta.locacion as loc, arma_tu_fiesta.notaria as nota, arma_tu_fiesta.coordenada as coor WHERE loc.tipo = 'Notaria' AND nota.fk_notaria = loc.id_locacion AND coor.fk_locacion = loc.id_locacion;"

exports.CREAR_NOTARIAS =
  "SET @pertenece = (ID_lugar); INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('NombreNotaria', 'Notaria', @pertenece); SET @notaria = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'NombreNotaria' AND tipo = 'Notaria') as tablaNotaria); INSERT INTO arma_tu_fiesta.notaria (fk_Notaria, nombre_notario) VALUES (@notaria, 'Encargado'); INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('Telefono', @notaria); INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('Latitud', 'Longitud', @notaria);"

exports.ACTUALIZAR_NOTARIAS =
  "SET @notaria = (ID_notaria); UPDATE arma_tu_fiesta.locacion SET nombre = 'NombreNotaria' WHERE id_locacion = @notaria; UPDATE arma_tu_fiesta.notaria SET nombre_notario = 'Encargado' WHERE fk_notaria = @notaria;"

exports.ELIMINAR_NOTARIAS =
  "SET @notaria = (ID_notaria); DELETE FROM arma_tu_fiesta.coordenada WHERE fk_locacion = @notaria; DELETE FROM arma_tu_fiesta.telefono WHERE fk_locacion = @notaria; DELETE FROM arma_tu_fiesta.notaria WHERE fk_notaria = @notaria; DELETE FROM arma_tu_fiesta.locacion WHERE id_locacion = @notaria;"
