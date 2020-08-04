-- READ ROL

SELECT * FROM arma_tu_fiesta.rol;

-- CREATE ROL

INSERT INTO arma_tu_fiesta.rol (nombre) VALUES ('NOMBRE');

-- DELETE ROL

SET @rol = (ID_rol);
DELETE FROM arma_tu_fiesta.rol WHERE id_rol = @rol;

-- UPDATE ROL

SET @rol = (ID_rol);
UPDATE arma_tu_fiesta.rol SET nombre = 'NOMBRE' WHERE id_rol = @rol;