exports.LEER_EVENTOS_POR_USUARIO =
  "SELECT usu.username, eve.nombre as tipo_evento, tem.nombre as tema_evento, ordeve.id_orden_evento as id_evento, ordeve.cantidad_invitados, ordeve.fecha_realizacion, sal.descripcion as descripcion, loc.nombre as salon_fiesta FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.orden_evento as ordeve, arma_tu_fiesta.evento as eve, arma_tu_fiesta.tema as tem, arma_tu_fiesta.salon_de_fiesta as sal, arma_tu_fiesta.locacion as loc WHERE usu.username = ? AND usu.id_usuario = ordeve.fk_usuario AND eve.id_evento = ordeve.fk_evento AND eve.fk_tema = tem.id_tema AND ordeve.fk_salon = sal.fk_salon AND sal.fk_salon = loc.id_locacion;"

exports.LEER_SERVICIOS_EVENTOS = ""
