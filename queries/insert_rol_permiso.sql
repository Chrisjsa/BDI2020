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
    ("leerTip"),
    ("leerReporte");

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
    (@rol_superuser_id, @insertarCliente),
    (@rol_superuser_id, @eliminarCliente),
    (@rol_superuser_id, @actualizarCliente),
    (@rol_superuser_id, @leerCliente),
    (@rol_superuser_id, @insertarNotaria),
    (@rol_superuser_id, @eliminarNotaria),
    (@rol_superuser_id, @actualizarNotaria),
    (@rol_superuser_id, @leerNotaria),
    (@rol_superuser_id, @insertarEvento),
    (@rol_superuser_id, @eliminarEvento),
    (@rol_superuser_id, @actualizarEvento),
    (@rol_superuser_id, @leerEvento),
    (@rol_superuser_id, @insertarTip),
    (@rol_superuser_id, @eliminarTip),
    (@rol_superuser_id, @actualizarTip),
    (@rol_superuser_id, @leerTip),
    (@rol_superuser_id, @asignarRolPermisos),
    (@rol_superuser_id, @eliminarRol),
    (@rol_superuser_id, @actualizarRol),
    (@rol_superuser_id, @leerRoles),
    (@rol_superuser_id, @leerReporte),

    -- cliente
    (@rol_cliente_id, @actualizarCliente),
    (@rol_cliente_id, @leerCliente),
    (@rol_cliente_id, @leerNotaria),
    (@rol_cliente_id, @insertarEvento),
    (@rol_cliente_id, @actualizarEvento),
    (@rol_cliente_id, @leerEvento),
    (@rol_cliente_id, @leerTip),

    -- empleado
    (@rol_empleado_id, @insertarCliente),
    (@rol_empleado_id, @eliminarCliente),
    (@rol_empleado_id, @actualizarCliente),
    (@rol_empleado_id, @leerCliente),
    (@rol_empleado_id, @insertarNotaria),
    (@rol_empleado_id, @eliminarNotaria),
    (@rol_empleado_id, @actualizarNotaria),
    (@rol_empleado_id, @leerNotaria),
    (@rol_empleado_id, @insertarTip),
    (@rol_empleado_id, @eliminarTip),
    (@rol_empleado_id, @actualizarTip),
    (@rol_empleado_id, @leerTip),
    (@rol_empleado_id, @leerReporte)
;

