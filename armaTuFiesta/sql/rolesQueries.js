exports.LEER_ROLES = "SELECT * FROM arma_tu_fiesta.rol;"

exports.LEER_PERMISOS = "SELECT * FROM arma_tu_fiesta.permiso;"

exports.CREAR_ROL = "INSERT INTO arma_tu_fiesta.rol (nombre) VALUES (?);"

//[nombre]

exports.ELIMINAR_ROLES =
  "SET @rol = ?; DELETE FROM arma_tu_fiesta.rol WHERE id_rol = @rol;"

//[id_rol]

exports.ACTUALIZAR_ROLES =
  "SET @rol = ?; UPDATE arma_tu_fiesta.rol SET nombre = ? WHERE id_rol = @rol;"

//[id_rol, nombre]

exports.ASIGNAR_ROL_PERMISO =
  "SET @rol = (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = ?) as tablaRol); INSERT INTO arma_tu_fiesta.rol_permiso (fk_rol, fk_permiso, habilitado) VALUES (@rol, ?, true);"

exports.LEER_ROL_PERMISOS =
  "SELECT rolper.id_rol_permiso, rol.nombre as rol, per.id_permiso as permiso FROM arma_tu_fiesta.rol_permiso as rolper, arma_tu_fiesta.rol as rol, arma_tu_fiesta.permiso as per WHERE rol.id_rol = rolper.fk_rol AND per.id_permiso = rolper.fk_permiso;"

exports.LEER_ROL_USUARIO =
  "SET @usurol = ?; SELECT rol.nombre as rol FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.rol as rol WHERE usu.fk_rol = rol.id_rol AND usu.id_usuario = @usurol;"

exports.LEER_PERMISOS_USUARIO =
  "SET @usurol = ?; SELECT usu.id_usuario, per.nombre as permiso FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.permiso as per, arma_tu_fiesta.rol_permiso as rolper WHERE usu.id_usuario = @usurol AND usu.fk_rol = rolper.fk_rol AND rolper.fk_permiso = per.id_permiso;"
