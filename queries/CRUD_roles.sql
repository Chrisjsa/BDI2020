-- LISTAR ROLES

SELECT *
FROM arma_tu_fiesta.rol;

-- LISTAR PERMISOS

SELECT *
FROM arma_tu_fiesta.permiso;

-- CREATE ROL Y ASIGNAR PERMISO

INSERT INTO arma_tu_fiesta.rol
    (nombre)
VALUES
    ('NOMBRE_ROL');

SET @rol = (SELECT pkRol
FROM (SELECT id_rol as pkRol
    FROM arma_tu_fiesta.rol
    WHERE nombre = 'NOMBRE_ROL') as tablaRol);

INSERT INTO arma_tu_fiesta.rol_permiso
    (fk_rol, fk_permiso, habilitado)
VALUES
    (@rol, ID_PERMISO, true);
-- ESTA LINEA SE REPITEN POR CADA PERMISO SELECCIONADO
--INSERT INTO arma_tu_fiesta.rol_permiso (fk_rol, fk_permiso, habilitado) VALUES (@rol, 2, true);
--INSERT INTO arma_tu_fiesta.rol_permiso (fk_rol, fk_permiso, habilitado) VALUES (@rol, 3, true);

-- DELETE ROL

SET @rol = (ID_rol);
DELETE FROM arma_tu_fiesta.rol WHERE id_rol = @rol;

-- UPDATE ROL

SET @rol = (ID_rol);
UPDATE arma_tu_fiesta.rol SET nombre = 'NOMBRE' WHERE id_rol = @rol;

-- LISTAR ROLES Y PERMISOS -- ES UN SOLO QUERY PERO ES DIFICIL DE LEER EN UNA SOLA LINEA

SELECT rolper.id_rol_permiso, rol.nombre as rol, per.nombre as permiso
FROM arma_tu_fiesta.rol_permiso as rolper, arma_tu_fiesta.rol as rol, arma_tu_fiesta.permiso as per
WHERE rol.id_rol = rolper.fk_rol AND per.id_permiso = rolper.fk_permiso;

-- OBTENER ROL DE UN USUARIO EN ESPECIFICO

SET @usurol = 'USUARIO';

SELECT rol.nombre as rol
FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.rol as rol
WHERE usu.fk_rol = rol.id_rol AND usu.id_usuario = @usurol;

-- OBTENER PERMISOS DE UN USUARIO EN ESPECIFICO

SET @usurol = 'ID_USUARIO';

SELECT usu.id_usuario, per.nombre as permiso
FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.permiso as per, arma_tu_fiesta.rol_permiso as rolper
WHERE usu.id_usuario = @usurol AND usu.fk_rol = rolper.fk_rol AND rolper.fk_permiso = per.id_permiso;

