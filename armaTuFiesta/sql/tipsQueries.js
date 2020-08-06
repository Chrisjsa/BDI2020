exports.LEER_TIPS = "SELECT * FROM arma_tu_fiesta.tip;"

exports.CREAR_TIPS = "INSERT INTO arma_tu_fiesta.tip (tipo, descripcion) VALUES (?, ?);"

//[tipo, descripcion]

exports.ACTUALIZAR_TIPS = "SET @tip = ?; DELETE FROM arma_tu_fiesta.tip WHERE id_tip = @tip;"

//[id_tip]

exports.ELIMINAR_TIPS = "SET @tip = ?; UPDATE arma_tu_fiesta.tip SET descripcion = ? WHERE id_tip = @tip;"

//[id_tip, descripcion]