exports.SIGN_IN =
  "SELECT * FROM usuario, persona WHERE username = ? AND persona.id_persona = usuario.fk_persona"

exports.SIGN_UP =
  "SET @fk_residencia = ?; INSERT INTO persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES (?, ?, ?, ?, ?, ?, ?, ?, @fk_residencia); SET @fk_persona = (SELECT id_persona FROM persona WHERE cedula = ?); SET @fk_rol = (SELECT id_rol FROM rol WHERE nombre = 'Cliente'); INSERT INTO usuario (username, password, fk_persona, fk_rol) VALUES (?, ?, @fk_persona, @fk_rol); INSERT INTO telefono (numero, fk_persona) values (?, @fk_persona)"

//[parroquia, cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, cedula, username, password]

// exports.LOAD_USER =
//   "SELECT * FROM usuario, persona WHERE id_persona = ? AND persona.id_persona = usuario.fk_persona"

exports.LOAD_USER =
  "SELECT * FROM usuario u INNER JOIN persona p ON u.fk_persona = p.id_persona AND u.id_usuario = ?"

exports.LISTAR_ROL_PERMISO =
  "SELECT rolper.id_rol_permiso, rol.nombre as rol, per.nombre as permiso FROM arma_tu_fiesta.rol_permiso as rolper, arma_tu_fiesta.rol as rol, arma_tu_fiesta.permiso as per WHERE rol.id_rol = rolper.fk_rol AND per.id_permiso = rolper.fk_permiso;"

exports.OBTENER_ROL_USUARIO =
  "SET @usurol = ?;  SELECT rol.nombre as rol FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.rol as rol WHERE usfk_rol = rol.id_rol AND usu.id_usuario = @usurol;"

//[username]

exports.OBTENER_PERMISO_USUARIO =
  "SET @usurol = ?;  SELECT usu.id_usuario, per.descripcion as permiso FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.permiso as per, arma_tu_fiesta.rol_permiso as rolper WHERE usu.id_usuario = @usurol AND usu.fk_rol = rolper.fk_rol AND rolper.fk_permiso = per.id_permiso;"

//[id_usuario]
