exports.LEER_CLIENTES =
  "SELECT per.id_persona as id_persona, per.cedula, per.p_nombre, per.p_apellido, per.s_nombre, em.correo as correo, usu.password as password, tel.numero as telefono, per.s_apellido, per.fecha_nacimiento, per.sexo as sexo, per.estado_civil as estado_civil, usu.fk_rol as id_rol, lug.nombre as reside FROM arma_tu_fiesta.persona as per, arma_tu_fiesta.usuario as usu, arma_tu_fiesta.email as em, arma_tu_fiesta.telefono as tel, arma_tu_fiesta.lugar as lug WHERE per.fk_residencia = lug.id_lugar and tel.fk_persona = per.id_persona and em.fk_persona = per.id_persona and usu.fk_persona = per.id_persona;"

// exports.CREAR_CLIENTES =
//   "SET @reside = ?; SET @rol = (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol); INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES (?, ?, ?, ?, ?, ?, ?, ?, @reside); SET @usuario = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = ?) as tablaPersona); INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES (?, @usuario); INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES (?, @usuario); INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES (?, ?, @usuario, @rol);"

exports.CREAR_CLIENTES =
  "SET @reside = ?; INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES (?, ?, ?, ?, ?, ?, ?, ?, @reside); SET @usuario = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = ?) as tablaPersona); INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES (?, @usuario); INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES (?, @usuario); INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES (?, ?, @usuario, ?);"

//   [parroquia, cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, cedula, numero, correo, correo, password]

exports.CREAR_OTROS_USUARIOS =
  "SELECT * FROM arma_tu_fiesta.rol; SET @reside = ?; SET @rol = (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol); INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES (?, ?, ?, ?, ?, ?, ?, ?, @reside); SET @usuario = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = ?) as tablaPersona); INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES (?, @usuario); INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES (?, @usuario); INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES (?, ?, @usuario, @rol);"

//[parroquia, rol, cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, cedula, telefono, correo, correo, password]

exports.ACTUALIZAR_CLIENTES =
  "SET @persona = ?; UPDATE arma_tu_fiesta.telefono SET numero = ? WHERE fk_persona = @persona; UPDATE arma_tu_fiesta.email SET correo = ? WHERE fk_persona = @persona; UPDATE arma_tu_fiesta.usuario SET username = ? WHERE fk_persona = @persona;"

exports.ASIGNAR_ROL_USUARIO =
  "UPDATE usuario SET fk_rol = ? WHERE fk_persona = ?"

//[id_persona, telefono, correo, correo, password]

exports.ELIMINAR_CLIENTES =
  "SET @persona = ?; DELETE FROM arma_tu_fiesta.cita WHERE fk_usuario = @persona; DELETE FROM arma_tu_fiesta.usuario WHERE fk_persona = @persona; DELETE FROM arma_tu_fiesta.telefono WHERE fk_persona = @persona; DELETE FROM arma_tu_fiesta.email WHERE fk_persona = @persona; DELETE FROM arma_tu_fiesta.persona WHERE id_persona = @persona;"

//[id_persona]
