-- ++++++++++++++++++++++++++++++++++ LUGAR +++++++++++++++++++++++++++++++++++++++++++++++++++++

SET @tipo = 'Continente';

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`)
    VALUES
        ('America', @tipo),
        ('Africa', @tipo),
        ('Asia', @tipo),
        ('Europa', @tipo),
        ('Oceania', @tipo)
;

-- Paises

SET @tipo = 'Pais';
SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Continente' AND nombre = 'America')
    as tablaLugar);

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Venezuela', @tipo, @pertenece),
        ('Colombia', @tipo, @pertenece),
        ('Chile', @tipo, @pertenece),
        ('Brasil', @tipo, @pertenece),
        ('Argentina', @tipo, @pertenece)
;

-- Estados

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Pais' AND nombre = 'Venezuela')
    as tablaLugar);

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Amazonas', @tipo, @pertenece),
        ('Anzoategui', @tipo, @pertenece),
        ('Apure', @tipo, @pertenece),
        ('Aragua', @tipo, @pertenece),
        ('Barinas', @tipo, @pertenece),
        ('Bolivar', @tipo, @pertenece),
        ('Carabobo', @tipo, @pertenece),
        ('Cojedes', @tipo, @pertenece),
        ('Delta Amacuro', @tipo, @pertenece),
        ('Distrito Capital', @tipo, @pertenece),
        ('Falcon', @tipo, @pertenece),
        ('Guarico', @tipo, @pertenece),
        ('Lara', @tipo, @pertenece),
        ('Merida', @tipo, @pertenece),
        ('Miranda', @tipo, @pertenece),
        ('Monagas', @tipo, @pertenece),
        ('Nueva Esparta', @tipo, @pertenece),
        ('Portuguesa', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Tachira', @tipo, @pertenece),
        ('Trujillo', @tipo, @pertenece),
        ('Vargas', @tipo, @pertenece),
        ('Yaracuy', @tipo, @pertenece),
        ('Zulia', @tipo, @pertenece)
;

-- Municipios Caracas

SET @tipo = 'Municipio';

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Distrito Capital')
    as tablaLugar);

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Libertador', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Miranda')
    as tablaLugar);

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Baruta', @tipo, @pertenece),
        ('Chacao', @tipo, @pertenece),
        ('El Hatillo', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece)
;

-- Parroquias Caracas

SET @tipo = 'Parroquia';

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Municipio' AND nombre = 'Libertador')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Santa Rosalia', @tipo, @pertenece),
        ('El Valle', @tipo, @pertenece),
        ('Coche', @tipo, @pertenece),
        ('Caricuao', @tipo, @pertenece),
        ('Macarao', @tipo, @pertenece),
        ('Antimano', @tipo, @pertenece),
        ('La Vega', @tipo, @pertenece),
        ('El Paraiso', @tipo, @pertenece),
        ('El Junquito', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('San Juan', @tipo, @pertenece),
        ('Santa Teresa', @tipo, @pertenece),
        ('23 de Enero', @tipo, @pertenece),
        ('La Pastora', @tipo, @pertenece),
        ('Altagracia', @tipo, @pertenece),
        ('San Jose', @tipo, @pertenece),
        ('San Bernandino', @tipo, @pertenece),
        ('Catedral', @tipo, @pertenece),
        ('Candelaria', @tipo, @pertenece),
        ('San Agustin', @tipo, @pertenece),
        ('El Recreo', @tipo, @pertenece),
        ('San Pedro', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Municipio' AND nombre = 'Baruta')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('El Cafetal', @tipo, @pertenece),
        ('Las Minas', @tipo, @pertenece),
        ('Nuestra Señora del Rosario', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Municipio' AND nombre = 'Chacao')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Chacao', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Municipio' AND nombre = 'El Hatillo')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Santa Rosalía de Palermo', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Municipio' AND nombre = 'Sucre')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Leoncio Martinez', @tipo, @pertenece),
        ('Petare', @tipo, @pertenece),
        ('Caucagüita', @tipo, @pertenece),
        ('Fila de Mariches', @tipo, @pertenece),
        ('La Dolorita', @tipo, @pertenece)
;

-- ++++++++++++++++++++++++++++++++++ PERSONA +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`persona` (`cedula`,`p_nombre`,`s_nombre`,`p_apellido`,`s_apellido`,`fecha_nacimiento`,`sexo`,`estado_civil`,`fk_residencia`)
    VALUES
    ('V-20202706','Beatriz','Aurora','Pinzon','Solano','1995-12-20','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'El Valle') as tablaLugar)),
    ('V-20201309','Armando','Enrique ','Mendoza','Saenz','1991-04-04','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Santa Rosalia') as tablaLugar)),
    ('V-7456987','Hermes','','Pinzon','Galarza','1965-01-01','Masculino','Casado',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Coche') as tablaLugar)),
    ('V-9378192','Julia','','Solano','','1970-02-02','Femenino','Casada',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Coche') as tablaLugar)),
    ('V-8741963','Roberto','','Mendoza','','1968-03-03','Masculino','Casado',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Antimano') as tablaLugar)),
    ('E-84659785','Margarita','','Saenz','','1966-05-05','Femenino','Casada',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Antimano') as tablaLugar)),
    ('E-86265784','Nicolas','','Mora','','1996-06-06','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'La Vega') as tablaLugar)),
    ('V-26805693','Marcela','','Valencia','','1993-07-07','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'El Paraiso') as tablaLugar)),
    ('V-22142357','Daniel','','Valencia','','1990-08-08','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'El Junquito') as tablaLugar)),
    ('V-27005921','Patricia','','Fernandez','','1993-09-09','Femenino','Divorciada',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Las Minas') as tablaLugar)),
    ('V-19654963','Hugo','','Lombardi','','1989-10-10','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan') as tablaLugar)),
    ('V-28745123','Aura','Maria','Fuentes','','2000-11-12','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Santa Teresa') as tablaLugar)),
    ('E-81997002','Michell','','Doinel','','1992-12-11','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = '23 de Enero') as tablaLugar)),
    ('V-21008702','Maria','','Calderon','','1992-01-06','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'La Pastora') as tablaLugar)),
    ('V-30365214','Jenny','','Garcia','','2001-07-20','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Altagracia') as tablaLugar)),
    ('V-29820142','Mariana','','Valdez','','1999-09-01','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'San Jose') as tablaLugar)),
    ('V-31102965','Freddy','Stewart','Contreras','','2002-01-09','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'San Bernandino') as tablaLugar)),
    ('E-88296365','Catalina','','Angel','','1998-01-28','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Candelaria') as tablaLugar))
;

-- ++++++++++++++++++++++++++++++++++ USUARIO +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`usuario` (`username`,`password`,`fk_persona`)
    VALUES
    ('betty','clave0001',
        (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-20202706') as tablapersona)),
    ('marce','clave0002',
        (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-26805693') as tablapersona)),
    ('huguito','clave0003',
        (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-19654963') as tablapersona)),
    ('frances','clave0004',
        (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'E-81997002') as tablapersona)),
    ('auramaria','clave0005',
        (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-28745123') as tablapersona))
;

-- ++++++++++++++++++++++++++++++++++ ROL +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`rol` (`nombre`,`descripcion`)
    VALUES
    ('Administrador','Acceso total del sistema, revisa estados y reportes'),
    ('Empleado','Acceso parcial del sistema, registra locaciones, productos y servicios'),
    ('Cliente','Acceso al servicio del sistema, solicita los eventos, selecciona servicios y tramites')
;

-- ++++++++++++++++++++++++++++++++++ PERMISO +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`permiso` (`nombre`)
    VALUES
    ('Acceso Total'),
    ('Registrar Locacion'),
    ('Registrar Producto'),
    ('Registrar Servicio'),
    ('Registrar Proveedor'),
    ('Generar Reporte'),
    ('Solicitar Servicio'),
    ('Solicitar Tramite'),
    ('Seleccionar Producto'),
    ('Seleccionar Servicio'),
    ('Aprobar Presupuesto'),
    ('Realizar Pago')
;

-- ++++++++++++++++++++++++++++++++++ USUARIO_ROL +++++++++++++++++++++++++++++++++++++++++++++++++++++


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