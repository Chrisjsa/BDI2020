
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Amazonas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Amazonas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Amazonas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Amazonas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Amazonas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Anzoátegui') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Anzoátegui') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Anzoátegui') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Anzoátegui') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Anzoátegui') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Apure') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Apure') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Apure') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Apure') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Apure') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Aragua') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Aragua') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Aragua') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Aragua') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Aragua') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Barinas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Barinas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Barinas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Barinas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Barinas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Bolívar') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Bolívar') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Bolívar') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Bolívar') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Bolívar') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Carabobo') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Carabobo') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Carabobo') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Carabobo') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Carabobo') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Cojedes') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Cojedes') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Cojedes') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Cojedes') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Cojedes') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Delta Amacuro') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Delta Amacuro') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Delta Amacuro') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Delta Amacuro') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Delta Amacuro') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Distrito Capital') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Distrito Capital') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Distrito Capital') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Distrito Capital') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Distrito Capital') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Falcón') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Falcón') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Falcón') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Falcón') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Falcón') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Guárico') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Guárico') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Guárico') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Guárico') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Guárico') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%La Guaira') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%La Guaira') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%La Guaira') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%La Guaira') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%La Guaira') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Lara') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Lara') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Lara') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Lara') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Lara') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Mérida') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Mérida') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Mérida') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Mérida') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Mérida') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Miranda') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Miranda') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Miranda') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Miranda') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Miranda') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Monagas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Monagas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Monagas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Monagas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Monagas') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Nueva Esparta') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Nueva Esparta') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Nueva Esparta') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Nueva Esparta') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Nueva Esparta') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Portuguesa') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Portuguesa') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Portuguesa') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Portuguesa') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Portuguesa') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Sucre') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Sucre') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Sucre') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Sucre') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Sucre') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Táchira') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Táchira') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Táchira') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Táchira') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Táchira') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Trujillo') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Trujillo') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Trujillo') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Trujillo') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Trujillo') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Yaracuy') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Yaracuy') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Yaracuy') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Yaracuy') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Yaracuy') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Zulia') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Zulia') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Zulia') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Zulia') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);


SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Zulia') as tablaTemplo);
SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Lunes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Martes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Miercoles' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Jueves' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Viernes' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Sabado' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Matutino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Vespertino') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);

SET @turno = (SELECT pkTurno FROM (SELECT id_horario as pkTurno FROM arma_tu_fiesta.horario  WHERE dia = 'Domingo' AND turno = 'Nocturno') as tablaHorario);
INSERT INTO arma_tu_fiesta.templo_horario (fk_templo,fk_horario) VALUES (@templo, @turno);
