INSERT INTO arma_tu_fiesta.permiso
    (nombre)
VALUES
    ("insertarNotaria"),
    ("eliminarNotaria"),
    ("actualizarNotaria"),
    ("leerNotaria"),
    ("insertarCliente"),
    ("eliminarCliente"),
    ("actualizarCliente"),
    ("leerCliente"),
    ("insertarEvento"),
    ("eliminarEvento"),
    ("actualizarEvento"),
    ("leerEvento"),
    ("insertarServicioTercerizado"),
    ("eliminarServicioTercerizado"),
    ("actualizarServicioTercerizado"),
    ("leerServicioTercerizado");

-- (s.permisos) ids de permisos
SET @insertarNotaria = (SELECT id_permiso
FROM permiso
WHERE nombre = "insertarNotaria");

SET @leerNotaria = (SELECT id_permiso
FROM permiso
WHERE nombre = "leerNotaria");

SET @actualizarNotaria = (SELECT id_permiso
FROM permiso
WHERE nombre = "actualizarNotaria");

SET @eliminarNotaria = (SELECT id_permiso
FROM permiso
WHERE nombre = "eliminarNotaria");

SET @insertarCliente = (SELECT id_permiso
FROM permiso
WHERE nombre = "insertarCliente");

SET @leerCliente = (SELECT id_permiso
FROM permiso
WHERE nombre = "leerCliente");

SET @actualizarCliente = (SELECT id_permiso
FROM permiso
WHERE nombre = "actualizarCliente");

SET @eliminarCliente = (SELECT id_permiso
FROM permiso
WHERE nombre = "eliminarCliente");

-- (s.roles) ids de roles
SET @rol_superuser_id = (SELECT id_rol
FROM rol
WHERE nombre = "Superuser");

SET @rol_cliente_id = (SELECT id_rol
FROM rol
WHERE nombre = "Cliente");

-- empleado

-- (s.insert) inicio del insert
INSERT INTO rol_permiso
    (fk_rol, fk_permiso)
values
    (@superuser_id, @insertarCliente),
    (@superuser_id, 2),
    (@superuser_id, 3),
    (@superuser_id, 4),
    (@superuser_id, 5),
    (@superuser_id, 6),
    (@superuser_id, 7),
    (@superuser_id, 8),
    (@superuser_id, 9),
    (@superuser_id, 10),
    (@superuser_id, 11),
    (@superuser_id, 12),
    (@superuser_id, 13),
    (@superuser_id, 14),
    (@superuser_id, 15),
    (@superuser_id, 16)

    -- cliente
    -- empleado
;

