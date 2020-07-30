exports.LEER_CARTAS = "SELECT sol.id_solicitud as ID, usu.username as Usuario_Solicita, tra.nombre as Tramite, loc.nombre as Consignado_En, per.cedula as Cedula ,traper.relacion as Requisito FROM arma_tu_fiesta.solicitud as sol, arma_tu_fiesta.tramite as tra, arma_tu_fiesta.usuario as usu, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.tramite_persona as traper, arma_tu_fiesta.persona as per WHERE usu.id_usuario = sol.fk_usuario AND tra.id_tramite = sol.fk_tramite AND loc.id_locacion = sol.fk_locacion AND traper.fk_solicitud = sol.id_solicitud AND traper.fk_persona = per.id_persona;"

exports.CREAR_CARTAS = "query de crear"

exports.ACTUALIZAR_CARTAS = "query de actualizar"

exports.ELIMINAR_CARTAS = "query de eliminar"