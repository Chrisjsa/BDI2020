exports.LEER_NOTARIAS = "SELECT loc.id_locacion, loc.nombre as Nombre, loc.tipo as Tipo, nota.nombre_notario as Notario, coor.latitud as Latitud, coor.longitud as Longitud FROM arma_tu_fiesta.locacion as Loc, arma_tu_fiesta.notaria as Nota, arma_tu_fiesta.coordenada as coor WHERE loc.tipo = 'Notaria' AND nota.fk_notaria = loc.id_locacion AND coor.fk_locacion = loc.id_locacion;"

exports.CREAR_NOTARIAS = "query de crear"

exports.ACTUALIZAR_NOTARIAS = "query de actualizar"

exports.ELIMINAR_NOTARIAS = "query de eliminar"