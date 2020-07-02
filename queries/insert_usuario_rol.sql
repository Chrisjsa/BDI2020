INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'huguito') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Administrador') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Acceso Total') as tablaPermiso))
;

INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'marce') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Administrador') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Generar Reporte') as tablaPermiso))
;

INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'auramaria') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Empleado') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Registrar Locacion') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'auramaria') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Empleado') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Registrar Producto') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'auramaria') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Empleado') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Registrar Servicio') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'auramaria') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Empleado') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Registrar Proveedor') as tablaPermiso))
;

INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Solicitar Servicio') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Solicitar Tramite') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Seleccionar Producto') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Seleccionar Servicio') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Aprobar Presupuesto') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Realizar Pago') as tablaPermiso))
;