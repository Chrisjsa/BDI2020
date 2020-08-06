exports.LEER_ROLES = "SELECT * FROM arma_tu_fiesta.rol;"

exports.CREAR_ROLES = "INSERT INTO arma_tu_fiesta.rol (nombre) VALUES (?);"

//[nombre]

exports.ELIMINAR_ROLES = "SET @rol = ?; DELETE FROM arma_tu_fiesta.rol WHERE id_rol = @rol;"

//[id_rol]

exports.ACTUALIZAR_ROLES = "SET @rol = ?; UPDATE arma_tu_fiesta.rol SET nombre = ? WHERE id_rol = @rol;"

//[id_rol, nombre]