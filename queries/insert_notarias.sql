SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Amazonas', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Amazonas')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Idoia Carrion');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Anzoátegui', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Anzoátegui')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Jesus Antonio Zhu');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Apure', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Apure')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Martin Revilla');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Aragua', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Aragua')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Juan Pablo Calle');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Barinas', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Barinas')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Teofilo de Haro');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Bolívar', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Bolívar')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Oriol Estrada');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Carabobo', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Carabobo')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Francisco Jose Guirao');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Cojedes', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Cojedes')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Elias Padron');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Delta Amacuro', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Delta Amacuro')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Arnau Mejias');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Distrito Capital', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Distrito Capital')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Avelino Aranda');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Falcón', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Falcón')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Yeray Cruz');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Guárico', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Guárico')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Alejandro Casado');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado La Guaira', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%La Guaira')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Luis Maria Maza');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Lara', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Lara')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Victor Manuel Arnaiz');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Mérida', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Mérida')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Pablo Amado');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Miranda', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Miranda')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Jose Santos');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Monagas', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Monagas')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Sebastian Andrade');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Nueva Esparta', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Nueva Esparta')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Oscar Burguillos');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Portuguesa', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Portuguesa')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Octavio Marval');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Sucre', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Sucre')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Daniel Leon');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Táchira', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Táchira')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Ernesto Roman');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Trujillo', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Trujillo')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Leonardo Saldivar');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Yaracuy', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Yaracuy')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Brandon Bahuer');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Primera Notaria del Estado Zulia', 'Notaria', @pertenece);

SET @fk_notaria = (SELECT pkLocacion FROM
	 (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre LIKE 'Primera%Zulia')
	as tablanotaria);
INSERT INTO arma_tu_fiesta.notaria (fk_notaria, nombre_notario) VALUES (@fk_notaria, 'Mario Cartagena');

