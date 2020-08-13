exports.SIGN_IN =
  "SELECT * FROM usuario, persona WHERE username = ? AND persona.id_persona = usuario.fk_persona"

exports.SIGN_UP = "INSERT INTO users (username, password) VALUES (?, ?)"

exports.LOAD_USER =
  "SELECT * FROM usuario, persona WHERE id_persona = ? AND persona.id_persona = usuario.fk_persona"

exports.LISTAR_ROL_PERMISO =
  "SELECT rolper.id_rol_permiso, rol.nombre as rol, per.nombre as permiso FROM arma_tu_fiesta.rol_permiso as rolper, arma_tu_fiesta.rol as rol, arma_tu_fiesta.permiso as per WHERE rol.id_rol = rolper.fk_rol AND per.id_permiso = rolper.fk_permiso;"

exports.OBTENER_ROL_USUARIO =
  "SET @usurol = ?;  SELECT rol.nombre as rol FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.rol as rol WHERE usfk_rol = rol.id_rol AND usu.id_usuario = @usurol;"

//[username]

exports.OBTENER_PERMISO_USUARIO =
  "SET @usurol = ?;  SELECT usu.id_usuario, per.descripcion as permiso FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.permiso as per, arma_tu_fiesta.rol_permiso as rolper WHERE usu.id_usuario = @usurol AND usu.fk_rol = rolper.fk_rol AND rolper.fk_permiso = per.id_permiso;"

//[id_usuario]
