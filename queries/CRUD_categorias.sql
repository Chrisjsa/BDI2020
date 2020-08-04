-- READ CATEGORIA

SELECT * FROM arma_tu_fiesta.categoria;

-- CREATE CATEGORIA

INSERT INTO arma_tu_fiesta.categoria (nombre) VALUES ('NOMBRE');

-- DELETE CATEGORIA

SET @categoria = (ID_categoria);
DELETE FROM arma_tu_fiesta.categoria WHERE id_categoria = @categoria;

-- UPDATE CATEGORIA

SET @categoria = (ID_categoria);
UPDATE arma_tu_fiesta.categoria SET nombre = 'NOMBRE' WHERE id_categoria = @categoria;