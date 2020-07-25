SET @user = (SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'amandasuarez@gmail.com') as tablaUsuario);
SET @tramite = (SELECT pkTramite FROM (SELECT id_tramite as pkTramite from arma_tu_fiesta.tramite WHERE nombre = 'Carta de Solteria') as tablaTramite);
SET @jefatura = (SELECT fkJefatura FROM (SELECT id_locacion as fkJefatura FROM arma_tu_fiesta.locacion as loc, arma_tu_fiesta.lugar as lug WHERE loc.tipo = 'Jefatura' AND loc.fk_localizacion = lug.id_lugar AND lug.nombre = 'Amazonas') as tablaJefatura);
INSERT INTO arma_tu_fiesta.solicitud (fk_tramite, fk_usuario, fk_locacion) VALUES (@tramite, @user, @jefatura);
SET @solicitud = (SELECT pkSolicitud FROM (SELECT id_solicitud as pkSolicitud FROM arma_tu_fiesta.solicitud WHERE fk_tramite = @tramite AND fk_usuario = @user AND fk_locacion = @jefatura) as tablaSolicitud);

SET @reside = (SELECT pkParroquia FROM (SELECT id_lugar as pkParroquia FROM arma_tu_fiesta.lugar WHERE nombre = 'Platanillal' AND fk_pertenece = (SELECT pkMuni FROM (SELECT id_lugar as pkMuni FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaMuni)) as tablaParroquia);

SET @persona = (SELECT fkPersona FROM (SELECT fk_persona as fkPersona FROM arma_tu_fiesta.usuario WHERE username = 'amandasuarez@gmail.com') as tablaPersona);
INSERT INTO arma_tu_fiesta.tramite_persona (fk_solicitud, fk_persona, relacion) VALUES (@solicitud, @persona, 'Primer Conyugue');

INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V21000002','Chris','Jose','Dugarte','Davila','1991-04-04','Masculino','Soltero',@reside);
SET @persona = (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V21000002') as tablaPersona);
INSERT INTO arma_tu_fiesta.tramite_persona (fk_solicitud, fk_persona, relacion) VALUES (@solicitud, @persona, 'Segundo Conyugue');

INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V21000003','Jose','Antonio','Suarez','Goyo','1986-04-04','Masculino','Casado',@reside);
SET @persona = (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V21000003') as tablaPersona);
INSERT INTO arma_tu_fiesta.tramite_persona (fk_solicitud, fk_persona, relacion) VALUES (@solicitud, @persona, 'Padre Primer Conyugue');

INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V21000004','Bertha','Maria','Perez','Alvarado','1978-04-04','Femenino','Casado',@reside);
SET @persona = (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V21000004') as tablaPersona);
INSERT INTO arma_tu_fiesta.tramite_persona (fk_solicitud, fk_persona, relacion) VALUES (@solicitud, @persona, 'Madre Primer Conyugue');

INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V21000005','Alberto','David','Dugarte','Lepijina','1989-04-04','Masculino','Divorciado',@reside);
SET @persona = (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V21000005') as tablaPersona);
INSERT INTO arma_tu_fiesta.tramite_persona (fk_solicitud, fk_persona, relacion) VALUES (@solicitud, @persona, 'Padre Segundo Conyugue');

INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V21000006','Maria','Jose','Davila','Aguiar','1974-04-04','Femenino','Divorciado',@reside);
SET @persona = (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V21000006') as tablaPersona);
INSERT INTO arma_tu_fiesta.tramite_persona (fk_solicitud, fk_persona, relacion) VALUES (@solicitud, @persona, 'Madre Segundo Conyugue');

INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V21000007','Armando','Antonio','Madero','Villegas','1992-04-04','Masculino','Soltero',@reside);
SET @persona = (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V21000007') as tablaPersona);
INSERT INTO arma_tu_fiesta.tramite_persona (fk_solicitud, fk_persona, relacion) VALUES (@solicitud, @persona, 'Testigo 1 Primer Conyugue');

INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V21000008','Roberto','Leon','Cervantes','Tenorio','1993-04-04','Masculino','Soltero',@reside);
SET @persona = (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V21000008') as tablaPersona);
INSERT INTO arma_tu_fiesta.tramite_persona (fk_solicitud, fk_persona, relacion) VALUES (@solicitud, @persona, 'Testigo 2 Primer Conyugue');

INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V21000009','Yesika','Daimar','Contreras','Jimenez','1994-04-04','Femenino','Soltero',@reside);
SET @persona = (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V21000009') as tablaPersona);
INSERT INTO arma_tu_fiesta.tramite_persona (fk_solicitud, fk_persona, relacion) VALUES (@solicitud, @persona, 'Testigo 1 Segundo Conyugue');

INSERT INTO arma_tu_fiesta.persona (cedula, p_nombre, s_nombre, p_apellido, s_apellido, fecha_nacimiento, sexo, estado_civil, fk_residencia) VALUES ('V21000010','Nathaly','Doriannis','Ruiz','Davila','1995-04-04','Femenino','Soltero',@reside);
SET @persona = (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V21000010') as tablaPersona);
INSERT INTO arma_tu_fiesta.tramite_persona (fk_solicitud, fk_persona, relacion) VALUES (@solicitud, @persona, 'Testigo 2 Segundo Conyugue');

SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Recibido') as tablaEstatus);
INSERT INTO arma_tu_fiesta.tramite_estatus (fk_solicitud, fk_estatus, fecha) VALUE (@solicitud, @estatus, '2020-07-27');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Revision') as tablaEstatus);
INSERT INTO arma_tu_fiesta.tramite_estatus (fk_solicitud, fk_estatus, fecha) VALUE (@solicitud, @estatus, '2020-07-28');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Aprobado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.tramite_estatus (fk_solicitud, fk_estatus, fecha) VALUE (@solicitud, @estatus, '2020-07-29');