SET @rol = (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Superuser') as tablaRol);
SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Valle' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20613324','Christian','Jose','Suarez','Alvarado','1991-04-04','Masculino','Soltero',@reside);

SET @usuario = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20613324') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('04141815372', @usuario);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('chris.jsa01@gmail.com', @usuario);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('chris.jsa01@gmail.com', 'V20613324' , @usuario, @rol);

SET @rol = (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Superuser') as tablaRol);
SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Candelaria' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V26150008','Tomás','Eduardo','Guzmán','Irsay','1992-05-23','Masculino','Soltero',@reside);

SET @usuario = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V26150008') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('04241181872', @usuario);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('tguzmani@gmail.com', @usuario);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('tguzmani@gmail.com', 'V26150008' , @usuario, @rol);

SET @rol = (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Superuser') as tablaRol);
SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'La Pastora' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V25253807','Winkler','Jhonday','Suarez','Caldera','1994-03-07','Masculino','Soltero', @reside);

SET @usuario = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V25253807') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('04127167168', @usuario);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('winkler07@gmail.com', @usuario);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('winkler07@gmail.com', 'V25253807' , @usuario, @rol);












SET @rol = (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol);
SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Fernando Girón Tovar' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000001','Ali','Francisco','Batista','Zaragoza','1980-02-07','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000001') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426513999', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('alibatista@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('alibatista@gmail.com', 'V20000001' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Fernando Girón Tovar' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000002','Juan','Andres','Caldera','Amaya','1981-01-01','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000002') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416566480', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('juancaldera@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('juancaldera@gmail.com', 'V20000002' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Fernando Girón Tovar' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000003','Luis','Jose','Perez','Trujillo','1979-03-04','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000003') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212554139', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('luisperez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('luisperez@gmail.com', 'V20000003' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Fernando Girón Tovar' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000004','Osmel','David','Miranda','Navas','1982-10-11','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000004') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412898891', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('osmelmiranda@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('osmelmiranda@gmail.com', 'V20000004' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Fernando Girón Tovar' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000005','Victor','Jose','Naranjo','Rivas','1994-03-07','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000005') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412263312', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('victornaranjo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('victornaranjo@gmail.com', 'V20000005' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Platanillal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000006','Clotilde','Maria','Galan','Arjona','1990-05-11','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000006') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414217880', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('clotildegalan@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('clotildegalan@gmail.com', 'V20000006' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Platanillal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000007','Amanda','Josefina','Suarez','Perez','1984-12-12','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000007') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412442729', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('amandasuarez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('amandasuarez@gmail.com', 'V20000007' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Platanillal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000008','Luisa','Maria','Santos','Faria','1989-06-12','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000008') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212582309', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('luisasantos@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('luisasantos@gmail.com', 'V20000008' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Platanillal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000009','Angela','Matilde','Zambrano','Gonzales','1990-09-05','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000009') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412506734', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('angelazambrano@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('angelazambrano@gmail.com', 'V20000009' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Platanillal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000010','Ana','Isabel','Sanchez','Perera','1988-01-01','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000010') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414234856', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('anasanchez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('anasanchez@gmail.com', 'V20000010' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Bergantín' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000011','Isidro','Fermin','Royo','Salcedo','1983-05-07','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000011') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416730346', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('isidroroyo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('isidroroyo@gmail.com', 'V20000011' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Bergantín' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000012','Jose','Maria','Gimenez','Suarez','1983-10-01','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000012') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212637203', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('josegimenez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('josegimenez@gmail.com', 'V20000012' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Bergantín' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000013','Luis','Alberto','Pirona','Puig','1989-03-04','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000013') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412870263', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('luispirona@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('luispirona@gmail.com', 'V20000013' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Bergantín' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000014','Yeferson','Javier','Lugo','Torrealba','1989-11-11','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000014') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424971385', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('yefersonlugo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('yefersonlugo@gmail.com', 'V20000014' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Bergantín' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000015','Jorge','David','Sanchez','Nucete','1994-04-23','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000015') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426687736', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('jorgesanchez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('jorgesanchez@gmail.com', 'V20000015' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Cristóbal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000016','Zaire','Maria','Cuadrado','Galvan','1994-04-11','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000016') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412249274', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('zairecuadrado@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('zairecuadrado@gmail.com', 'V20000016' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Cristóbal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000017','Andrea','Silvia','Cruz','Canales','1996-11-22','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000017') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212457425', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('andreacruz@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('andreacruz@gmail.com', 'V20000017' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Cristóbal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000018','Andreina','Carmen','Torrealba','Caldera','1984-02-14','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000018') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426606661', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('andreinatorrealba@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('andreinatorrealba@gmail.com', 'V20000018' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Cristóbal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000019','Esther','Maria','Barranco','Marquez','1990-10-05','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000019') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424297926', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('estherbarranco@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('estherbarranco@gmail.com', 'V20000019' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Cristóbal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000020','Luisa','Auxiliadora','Carrillo','Andrade','1987-07-07','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000020') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416778727', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('luisacarrillo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('luisacarrillo@gmail.com', 'V20000020' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Fernando' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000021','Victor','Mariano','Arroyo','Talabera','1983-01-07','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000021') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414551398', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('victorarroyo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('victorarroyo@gmail.com', 'V20000021' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Fernando' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000022','Manuel','Angel','Quevedo','Portillo','1993-10-01','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000022') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414988989', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('manuelquevedo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('manuelquevedo@gmail.com', 'V20000022' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Fernando' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000023','Luis','Daniel','Villarreal','Ramos','1986-12-24','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000023') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412871046', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('luisvillarreal@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('luisvillarreal@gmail.com', 'V20000023' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Fernando' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000024','Sergio','Raul','Gaspar','Albiol','1985-11-11','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000024') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424152165', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('sergiogaspar@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('sergiogaspar@gmail.com', 'V20000024' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Fernando' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000025','Bruce','Daniel','Wayne','Diaz','1992-07-23','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000025') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426451641', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('brucewayne@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('brucewayne@gmail.com', 'V20000025' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Recreo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000026','Noa','Carolina','Capdevila','Sanchez','1994-04-14','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000026') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414235561', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('noacapdevila@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('noacapdevila@gmail.com', 'V20000026' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Recreo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000027','Diana','Elisa','Rosado','Sousa','1990-11-12','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000027') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424331109', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('dianarosado@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('dianarosado@gmail.com', 'V20000027' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Recreo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000028','Monica','Elisa','Agullo','Vegas','1989-12-14','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000028') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212732906', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('monicaagullo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('monicaagullo@gmail.com', 'V20000028' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Recreo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000029','Zaira','Maria','Diaz','Puerta','1991-11-09','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000029') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426840304', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('zairadiaz@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('zairadiaz@gmail.com', 'V20000029' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Recreo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000030','Josefa','Alexandra','Sabater','Godoy','1987-12-17','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000030') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416615418', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('josefasabater@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('josefasabater@gmail.com', 'V20000030' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Joaquín Crespo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000031','Jose','Francisco','Valcarcel','Palacio','1988-11-12','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000031') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212189582', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('josevalcarcel@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('josevalcarcel@gmail.com', 'V20000031' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Joaquín Crespo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000032','Miguel','Esteve','Cueto','Perez','1991-04-11','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000032') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414285768', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('miguelcueto@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('miguelcueto@gmail.com', 'V20000032' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Joaquín Crespo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000033','Enrique','Antonio','Mira','Merino','1976-11-14','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000033') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416435471', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('enriquemira@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('enriquemira@gmail.com', 'V20000033' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Joaquín Crespo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000034','Victor','Manuel','Bertran','Sanchez','1985-05-07','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000034') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212443442', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('victorbertran@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('victorbertran@gmail.com', 'V20000034' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Joaquín Crespo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000035','Emilio','Rafael','Gallo','Aragones','1987-07-04','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000035') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212675254', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('emiliogallo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('emiliogallo@gmail.com', 'V20000035' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Las Delicias' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000036','Ana','Maria','Molero','Mosquera','1988-10-07','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000036') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426676428', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('anamolero@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('anamolero@gmail.com', 'V20000036' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Las Delicias' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000037','Carmen','Maria','Aranda','Escalera','1970-11-03','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000037') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212248586', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('carmenaranda@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('carmenaranda@gmail.com', 'V20000037' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Las Delicias' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000038','Maria','Nieves','Borja','Regalado','1979-12-15','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000038') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212373245', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('mariaborja@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('mariaborja@gmail.com', 'V20000038' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Las Delicias' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000039','Aurora','Rosario','Morillo','Miguel','1990-02-10','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000039') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412321858', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('auroramorillo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('auroramorillo@gmail.com', 'V20000039' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Las Delicias' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000040','Carmen','Josefina','Rendon','Perez','1977-03-18','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000040') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414675679', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('carmenrendon@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('carmenrendon@gmail.com', 'V20000040' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Barinas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000041','Jose','Maria','Ramos','Rey','1978-11-12','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000041') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414164197', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('joseramos@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('joseramos@gmail.com', 'V20000041' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Barinas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000042','Joaquin','Antonio','Solera','Ferrer','1991-07-11','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000042') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426879365', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('joaquinsolera@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('joaquinsolera@gmail.com', 'V20000042' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Barinas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000043','Xavier','Daniel','Gual','Tamayo','1986-12-04','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000043') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426580931', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('xaviergual@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('xaviergual@gmail.com', 'V20000043' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Barinas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000044','Jose','Luis','Blesa','Merchan','1985-05-05','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000044') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424170496', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('joseblesa@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('joseblesa@gmail.com', 'V20000044' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Barinas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000045','Francisco','Jose','Veiga','Asensio','1987-07-03','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000045') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424623927', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('franciscoveiga@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('franciscoveiga@gmail.com', 'V20000045' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Alto Barinas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000046','Maria','Pilar','Troya','Morilla','1988-10-04','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000046') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426533526', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('mariatroya@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('mariatroya@gmail.com', 'V20000046' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Alto Barinas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000047','Manuela','Maria','Teixeira','Hinojosa','1970-11-02','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000047') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414412505', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('manuelateixeira@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('manuelateixeira@gmail.com', 'V20000047' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Alto Barinas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000048','Marta','Andrea','Galan','Magan','1979-12-14','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000048') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412247454', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('martagalan@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('martagalan@gmail.com', 'V20000048' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Alto Barinas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000049','Maria','Angeles','Alcazar','Rayo','1990-01-09','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000049') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426512418', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('mariaalcazar@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('mariaalcazar@gmail.com', 'V20000049' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Alto Barinas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000050','Rosa','Monica','Salgueiro','Artero','1977-02-17','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000050') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412600901', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('rosasalgueiro@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('rosasalgueiro@gmail.com', 'V20000050' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Zea' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000051','Miguel','Angel','Estevez','Orán','1988-11-13','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000051') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212707049', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('miguelestevez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('miguelestevez@gmail.com', 'V20000051' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Zea' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000052','Jose','Enrique','Fajardo','Belisario','1991-04-12','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000052') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424845273', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('josefajardo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('josefajardo@gmail.com', 'V20000052' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Zea' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000053','Marco','Aurelio','Flores','Osuna','1986-12-05','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000053') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412542399', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('marcoflores@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('marcoflores@gmail.com', 'V20000053' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Zea' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000054','Rodrigo','Ignacio','Fonseca','Dillon','1985-05-06','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000054') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426626105', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('rodrigofonseca@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('rodrigofonseca@gmail.com', 'V20000054' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Zea' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000055','Asdrúbal','José','Fuenmayor','Herrero','1987-07-04','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000055') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412902517', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('asdrúbalfuenmayor@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('asdrúbalfuenmayor@gmail.com', 'V20000055' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Orinoco' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000056','Krisbel','Joselyne','Figueroa','Galindo','1988-10-05','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000056') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424148695', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('krisbelfigueroa@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('krisbelfigueroa@gmail.com', 'V20000056' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Orinoco' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000057','Mariela','Andreína','Flores','Bello','1970-11-03','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000057') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424399379', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('marielaflores@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('marielaflores@gmail.com', 'V20000057' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Orinoco' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000058','Andreyna','Karolina','García','Salazar','1979-12-15','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000058') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426620921', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('andreynagarcía@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('andreynagarcía@gmail.com', 'V20000058' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Orinoco' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000059','Wilmailys','Yevifred','Garrido','Vegas','1990-01-10','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000059') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212614169', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('wilmailysgarrido@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('wilmailysgarrido@gmail.com', 'V20000059' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Orinoco' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000060','Yulimar','José','Gil','Gutiérrez','1977-02-18','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000060') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412399064', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('yulimargil@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('yulimargil@gmail.com', 'V20000060' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Candelaria' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000061','Brady','Jesús','Aguillón','Sánchez','1988-11-14','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000061') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414320300', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('bradyaguillón@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('bradyaguillón@gmail.com', 'V20000061' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Candelaria' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000062','Antonio','Alejandro','Archila','Pumar','1991-04-13','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000062') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416763572', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('antonioarchila@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('antonioarchila@gmail.com', 'V20000062' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Candelaria' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000063','Nadim','Antoine','Assaf','Nheme','1986-12-06','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000063') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414972679', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('nadimassaf@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('nadimassaf@gmail.com', 'V20000063' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Candelaria' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000064','Jean','Carlos','Bermudez','Ballen','1985-05-07','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000064') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426625779', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('jeanbermudez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('jeanbermudez@gmail.com', 'V20000064' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Candelaria' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000065','Nicolás','David','Borjas','Chiquin','1987-07-05','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000065') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416894670', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('nicolásborjas@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('nicolásborjas@gmail.com', 'V20000065' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Blas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000066','María','Gabriela','Alba','Alvarez','1988-10-06','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000066') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426392850', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('maríaalba@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('maríaalba@gmail.com', 'V20000066' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Blas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000067','Lorena','Maria','Aoun','Farah','1970-11-04','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000067') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412467571', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('lorenaaoun@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('lorenaaoun@gmail.com', 'V20000067' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Blas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000068','Victoria','Cenaire','Barajas','Gallardo','1979-12-16','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000068') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212325862', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('victoriabarajas@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('victoriabarajas@gmail.com', 'V20000068' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Blas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000069','Stephanie','Carolina','Caccamo','Araujo','1990-01-11','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000069') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416650999', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('stephaniecaccamo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('stephaniecaccamo@gmail.com', 'V20000069' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Blas' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000070','Greysabel','Monica','Caicedo','Dasilva','1977-02-19','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000070') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426247632', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('greysabelcaicedo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('greysabelcaicedo@gmail.com', 'V20000070' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Carlos de Austria' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000071','José','Angel','Brito','Martínez','1988-11-15','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000071') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424499921', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('josébrito@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('josébrito@gmail.com', 'V20000071' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Carlos de Austria' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000072','Erick','Hans','Burkle','Sosa','1991-04-14','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000072') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412285685', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('erickburkle@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('erickburkle@gmail.com', 'V20000072' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Carlos de Austria' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000073','Victor','Manuel','Cabana','Robaina','1986-12-07','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000073') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426435707', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('victorcabana@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('victorcabana@gmail.com', 'V20000073' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Carlos de Austria' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000074','Andrés','Alejandro','Campos','Jiménez','1985-05-08','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000074') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212299227', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('andréscampos@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('andréscampos@gmail.com', 'V20000074' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Carlos de Austria' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000075','Luis','Esneim','Carballo','Calle','1987-07-06','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000075') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414707528', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('luiscarballo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('luiscarballo@gmail.com', 'V20000075' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Manuel Manrique' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000076','Paola','Valentina','Cane','Mejías','1988-10-07','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000076') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424366530', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('paolacane@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('paolacane@gmail.com', 'V20000076' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Manuel Manrique' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000077','Ana','Karina','Carpio','Moura','1970-11-05','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000077') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412178528', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('anacarpio@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('anacarpio@gmail.com', 'V20000077' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Manuel Manrique' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000078','Clarissa','Anduanet','Casas','Jara','1979-12-17','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000078') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212349604', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('clarissacasas@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('clarissacasas@gmail.com', 'V20000078' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Manuel Manrique' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000079','Maria','Valentina','Silva','Laveglia','1990-01-12','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000079') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426312989', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('mariasilva@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('mariasilva@gmail.com', 'V20000079' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Manuel Manrique' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000080','Gabriela','Monica','Silva','Rivas','1977-02-20','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000080') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212584101', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('gabrielasilva@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('gabrielasilva@gmail.com', 'V20000080' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San José' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000081','Fabio','Gregorio','Fonseca','Oliveira','1988-11-16','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000081') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212737712', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('fabiofonseca@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('fabiofonseca@gmail.com', 'V20000081' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San José' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000082','Jean','Carlos','Silva','Amoreira','1991-04-15','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000082') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412825385', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('jeansilva@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('jeansilva@gmail.com', 'V20000082' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San José' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000083','José','Andrés','Silva','Fernández','1986-12-08','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000083') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424172802', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('josésilva@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('josésilva@gmail.com', 'V20000083' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San José' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000084','Javier','Alejandro','Delgado','Medina','1985-05-09','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000084') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426499206', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('javierdelgado@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('javierdelgado@gmail.com', 'V20000084' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San José' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000085','Andrés','Enrique','Dellacasa','Guerra','1987-07-08','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000085') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414361360', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('andrésdellacasa@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('andrésdellacasa@gmail.com', 'V20000085' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Rafael' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000086','Stephanie','Valentina','Duarte','Delgado','1988-10-08','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000086') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414158287', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('stephanieduarte@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('stephanieduarte@gmail.com', 'V20000086' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Rafael' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000087','Dirlianis','Dayelis','Echenique','Rodríguez','1970-11-06','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000087') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414734355', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('dirlianisechenique@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('dirlianisechenique@gmail.com', 'V20000087' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Rafael' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000088','Laura','Stephanie','Goncalves','Silva','1979-12-18','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000088') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212537964', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('lauragoncalves@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('lauragoncalves@gmail.com', 'V20000088' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Rafael' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000089','Baumary','Norian','Granatti','Figuera','1990-01-13','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000089') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416261709', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('baumarygranatti@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('baumarygranatti@gmail.com', 'V20000089' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Rafael' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000090','Karlys','Daribeht','Hernandez','Rivero','1977-02-21','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000090') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412674236', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('karlyshernandez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('karlyshernandez@gmail.com', 'V20000090' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Coche' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000091','José','Luis','Esqueche','Altamirano','1988-10-12','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000091') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416793786', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('joséesqueche@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('joséesqueche@gmail.com', 'V20000091' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Coche' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000092','José','Manuel','Gallardo','Hijuelo','1991-03-11','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000092') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424672010', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('joségallardo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('joségallardo@gmail.com', 'V20000092' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Antímano' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000093','Jhoan','Alejandro','García','Nuñez','1986-11-04','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000093') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426191173', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('jhoangarcía@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('jhoangarcía@gmail.com', 'V20000093' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Pedro' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000094','Sergio','Jose','Gil','Marinelli','1985-04-05','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000094') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212980058', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('sergiogil@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('sergiogil@gmail.com', 'V20000094' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Pedro' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000095','Carlos','Daniel','Gomes','Carchidio','1987-06-03','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000095') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412657812', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('carlosgomes@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('carlosgomes@gmail.com', 'V20000095' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Valle' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000096','Ana','Valeria','López','Álvarez','1988-09-04','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000096') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424175079', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('analópez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('analópez@gmail.com', 'V20000096' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Valle' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000097','Natalia','Solei','López','Briceño','1970-10-02','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000097') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414856922', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('natalialópez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('natalialópez@gmail.com', 'V20000097' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Valle' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000098','Veruska','Andreina','Martinez','Bastidas','1979-11-14','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000098') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212821968', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('veruskamartinez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('veruskamartinez@gmail.com', 'V20000098' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Recreo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000099','Kayla','Mercedes','Montero','Parra','1990-02-19','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000099') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424494784', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('kaylamontero@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('kaylamontero@gmail.com', 'V20000099' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Sucre' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000100','María','Gabriela','Omaña','Batista','1977-01-17','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000100') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414358199', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('maríaomaña@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('maríaomaña@gmail.com', 'V20000100' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Río Seco' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000101','Darío','Ignacio','Gómez','Coss','1987-11-12','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000101') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424353386', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('daríogómez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('daríogómez@gmail.com', 'V20000101' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Río Seco' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000102','Alejandro','José','Gómez','Goncalves','1990-04-11','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000102') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416615515', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('alejandrogómez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('alejandrogómez@gmail.com', 'V20000102' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Río Seco' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000103','Juan','Carlos','Goncalves','Silva','1985-12-04','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000103') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212621984', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('juangoncalves@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('juangoncalves@gmail.com', 'V20000103' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Río Seco' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000104','Alberto','José','González','Pérez','1984-05-05','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000104') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424855599', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('albertogonzález@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('albertogonzález@gmail.com', 'V20000104' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Río Seco' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000105','Rodrigo','Alejandro','González','Sucre','1986-07-03','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000105') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414824759', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('rodrigogonzález@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('rodrigogonzález@gmail.com', 'V20000105' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Gabriel' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000106','Ana','Jennifer','Pereira','Pereira','1987-10-04','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000106') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212234170', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('anapereira@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('anapereira@gmail.com', 'V20000106' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Gabriel' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000107','Valeria','Viviana','Petralia','Scardina','1971-11-02','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000107') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414126181', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('valeriapetralia@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('valeriapetralia@gmail.com', 'V20000107' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Gabriel' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000108','Gema','Gabriela','Ramírez','Ortíz','1978-12-14','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000108') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414240143', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('gemaramírez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('gemaramírez@gmail.com', 'V20000108' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Gabriel' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000109','Yineska','Carolina','Rangel','Olivero','1991-01-09','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000109') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414272316', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('yineskarangel@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('yineskarangel@gmail.com', 'V20000109' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Gabriel' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000110','Yeisiree','Alexandra','Rivera','Jiménez','1976-02-17','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000110') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426268891', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('yeisireerivera@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('yeisireerivera@gmail.com', 'V20000110' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cantagallo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000111','Angel','Enrique','Graterol','Sotillo','1988-02-22','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000111') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414866493', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('angelgraterol@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('angelgraterol@gmail.com', 'V20000111' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cantagallo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000112','Daniel','Alejandro','Guerrero','Padulo','1991-01-14','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000112') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416220229', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('danielguerrero@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('danielguerrero@gmail.com', 'V20000112' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cantagallo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000113','Sebastian','Gonzalo','Guilliod','Umerez','1986-04-04','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000113') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412921894', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('sebastianguilliod@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('sebastianguilliod@gmail.com', 'V20000113' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cantagallo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000114','Guillermo','Enrique','Jimenez','Soler','1995-05-15','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000114') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426858994', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('guillermojimenez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('guillermojimenez@gmail.com', 'V20000114' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cantagallo' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000115','Unai','Garabed','Karakachian','Elorza','1984-07-13','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000115') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416844724', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('unaikarakachian@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('unaikarakachian@gmail.com', 'V20000115' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan de Los Morros' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000116','Sabrina','Nailet','Taddeo','Galzerano','1984-11-04','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000116') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414141767', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('sabrinataddeo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('sabrinataddeo@gmail.com', 'V20000116' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan de Los Morros' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000117','Madelein','Rismar','Soler','Jimenez','1973-12-02','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000117') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426358834', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('madeleinsoler@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('madeleinsoler@gmail.com', 'V20000117' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan de Los Morros' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000118','Michel','Carolina','Sarmiento','Vega','1970-11-14','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000118') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412668659', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('michelsarmiento@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('michelsarmiento@gmail.com', 'V20000118' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan de Los Morros' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000119','Angie','Geraldine','Ryan','Ciarrocchi','1991-02-10','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000119') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424194768', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('angieryan@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('angieryan@gmail.com', 'V20000119' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan de Los Morros' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000120','Madeley','Angeles','Rojas','Monsalvo','1978-12-18','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000120') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212674652', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('madeleyangeles@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('madeleyangeles@gmail.com', 'V20000120' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Caraballeda' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000121','Diego','Men','Leon','Quilotte','1980-07-30','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000121') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414140059', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('diegomen@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('diegomen@gmail.com', 'V20000121' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Caraballeda' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000122','Abraham','Jesús','Lugo','Aguilar','1987-10-07','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000122') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412664661', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('abrahamlugo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('abrahamlugo@gmail.com', 'V20000122' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Caraballeda' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000123','Manuel','Ramon','Marin','Tizon','1986-02-27','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000123') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424919581', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('manuelmarin@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('manuelmarin@gmail.com', 'V20000123' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Caraballeda' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000124','Gianfranco','Enrique','Mastrangelo','Puglielli','1995-11-26','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000124') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426623046', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('gianfrancomastrangelo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('gianfrancomastrangelo@gmail.com', 'V20000124' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Caraballeda' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000125','Alvaro','Jesus','Meneses','Escalante','1988-03-20','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000125') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412764128', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('alvaromeneses@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('alvaromeneses@gmail.com', 'V20000125' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Catia La Mar' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000126','Yelitza','Nailet','Torrealba','Acevedo','1996-04-26','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000126') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414842319', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('yelitzatorrealba@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('yelitzatorrealba@gmail.com', 'V20000126' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Catia La Mar' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000127','Paola','Carolina','Zambrano','Zambrano','1982-03-06','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000127') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424131026', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('paolazambrano@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('paolazambrano@gmail.com', 'V20000127' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Catia La Mar' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000128','Heliana','Daniela','Villarreal','Rueda','1996-07-09','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000128') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426412657', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('helianavillarreal@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('helianavillarreal@gmail.com', 'V20000128' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Catia La Mar' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000129','Arianny','Stefania','Veliz','Soto','1986-02-15','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000129') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424520963', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('ariannyveliz@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('ariannyveliz@gmail.com', 'V20000129' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Catia La Mar' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000130','Jenifer','Paola','Vargas','Ortiz','1993-11-06','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000130') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412472916', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('jenifervargas@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('jenifervargas@gmail.com', 'V20000130' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Aguedo Felipe Alvarado' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000131','Douglas','Manuel','Molina','Gavidia','1981-04-25','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000131') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424541283', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('douglasmolina@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('douglasmolina@gmail.com', 'V20000131' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Aguedo Felipe Alvarado' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000132','Alejandro','Jesús','Moreno','Conde','1990-08-28','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000132') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424224949', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('alejandromoreno@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('alejandromoreno@gmail.com', 'V20000132' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Aguedo Felipe Alvarado' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000133','Andrés','Eduardo','Nuñez','Herrera','1993-07-04','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000133') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414188918', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('andrésnuñez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('andrésnuñez@gmail.com', 'V20000133' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Aguedo Felipe Alvarado' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000134','Javier','Ignacio','Olavarría','Silva','1982-12-16','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000134') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424949876', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('javierolavarría@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('javierolavarría@gmail.com', 'V20000134' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Aguedo Felipe Alvarado' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000135','Andres','Francisco','Pereira','Sousa','1989-10-16','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000135') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412641380', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('andrespereira@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('andrespereira@gmail.com', 'V20000135' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Buena Vista' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000136','Cindy','Manderley','Rodríguez','Marquez','1981-12-12','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000136') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212489627', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('cindyrodríguez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('cindyrodríguez@gmail.com', 'V20000136' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Buena Vista' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000137','Yarhianna','Michelle','Rojas','Barrientos','1986-09-06','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000137') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412350321', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('yarhiannarojas@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('yarhiannarojas@gmail.com', 'V20000137' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Buena Vista' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000138','Rosaly','Daimar','Sanchez','Mora','1987-10-14','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000138') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412938012', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('rosalysanchez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('rosalysanchez@gmail.com', 'V20000138' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Buena Vista' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000139','Sofía','Carmen','Sandoval','Rosales','1981-05-15','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000139') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414994058', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('sofíasandoval@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('sofíasandoval@gmail.com', 'V20000139' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Buena Vista' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000140','Andrea','Carolina','Sereno','DÍaz','1984-10-29','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000140') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212553291', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('andreasereno@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('andreasereno@gmail.com', 'V20000140' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Morro' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000141','Carlos','Eduardo','Pinto','Roca','1981-12-27','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000141') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426401653', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('carlospinto@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('carlospinto@gmail.com', 'V20000141' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Morro' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000142','Carlos','Daniel','Raffoul','Berch','1985-06-06','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000142') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412894707', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('carlosraffoul@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('carlosraffoul@gmail.com', 'V20000142' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Morro' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000143','Abraham','Francois','Ramos','Ray','1994-06-09','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000143') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416141178', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('abrahamramos@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('abrahamramos@gmail.com', 'V20000143' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Morro' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000144','Angel','Jesús','Reina','Valderrama','1991-03-31','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000144') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416846234', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('angelreina@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('angelreina@gmail.com', 'V20000144' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'El Morro' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000145','Gian','Carlo','Restifo','Osorio','1990-11-13','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000145') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416187685', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('gianrestifo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('gianrestifo@gmail.com', 'V20000145' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Los Nevados' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000146','Gherysmar','Nathaly','Pérez','Trujillo','1995-06-08','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000146') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426795932', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('gherysmarpérez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('gherysmarpérez@gmail.com', 'V20000146' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Los Nevados' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000147','Emily','Andreína','Quevedo','Mejias','1992-04-23','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000147') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426757224', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('emilyquevedo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('emilyquevedo@gmail.com', 'V20000147' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Los Nevados' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000148','Karen','Daniela','Quintero','Valero','1991-09-10','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000148') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424343908', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('karenquintero@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('karenquintero@gmail.com', 'V20000148' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Los Nevados' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000149','Geraldine','Carolina','Rodriguez','Amaro','1981-05-10','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000149') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416278016', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('geraldinerodriguez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('geraldinerodriguez@gmail.com', 'V20000149' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Los Nevados' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000150','María','Paola','Rodríguez','Ciarrocchi','1993-11-24','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000150') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424926479', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('maríarodríguez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('maríarodríguez@gmail.com', 'V20000150' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Altagracia de la Montaña' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000151','Eduardo','Jesús','Rivas','Mallcco','1994-10-04','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000151') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426823435', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('eduardorivas@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('eduardorivas@gmail.com', 'V20000151' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Altagracia de la Montaña' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000152','Gerardo','Antonio','Rodríguez','Masironi','1981-09-02','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000152') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416169271', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('gerardorodríguez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('gerardorodríguez@gmail.com', 'V20000152' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Altagracia de la Montaña' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000153','Carlos','Eduardo','Rodríguez','Rivero','1989-08-30','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000153') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212754179', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('carlosrodríguez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('carlosrodríguez@gmail.com', 'V20000153' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Altagracia de la Montaña' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000154','Cristopher','Gabriel','Rodriguez','Urbina','1985-09-21','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000154') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412551257', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('cristopherrodriguez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('cristopherrodriguez@gmail.com', 'V20000154' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Altagracia de la Montaña' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000155','Ronald','Eliecer','Royero','Oliveros','1980-11-14','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000155') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412540710', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('ronaldroyero@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('ronaldroyero@gmail.com', 'V20000155' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cecilio Acosta' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000156','Grecia','Esthefanía','Mejías','Rojas','1988-11-08','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000156') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416583289', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('greciamejías@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('greciamejías@gmail.com', 'V20000156' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cecilio Acosta' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000157','Vanessa','Alejandra','Mendieta','Veliz','1992-03-11','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000157') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426968928', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('vanessamendieta@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('vanessamendieta@gmail.com', 'V20000157' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cecilio Acosta' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000158','María','Fernanda','Mendoza','Criollo','1986-09-23','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000158') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212920597', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('maríamendoza@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('maríamendoza@gmail.com', 'V20000158' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cecilio Acosta' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000159','Fabiana','Roselynn','Ospina','Linares','1987-08-21','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000159') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412853704', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('fabianaospina@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('fabianaospina@gmail.com', 'V20000159' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cecilio Acosta' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000160','Jhenny','Carmen','Peña','Asuaje','1982-12-09','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000160') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416573609', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('jhennypeña@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('jhennypeña@gmail.com', 'V20000160' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Alto de los Godos' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000161','Edgar','David','Sayago','Torrealba','1987-03-17','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000161') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426733187', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('edgarsayago@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('edgarsayago@gmail.com', 'V20000161' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Alto de los Godos' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000162','Fernando','Rafael','Sisco','Martínez','1987-02-13','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000162') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412711916', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('fernandosisco@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('fernandosisco@gmail.com', 'V20000162' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Alto de los Godos' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000163','Luis','Augusto','Sosa','Segnini','1995-12-17','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000163') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412515233', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('luissosa@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('luissosa@gmail.com', 'V20000163' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Alto de los Godos' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000164','Edwin','Alberto','Torrelles','Brizuela','1994-01-06','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000164') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412303831', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('edwintorrelles@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('edwintorrelles@gmail.com', 'V20000164' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Alto de los Godos' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000165','Christian','Jose','Ursini','Tacon','1991-12-06','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000165') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412358025', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('christianursini@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('christianursini@gmail.com', 'V20000165' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Boquerón' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000166','Patricia','Carolina','Gonzalez','Gargiso','1981-08-01','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000166') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212284399', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('patriciagonzalez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('patriciagonzalez@gmail.com', 'V20000166' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Boquerón' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000167','Oriana','Alejandra','Guerrero','Labrador','1981-10-29','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000167') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414263267', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('orianaguerrero@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('orianaguerrero@gmail.com', 'V20000167' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Boquerón' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000168','Alejandra','Imelda','Huertas','Chourio','1993-02-14','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000168') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212336180', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('alejandrahuertas@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('alejandrahuertas@gmail.com', 'V20000168' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Boquerón' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000169','Adriana','Valle','Jiménez','Hidalgo','1985-12-12','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000169') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212777328', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('adrianajiménez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('adrianajiménez@gmail.com', 'V20000169' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Boquerón' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000170','Maria','Paula','Medina','Libre','1994-10-08','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000170') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412895904', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('mariamedina@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('mariamedina@gmail.com', 'V20000170' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Arismendi​' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000171','Ibrain','Josue','Verbeci','Villamizar','1983-12-29','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000171') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412246699', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('ibrainverbeci@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('ibrainverbeci@gmail.com', 'V20000171' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Arismendi​' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000172','Dugleiquer','Jesús','Vielma','Gil','1986-05-24','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000172') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426579165', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('dugleiquervielma@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('dugleiquervielma@gmail.com', 'V20000172' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Arismendi​' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000173','Jesús','Alfredo','Volcan','Blanca','1991-03-19','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000173') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212783642', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('jesúsvolcan@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('jesúsvolcan@gmail.com', 'V20000173' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Arismendi​' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000174','Winkler','Manuel','Suarez','Caldera','1984-05-25','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000174') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212531178', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('winklersuarez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('winklersuarez@gmail.com', 'V20000174' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Arismendi​' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000175','Yoimer','Daniel','Zuñiga','Mendoza','1987-04-23','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000175') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426964424', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('yoimerzuñiga@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('yoimerzuñiga@gmail.com', 'V20000175' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Arismendi​' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000176','Nicole','Valentina','Drew-Bear','Borges','1990-02-04','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000176') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424344105', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('nicoledrew-bear@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('nicoledrew-bear@gmail.com', 'V20000176' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Arismendi​' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000177','Vanessa','Alejandra','Fernández','Barrios','1995-04-24','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000177') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416355455', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('vanessafernández@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('vanessafernández@gmail.com', 'V20000177' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Arismendi​' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000178','Alexandra','Andreina','Galaviz','Guillen','1992-12-11','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000178') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416892724', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('alexandragalaviz@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('alexandragalaviz@gmail.com', 'V20000178' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Arismendi​' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000179','Jorgelys','Raibeth','Goitia','Delgado','1982-10-25','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000179') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414730298', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('jorgelysgoitia@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('jorgelysgoitia@gmail.com', 'V20000179' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Arismendi​' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000180','Jackeline','Andrea','Gomes','Goncalves','1992-12-30','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000180') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414394340', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('jackelinegomes@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('jackelinegomes@gmail.com', 'V20000180' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cordova' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000181','Humberto','Jesús','Alegre','Palacios','1994-03-07','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000181') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424271488', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('humbertoalegre@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('humbertoalegre@gmail.com', 'V20000181' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cordova' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000182','Fernando','Joaquín','Alves','Santos','1995-12-19','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000182') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424380286', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('fernandoalves@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('fernandoalves@gmail.com', 'V20000182' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cordova' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000183','Gian','Ignazio','Bacile','Bacile','1988-07-17','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000183') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212660919', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('gianbacile@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('gianbacile@gmail.com', 'V20000183' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cordova' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000184','Juan','Andrés','Blandín','Patiño','1994-01-23','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000184') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412553043', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('juanblandín@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('juanblandín@gmail.com', 'V20000184' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Cordova' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000185','Jhonny','Alejandro','Camacho','Menezez','1987-02-21','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000185') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414832680', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('jhonnycamacho@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('jhonnycamacho@gmail.com', 'V20000185' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Guanare' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000186','Rossy','Valentina','Arias','Piscitello','1993-11-12','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000186') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416472389', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('rossyarias@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('rossyarias@gmail.com', 'V20000186' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Guanare' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000187','Emili','Odedh','Auyadermont','Bastardo','1986-05-19','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000187') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212301254', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('emiliauyadermont@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('emiliauyadermont@gmail.com', 'V20000187' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Guanare' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000188','Joskary','Michelle','Blanco','Velásquez','1985-05-03','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000188') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426946425', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('joskaryblanco@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('joskaryblanco@gmail.com', 'V20000188' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Guanare' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000189','Génesis','Valentina','Cameli','Pizzano','1991-04-05','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000189') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414203460', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('génesiscameli@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('génesiscameli@gmail.com', 'V20000189' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Guanare' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000190','Alison','Nohely','Ramos','Luz','1994-07-24','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000190') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212273650', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('alisonramos@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('alisonramos@gmail.com', 'V20000190' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000191','Ricardo','José','Corte','Sousa','1982-01-17','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000191') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414944795', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('ricardocorte@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('ricardocorte@gmail.com', 'V20000191' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000192','Álvaro','José','Silva','Abreu','1990-02-22','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000192') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414193966', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('Álvarosilva@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('Álvarosilva@gmail.com', 'V20000192' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000193','Juan','Eduardo','Silva','Savino','1988-07-24','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000193') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414800005', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('juansilva@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('juansilva@gmail.com', 'V20000193' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000194','Ricardo','Alberto','Fanghella','Valero','1993-11-05','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000194') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414468777', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('ricardofanghella@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('ricardofanghella@gmail.com', 'V20000194' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000195','Alejandro','José','González','Lemus','1993-11-05','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000195') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212562313', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('alejandrogonzález@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('alejandrogonzález@gmail.com', 'V20000195' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Gran Mariscal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000196','Yosbeisy','Roimar','Ron','Brito','1986-10-30','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000196') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212141920', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('yosbeisyron@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('yosbeisyron@gmail.com', 'V20000196' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Gran Mariscal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000197','Victoria','Fernanda','Sabatini','Sol','1985-08-23','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000197') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412351969', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('victoriasabatini@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('victoriasabatini@gmail.com', 'V20000197' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Gran Mariscal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000198','Nahomi','Milagros','Sanchez','Igarza','1986-03-06','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000198') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412718099', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('nahomisanchez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('nahomisanchez@gmail.com', 'V20000198' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Gran Mariscal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000199','Camila','Daniela','Suarez','Torrealba','1994-05-08','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000199') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424513849', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('camilasuarez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('camilasuarez@gmail.com', 'V20000199' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Gran Mariscal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000200','Lina','Estefania','Tesone','Hernandez','1993-05-25','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000200') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426754839', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('linatesone@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('linatesone@gmail.com', 'V20000200' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan Bautista' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000201','Gustavo','Enrique','Guzmán','Calcurian','1983-01-02','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000201') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412931053', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('gustavoguzmán@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('gustavoguzmán@gmail.com', 'V20000201' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan Bautista' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000202','Andrés','Alberto','Hartmann','Rosa','1984-01-08','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000202') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414452445', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('andréshartmann@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('andréshartmann@gmail.com', 'V20000202' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan Bautista' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000203','Oscar','Leonardo','Hernandez','Prado','1992-12-20','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000203') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212737603', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('oscarhernandez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('oscarhernandez@gmail.com', 'V20000203' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan Bautista' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000204','José','Manuel','Martinez','Romero','1992-07-14','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000204') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424304581', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('josémartinez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('josémartinez@gmail.com', 'V20000204' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan Bautista' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000205','Víctor','Alfonso','Montes','Gavidia','1994-04-19','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000205') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416200950', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('víctormontes@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('víctormontes@gmail.com', 'V20000205' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Sebastian' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000206','Alejandra','Daniela','Prieto','Prieto','1991-03-15','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000206') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412373882', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('alejandraprieto@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('alejandraprieto@gmail.com', 'V20000206' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Sebastian' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000207','Katheryn','Josibeth','Rauseo','Ramírez','1986-05-06','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000207') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426696654', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('katherynrauseo@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('katherynrauseo@gmail.com', 'V20000207' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Sebastian' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000208','Daniela','Alejandra','Rivero','Ramirez','1989-07-21','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000208') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416454279', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('danielarivero@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('danielarivero@gmail.com', 'V20000208' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Sebastian' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000209','Genislet','Elianta','Rojas','Colmenárez','1982-01-24','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000209') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416925734', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('genisletrojas@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('genisletrojas@gmail.com', 'V20000209' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Sebastian' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000210','Amanda','Victoria','Romero','Solorzano','1994-04-27','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000210') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424638431', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('amandaromero@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('amandaromero@gmail.com', 'V20000210' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Andrés Linares' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000211','Carlos','Fabricio','Negrin','Mirabal','1994-01-19','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000211') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416777808', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('carlosnegrin@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('carlosnegrin@gmail.com', 'V20000211' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Andrés Linares' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000212','Emmanuel','Smith','Pérez','Medina','1981-12-29','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000212') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414742994', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('emmanuelpérez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('emmanuelpérez@gmail.com', 'V20000212' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Andrés Linares' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000213','Daniel','Antonio','Rangel','Guillen','1981-09-04','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000213') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426770319', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('danielrangel@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('danielrangel@gmail.com', 'V20000213' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Andrés Linares' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000214','Felix','Daniel','Romero','Quintero','1984-06-22','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000214') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212158298', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('felixromero@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('felixromero@gmail.com', 'V20000214' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Andrés Linares' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000215','Alirio','Josue','Sanchez','Meneses','1985-06-23','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000215') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426840762', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('aliriosanchez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('aliriosanchez@gmail.com', 'V20000215' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Chiquinquirá' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000216','Laura','Virginia','Madera','Rumbos','1993-04-07','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000216') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212738264', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('lauramadera@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('lauramadera@gmail.com', 'V20000216' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Chiquinquirá' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000217','Lorena','Valentina','Chavez','Frias','1995-04-18','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000217') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414764809', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('lorenachavez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('lorenachavez@gmail.com', 'V20000217' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Chiquinquirá' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000218','Juliana','Milagros','Marcial','Bezones','1993-08-13','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000218') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412175340', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('julianamarcial@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('julianamarcial@gmail.com', 'V20000218' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Chiquinquirá' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000219','Estefhanny','Carolina','Pereira','Silva','1994-11-06','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000219') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412584948', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('estefhannypereira@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('estefhannypereira@gmail.com', 'V20000219' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Chiquinquirá' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000220','Bárbara','Gabriela','Pérez','Carrillo','1986-10-23','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000220') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416164029', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('bárbarapérez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('bárbarapérez@gmail.com', 'V20000220' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Javier' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000221','Diego','Alejandro','Valdez','Soto','1996-01-07','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000221') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412522729', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('diegovaldez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('diegovaldez@gmail.com', 'V20000221' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Javier' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000222','Daniel','Andrés','Velasco','Quintero','1985-05-19','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000222') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414453391', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('danielvelasco@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('danielvelasco@gmail.com', 'V20000222' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Javier' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000223','Andrés','Eduardo','Vincentelli','Estévez','1986-05-29','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000223') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426915524', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('andrésvincentelli@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('andrésvincentelli@gmail.com', 'V20000223' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Javier' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000224','Fernando','Eduardo','Whaite','Gimon','1993-04-28','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000224') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212490878', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('fernandowhaite@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('fernandowhaite@gmail.com', 'V20000224' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'San Javier' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000225','Tomas','Alonso','Acosta','Rodríguez','1982-12-08','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000225') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416358776', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('tomasacosta@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('tomasacosta@gmail.com', 'V20000225' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Albarico' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000226','Josaibeth','Alexandra','González','Garrido','1981-04-05','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000226') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412525980', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('josaibethgonzález@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('josaibethgonzález@gmail.com', 'V20000226' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Albarico' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000227','Victoria','Viviana','Iriza','Barres','1989-06-16','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000227') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212347109', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('victoriairiza@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('victoriairiza@gmail.com', 'V20000227' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Albarico' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000228','Victoria','Lisbeth','Jiménez','Fojo','1987-08-10','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000228') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416920632', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('victoriajiménez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('victoriajiménez@gmail.com', 'V20000228' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Albarico' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000229','Andrea','María','Kosr','Kabboul','1988-07-23','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000229') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414281335', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('andreakosr@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('andreakosr@gmail.com', 'V20000229' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Albarico' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000230','Daniela','Desiree','Neve','Vespoli','1982-11-28','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000230') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426139967', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('danielaneve@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('danielaneve@gmail.com', 'V20000230' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Antonio Borjas Romero' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000231','Víctor','Manuel','Ayala','Sotillet','1996-11-19','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000231') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412382895', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('víctorayala@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('víctorayala@gmail.com', 'V20000231' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Antonio Borjas Romero' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000232','Pedro','Ignacio','Baumeister','Rodríguez','1987-02-28','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000232') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416188306', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('pedrobaumeister@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('pedrobaumeister@gmail.com', 'V20000232' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Antonio Borjas Romero' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000233','Ricardo','Miler','Brancovic','Pestana','1987-10-10','Masculino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000233') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212810020', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('ricardobrancovic@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('ricardobrancovic@gmail.com', 'V20000233' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Antonio Borjas Romero' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000234','Wuelffer','Jesus','Castellano','Araujo','1985-12-14','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000234') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414921592', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('wuelffercastellano@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('wuelffercastellano@gmail.com', 'V20000234' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Antonio Borjas Romero' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000235','Carlos','Eduardo','Cova','Vargas','1990-10-24','Masculino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000235') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0416154960', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('carloscova@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('carloscova@gmail.com', 'V20000235' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Chiquinquirá' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000236','Carla','Roxana','Boisselle','Fariñez','1996-04-28','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000236') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0424370735', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('carlaboisselle@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('carlaboisselle@gmail.com', 'V20000236' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Chiquinquirá' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000237','Valentina','Viviana','Durán','Vittorioso','1993-08-03','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000237') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0412529103', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('valentinadurán@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('valentinadurán@gmail.com', 'V20000237' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Chiquinquirá' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000238','Milagros','Katherine','Escalona','Arenas','1991-07-20','Femenino','Soltero',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000238') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0426750950', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('milagrosescalona@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('milagrosescalona@gmail.com', 'V20000238' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Chiquinquirá' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000239','Yusmarina','Carolina','Fernandez','Ascanio','1990-11-08','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000239') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0414778491', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('yusmarinafernandez@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('yusmarinafernandez@gmail.com', 'V20000239' , @cliente, @rol);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Chiquinquirá' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaMuni)) as tablaParroquia);
INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V20000240','Patricia','Alexandra','Ferreira','Carrero','1984-01-15','Femenino','Casado',@reside);

SET @cliente = (SELECT pkPersona FROM (SELECT id_persona as pkPersona from arma_tu_fiesta.persona WHERE cedula = 'V20000240') as tablaPersona);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_persona) VALUES ('0212318353', @cliente);
INSERT INTO arma_tu_fiesta.email (correo, fk_persona) VALUES ('patriciaferreira@gmail.com', @cliente);
INSERT INTO arma_tu_fiesta.usuario (username, password, fk_persona, fk_rol) VALUES ('patriciaferreira@gmail.com', 'V20000240' , @cliente, @rol);

