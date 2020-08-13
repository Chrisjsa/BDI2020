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
    ("leerServicioTercerizado"),
    ("insertarProveedor"),
    ("eliminarProveedor"),
    ("actualizarProveedor"),
    ("leerProveedor")
;

SET @superuser_id = (SELECT id_rol
FROM rol
WHERE nombre = "Superuser");

INSERT INTO rol_permiso
    (fk_rol, fk_permiso)
values
    (@superuser_id, 1),
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
    (@superuser_id, 16),
    (@superuser_id, 17),
    (@superuser_id, 18),
    (@superuser_id, 19),
    (@superuser_id, 20)

