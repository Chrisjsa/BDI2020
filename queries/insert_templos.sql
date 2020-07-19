SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Amazonas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Idoia Carrion', 'temploCatolicoAmazonas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416262204', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoAmazonas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Amazonas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Roberto Carlos Calleja', 'temploJudioAmazonas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412726055', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioAmazonas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Amazonas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alexander Hervas', 'temploIslamicoAmazonas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212831278', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoAmazonas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Amazonas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Diego Herreros', 'temploHinduAmazonas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414660329', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduAmazonas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Amazonas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ibai Morillas', 'temploShintoAmazonas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426829717', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoAmazonas@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Anzoátegui', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Fulgencio Solano', 'temploCatolicoAnzoátegui.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412870622', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoAnzoátegui@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Anzoátegui', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Simon Grau', 'temploJudioAnzoátegui.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416672157', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioAnzoátegui@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Anzoátegui', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Guillem Boix', 'temploIslamicoAnzoátegui.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416893640', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoAnzoátegui@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Anzoátegui', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felix Valencia', 'temploHinduAnzoátegui.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412651106', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduAnzoátegui@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Anzoátegui', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Antonio Zhu', 'temploShintoAnzoátegui.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416192766', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoAnzoátegui@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Apure', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Valentin Giraldo', 'temploCatolicoApure.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424949792', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoApure@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Apure', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Francisco Manuel Rus', 'temploJudioApure.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416432344', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioApure@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Apure', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Gheorghe Ortega', 'temploIslamicoApure.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212497495', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoApure@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Apure', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Martin Revilla', 'temploHinduApure.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414114450', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduApure@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Apure', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Lluis Li', 'temploShintoApure.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414338686', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoApure@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Aragua', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Juan Amoros', 'temploCatolicoAragua.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412648512', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoAragua@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Aragua', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Pablo Calle', 'temploJudioAragua.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212932207', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioAragua@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Aragua', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ezequiel Fajardo', 'temploIslamicoAragua.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426872930', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoAragua@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Aragua', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Adan Guerrero', 'temploHinduAragua.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212478660', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduAragua@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Aragua', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Mustapha López', 'temploShintoAragua.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416232656', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoAragua@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Barinas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Noe Castellanos', 'temploCatolicoBarinas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414904853', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoBarinas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Barinas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Gustavo Adolfo Saez', 'temploJudioBarinas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412478579', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioBarinas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Barinas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Teofilo de Haro', 'temploIslamicoBarinas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426227561', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoBarinas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Barinas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Julio Cesar Saavedra', 'temploHinduBarinas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424371278', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduBarinas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Barinas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Carlos Manuel Zheng', 'temploShintoBarinas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426101675', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoBarinas@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Bolívar', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Thiago Serrano', 'temploCatolicoBolívar.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426762046', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoBolívar@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Bolívar', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Paulino Garzon', 'temploJudioBolívar.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426344314', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioBolívar@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Bolívar', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ferran Rosa', 'temploIslamicoBolívar.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414440847', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoBolívar@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Bolívar', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Oriol Estrada', 'temploHinduBolívar.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414602927', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduBolívar@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Bolívar', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Robert Ros', 'temploShintoBolívar.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414415370', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoBolívar@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Carabobo', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Francisco Jose Guirao', 'temploCatolicoCarabobo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416564716', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoCarabobo@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Carabobo', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Antonio Javier Criado', 'temploJudioCarabobo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426943730', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioCarabobo@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Carabobo', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Arturo Domingo', 'temploIslamicoCarabobo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416522424', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoCarabobo@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Carabobo', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Victorino Parra', 'temploHinduCarabobo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424802468', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduCarabobo@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Carabobo', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Nil Ribera', 'temploShintoCarabobo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426544393', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoCarabobo@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Cojedes', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felix Almagro', 'temploCatolicoCojedes.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426548803', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoCojedes@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Cojedes', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Elias Padron', 'temploJudioCojedes.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412303164', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioCojedes@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Cojedes', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Javier Castillo', 'temploIslamicoCojedes.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414218230', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoCojedes@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Cojedes', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Maria Peralta', 'temploHinduCojedes.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212676434', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduCojedes@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Cojedes', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Roger da Silva', 'temploShintoCojedes.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212684720', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoCojedes@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Delta Amacuro', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Marcos Antonio de Dios', 'temploCatolicoDeltaAmacuro.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426285182', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoDeltaAmacuro@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Delta Amacuro', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Aritz Rosales', 'temploJudioDeltaAmacuro.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416819257', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioDeltaAmacuro@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Delta Amacuro', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Gustavo Adolfo Mejias', 'temploIslamicoDeltaAmacuro.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414228253', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoDeltaAmacuro@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Delta Amacuro', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Arnau Mejias', 'temploHinduDeltaAmacuro.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424851909', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduDeltaAmacuro@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Delta Amacuro', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Arnau Wu', 'temploShintoDeltaAmacuro.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412383937', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoDeltaAmacuro@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Distrito Capital', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alex Hernando', 'temploCatolicoDistritoCapital.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414841517', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoDistritoCapital@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Distrito Capital', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Carlos Tudela', 'temploJudioDistritoCapital.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426305421', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioDistritoCapital@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Distrito Capital', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Avelino Aranda', 'temploIslamicoDistritoCapital.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414438642', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoDistritoCapital@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Distrito Capital', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Iñaki Parejo', 'temploHinduDistritoCapital.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414240452', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduDistritoCapital@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Distrito Capital', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Ignacio Santos', 'temploShintoDistritoCapital.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414931586', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoDistritoCapital@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Falcón', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Yeray Cruz', 'temploCatolicoFalcón.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424922749', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoFalcón@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Falcón', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Youssef Serna', 'temploJudioFalcón.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416817031', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioFalcón@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Falcón', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Pablo Orozco', 'temploIslamicoFalcón.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212882225', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoFalcón@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Falcón', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Mario Jaen', 'temploHinduFalcón.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426813605', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduFalcón@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Falcón', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Fabian Fuster', 'temploShintoFalcón.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412696428', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoFalcón@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Guárico', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Sebastian Cañizares', 'temploCatolicoGuárico.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412423634', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoGuárico@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Guárico', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Rufino Piqueras', 'temploJudioGuárico.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424958325', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioGuárico@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Guárico', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Moises Arellano', 'temploIslamicoGuárico.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212924911', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoGuárico@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Guárico', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alejandro Casado', 'temploHinduGuárico.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426280174', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduGuárico@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Guárico', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Miquel Postigo', 'temploShintoGuárico.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212909038', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoGuárico@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado La Guaira', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Luis Maria Maza', 'temploCatolicoLaGuaira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412143217', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoLaGuaira@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado La Guaira', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Moises Casado', 'temploJudioLaGuaira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424379966', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioLaGuaira@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado La Guaira', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Rufino Sevilla', 'temploIslamicoLaGuaira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426659222', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoLaGuaira@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado La Guaira', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Sebastian Serrano', 'temploHinduLaGuaira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212325264', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduLaGuaira@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado La Guaira', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Elias Wu', 'temploShintoLaGuaira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212816312', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoLaGuaira@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Lara', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Raul Calleja', 'temploCatolicoLara.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212499876', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoLara@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Lara', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Tudela', 'temploJudioLara.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424523735', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioLara@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Lara', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Melchor Garriga', 'temploIslamicoLara.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412197851', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoLara@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Lara', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Segundo Juarez', 'temploHinduLara.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426253717', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduLara@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Lara', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Victor Manuel Arnaiz', 'temploShintoLara.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212314678', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoLara@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Mérida', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Florentino Alcazar', 'temploCatolicoMérida.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426166274', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoMérida@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Mérida', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Noe Ordoñez', 'temploJudioMérida.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412195874', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioMérida@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Mérida', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alexandru Herreros', 'temploIslamicoMérida.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424646880', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoMérida@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Mérida', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ramon Amado', 'temploHinduMérida.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414932763', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduMérida@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Mérida', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Pablo Amado', 'temploShintoMérida.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414584010', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoMérida@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Miranda', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Santos', 'temploCatolicoMiranda.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414962029', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoMiranda@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Miranda', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ignacio Gomez', 'temploJudioMiranda.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412869588', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioMiranda@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Miranda', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Victor Dardo', 'temploIslamicoMiranda.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212192862', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoMiranda@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Miranda', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ricardo Aralla', 'temploHinduMiranda.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414926623', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduMiranda@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Miranda', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Antonio Morales', 'temploShintoMiranda.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414422634', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoMiranda@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Monagas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Sebastian Andrade', 'temploCatolicoMonagas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212723150', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoMonagas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Monagas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ricardo Seguro', 'temploJudioMonagas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412448807', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioMonagas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Monagas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Luis Uribe', 'temploIslamicoMonagas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412801428', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoMonagas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Monagas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'David Mendoza', 'temploHinduMonagas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426336689', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduMonagas@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Monagas', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Armando Valencia', 'temploShintoMonagas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426177649', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoMonagas@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Nueva Esparta', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Eduard Contreras', 'temploCatolicoNuevaEsparta.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212183521', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoNuevaEsparta@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Nueva Esparta', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Carlos Valdez', 'temploJudioNuevaEsparta.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426555473', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioNuevaEsparta@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Nueva Esparta', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ramon Barrios', 'temploIslamicoNuevaEsparta.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426110828', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoNuevaEsparta@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Nueva Esparta', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Simon Ital', 'temploHinduNuevaEsparta.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424159505', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduNuevaEsparta@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Nueva Esparta', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Oscar Burguillos', 'temploShintoNuevaEsparta.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212790938', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoNuevaEsparta@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Portuguesa', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felix Pietro', 'temploCatolicoPortuguesa.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426450051', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoPortuguesa@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Portuguesa', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Marcano', 'temploJudioPortuguesa.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426932930', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioPortuguesa@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Portuguesa', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Julio Verne', 'temploIslamicoPortuguesa.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426113180', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoPortuguesa@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Portuguesa', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Octavio Marval', 'temploHinduPortuguesa.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426382735', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduPortuguesa@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Portuguesa', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Joseph Baldillo', 'temploShintoPortuguesa.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414587193', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoPortuguesa@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Sucre', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Pierino Navarro', 'temploCatolicoSucre.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416563075', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoSucre@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Sucre', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Josue Navaez', 'temploJudioSucre.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414451494', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioSucre@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Sucre', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felipe Russi', 'temploIslamicoSucre.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426146324', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoSucre@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Sucre', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alexis Ramos', 'temploHinduSucre.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426967384', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduSucre@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Sucre', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Daniel Leon', 'temploShintoSucre.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414957692', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoSucre@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Táchira', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Edgar Casco', 'temploCatolicoTáchira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424448575', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoTáchira@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Táchira', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Joy Ruiz', 'temploJudioTáchira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424987453', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioTáchira@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Táchira', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Carlos Velez', 'temploIslamicoTáchira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212875144', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoTáchira@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Táchira', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'David Rodriguez', 'temploHinduTáchira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424431192', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduTáchira@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Táchira', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ernesto Roman', 'temploShintoTáchira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414165525', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoTáchira@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Trujillo', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Luis Tapia', 'temploCatolicoTrujillo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424222055', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoTrujillo@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Trujillo', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Leonardo Saldivar', 'temploJudioTrujillo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412966177', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioTrujillo@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Trujillo', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Nestor Zuniga', 'temploIslamicoTrujillo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212765713', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoTrujillo@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Trujillo', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ruben Aguilar', 'temploHinduTrujillo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424416535', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduTrujillo@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Trujillo', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alfredo Vierya', 'temploShintoTrujillo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414629382', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoTrujillo@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Yaracuy', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Brandon Bahuer', 'temploCatolicoYaracuy.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212428783', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoYaracuy@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Yaracuy', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Miguel Quintana', 'temploJudioYaracuy.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414149392', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioYaracuy@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Yaracuy', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Roy Tortua', 'temploIslamicoYaracuy.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416818661', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoYaracuy@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Yaracuy', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Noe Abduzcan', 'temploHinduYaracuy.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412641926', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduYaracuy@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Yaracuy', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Chimal Gaeta', 'temploShintoYaracuy.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426947441', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoYaracuy@gmail.com', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Zulia', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Mario Cartagena', 'temploCatolicoZulia.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416753182', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoZulia@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Zulia', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Montes', 'temploJudioZulia.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414103351', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioZulia@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Zulia', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Steve Arguello', 'temploIslamicoZulia.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416111597', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoZulia@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Zulia', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Joel Fener', 'temploHinduZulia.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426968866', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduZulia@gmail.com', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Zulia', 'Templo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'David Ruiz', 'temploShintoZulia.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416659591', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoZulia@gmail.com', @templo);

