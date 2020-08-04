exports.LEER_CATEGORIAS = "SELECT * FROM arma_tu_fiesta.categoria;"

exports.CREAR_CATEGORIAS = "INSERT INTO arma_tu_fiesta.categoria (nombre) VALUES ('NOMBRE');"

exports.ACTUALIZAR_CATEGORIAS = "SET @categoria = (ID_categoria); UPDATE arma_tu_fiesta.categoria SET nombre = 'NOMBRE' WHERE id_categoria = @categoria;"

exports.ELIMINAR_CATEGORIAS = "SET @categoria = (ID_categoria); DELETE FROM arma_tu_fiesta.categoria WHERE id_categoria = @categoria;"