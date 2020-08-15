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
    ("obtenerReporte"),
    ("asignarRolPermisos"),
    ("eliminarRol"),
    ("actualizarRol"),
    ("leerRoles"),
    ("insertarTip"),
    ("eliminarTip"),
    ("actualizarTip"),
    ("leerTip");

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

SET @insertarEvento = (SELECT id_permiso
FROM permiso
WHERE nombre = "insertarEvento");

SET @leerEvento = (SELECT id_permiso
FROM permiso
WHERE nombre = "leerEvento");

SET @actualizarEvento = (SELECT id_permiso
FROM permiso
WHERE nombre = "actualizarEvento");

SET @eliminarEvento = (SELECT id_permiso
FROM permiso
WHERE nombre = "eliminarEvento");

SET @insertarTip = (SELECT id_permiso
FROM permiso
WHERE nombre = "insertarTip");

SET @leerTip = (SELECT id_permiso
FROM permiso
WHERE nombre = "leerTip");

SET @actualizarTip = (SELECT id_permiso
FROM permiso
WHERE nombre = "actualizarTip");

SET @eliminarTip = (SELECT id_permiso
FROM permiso
WHERE nombre = "eliminarTip");

SET @asignarRolPermisos = (SELECT id_permiso
FROM permiso
WHERE nombre = "asignarRolPermisos");

SET @leerRoles = (SELECT id_permiso
FROM permiso
WHERE nombre = "leerRoles");

SET @actualizarRol = (SELECT id_permiso
FROM permiso
WHERE nombre = "actualizarRol");

SET @eliminarRol = (SELECT id_permiso
FROM permiso
WHERE nombre = "eliminarRol");

SET @leerReporte = (SELECT id_permiso
FROM permiso
WHERE nombre = "leerReporte");

-- (s.roles) ids de roles
SET @rol_superuser_id = (SELECT id_rol
FROM rol
WHERE nombre = "Superuser");


SET @rol_cliente_id = (SELECT id_rol
FROM rol
WHERE nombre = "Cliente");

SET @rol_empleado_id = (SELECT id_rol
FROM rol
WHERE nombre = "Empleado");

-- empleado

-- (s.insert) inicio del insert
INSERT INTO rol_permiso
    (fk_rol, fk_permiso)
values
    (@superuser_id, @insertarCliente),
    (@superuser_id, @eliminarCliente),
    (@superuser_id, @actualizarCliente),
    (@superuser_id, @leerCliente),
    (@superuser_id, @insertarNotaria),
    (@superuser_id, @eliminarNotaria),
    (@superuser_id, @actualizarNotaria),
    (@superuser_id, @leerNotaria),
    (@superuser_id, @insertarEvento),
    (@superuser_id, @eliminarEvento),
    (@superuser_id, @actualizarEvento),
    (@superuser_id, @leerEvento),
    (@superuser_id, @insertarTip),
    (@superuser_id, @eliminarTip),
    (@superuser_id, @actualizarTip),
    (@superuser_id, @leerTip),
    (@superuser_id, @asignarRolPermisos),
    (@superuser_id, @eliminarRol),
    (@superuser_id, @actualizarRol),
    (@superuser_id, @leerRoles),
    (@superuser_id, @obtenerReporte),

    -- cliente
    (@cliente_id, @actualizarCliente),
    (@cliente_id, @leerCliente),
    (@cliente_id, @leerNotaria),
    (@cliente_id, @insertarEvento),
    (@cliente_id, @actualizarEvento),
    (@cliente_id, @leerEvento),
    (@cliente_id, @leerTip),

    -- empleado
    (@empleado_id, @insertarCliente),
    (@empleado_id, @eliminarCliente),
    (@empleado_id, @actualizarCliente),
    (@empleado_id, @leerCliente),
    (@empleado_id, @insertarNotaria),
    (@empleado_id, @eliminarNotaria),
    (@empleado_id, @actualizarNotaria),
    (@empleado_id, @leerNotaria),
    (@empleado_id, @insertarTip),
    (@empleado_id, @eliminarTip),
    (@empleado_id, @actualizarTip),
    (@empleado_id, @leerTip),
    (@empleado_id, @obtenerReporte)
    
;

