-- Listar Cartas de Solteria

SELECT sol.id_solicitud as ID, usu.username as Usuario_Solicita, tra.nombre as Tramite, loc.nombre as Consignado_En, per.cedula as Cedula ,traper.relacion as Requisito
FROM arma_tu_fiesta.solicitud as sol, arma_tu_fiesta.tramite as tra, arma_tu_fiesta.usuario as usu, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.tramite_persona as traper, arma_tu_fiesta.persona as per
WHERE usu.id_usuario = sol.fk_usuario AND tra.id_tramite = sol.fk_tramite AND loc.id_locacion = sol.fk_locacion AND traper.fk_solicitud = sol.id_solicitud AND traper.fk_persona = per.id_persona;

-- Inserta Cartas de Solteria

SET @user = (SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = ' USERNAME ') as tablaUsuario);
SET @tramite = (SELECT pkTramite FROM (SELECT id_tramite as pkTramite from arma_tu_fiesta.tramite WHERE nombre = 'Carta de Solteria') as tablaTramite);
SET @jefatura = (SELECT ID_jefatura FROM (SELECT loc.id_locacion as ID_jefatura, usu.username Usuario, loc.nombre as Jefatura FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.locacion as loc, arma_tu_fiesta.persona as per, arma_tu_fiesta.lugar as parro, arma_tu_fiesta.lugar as muni, arma_tu_fiesta.lugar as esta WHERE usu.id_usuario = @user AND per.id_persona = usu.fk_persona AND per.fk_residencia = parro.id_lugar AND parro.fk_pertenece = muni.id_lugar AND muni.fk_pertenece = esta.id_lugar AND loc.fk_localizacion = esta.id_lugar AND loc.tipo = 'Jefatura') as tablaJefatura);

INSERT INTO arma_tu_fiesta.solicitud (fk_tramite, fk_usuario, fk_locacion) VALUES (@tramite, @user, @jefatura);
SET @solicitud = (SELECT pkSolicitud FROM (SELECT id_solicitud as pkSolicitud FROM arma_tu_fiesta.solicitud WHERE fk_tramite = @tramite AND fk_usuario = @user AND fk_locacion = @jefatura) as tablaSolicitud);

SET @reside = (SELECT fkReside FROM (SELECT per.fk_residencia as fkReside FROM arma_tu_fiesta.usuario as usu, arma_tu_fiesta.persona as per WHERE usu.id_usuario = @user AND usu.fk_persona = per.id_persona) as tablaReside);

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
INSERT INTO arma_tu_fiesta.tramite_estatus (fk_solicitud, fk_estatus, fecha) VALUE (@solicitud, @estatus, 'FECHA_ACTUAL');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Revision') as tablaEstatus);
INSERT INTO arma_tu_fiesta.tramite_estatus (fk_solicitud, fk_estatus, fecha) VALUE (@solicitud, @estatus, 'FECHA_ACTUAL');
SET @estatus = (SELECT pkEstatus FROM (SELECT id_estatus as pkEstatus FROM arma_tu_fiesta.estatus WHERE nombre = 'Aprobado') as tablaEstatus);
INSERT INTO arma_tu_fiesta.tramite_estatus (fk_solicitud, fk_estatus, fecha) VALUE (@solicitud, @estatus, 'FECHA_ACTUAL');