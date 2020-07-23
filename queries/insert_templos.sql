SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Amazonas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Idoia Carrion', 'temploCatolicoAmazonas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426996015', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoAmazonas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('3.173889', '-65.546667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Amazonas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Roberto Carlos Calleja', 'temploJudioAmazonas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212174820', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioAmazonas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('4.05', '-67.7', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Amazonas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alexander Hervas', 'temploIslamicoAmazonas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414350877', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoAmazonas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('5.663056', '-67.626389', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Amazonas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Diego Herreros', 'temploHinduAmazonas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424652961', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduAmazonas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('5.131111', '-67.810556', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Amazonas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ibai Morillas', 'temploShintoAmazonas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414123853', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoAmazonas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('5.07453', '-65.54443', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Anzoátegui', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Fulgencio Solano', 'temploCatolicoAnzoátegui.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212243366', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoAnzoátegui@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.181602', '-64.779447', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Anzoátegui', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Simon Grau', 'temploJudioAnzoátegui.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424160781', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioAnzoátegui@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.14455', '-64.67241', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Anzoátegui', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Guillem Boix', 'temploIslamicoAnzoátegui.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424198125', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoAnzoátegui@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.933333', '-65.166667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Anzoátegui', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felix Valencia', 'temploHinduAnzoátegui.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424560544', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduAnzoátegui@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.59714', '-65.1935', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Anzoátegui', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Antonio Zhu', 'temploShintoAnzoátegui.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424658785', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoAnzoátegui@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.792052', '-64.10592', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Apure', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Valentin Giraldo', 'temploCatolicoApure.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412192195', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoApure@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.766667', '-68.233333', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Apure', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Francisco Manuel Rus', 'temploJudioApure.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416854657', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioApure@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.866667', '-67.5', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Apure', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Gheorghe Ortega', 'temploIslamicoApure.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416269882', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoApure@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('6.5', '-67.91667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Apure', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Martin Revilla', 'temploHinduApure.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212515716', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduApure@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.051944', '-69.329167', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Apure', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Lluis Li', 'temploShintoApure.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414867111', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoApure@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.256941', '-70.688796', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Aragua', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Juan Amoros', 'temploCatolicoAragua.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416606993', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoAragua@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.207836', '-67.559386', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Aragua', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Pablo Calle', 'temploJudioAragua.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426222479', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioAragua@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.272406', '-67.415893', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Aragua', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ezequiel Fajardo', 'temploIslamicoAragua.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426783003', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoAragua@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.791111', '-66.908056', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Aragua', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Adan Guerrero', 'temploHinduAragua.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414499154', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduAragua@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.251667', '-67.601389', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Aragua', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Mustapha López', 'temploShintoAragua.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424900789', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoAragua@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.305809', '-67.634499', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Barinas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Noe Castellanos', 'temploCatolicoBarinas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412500381', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoBarinas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.8', '-70.016667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Barinas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Gustavo Adolfo Saez', 'temploJudioBarinas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424504162', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioBarinas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.23062', '-70.82198', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Barinas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Teofilo de Haro', 'temploIslamicoBarinas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212375075', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoBarinas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.47594', '-68.36895', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Barinas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Julio Cesar Saavedra', 'temploHinduBarinas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412388765', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduBarinas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.62261', '-70.20749', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Barinas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Carlos Manuel Zheng', 'temploShintoBarinas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424195200', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoBarinas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.75988', '-70.41447', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Bolívar', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Thiago Serrano', 'temploCatolicoBolívar.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414477324', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoBolívar@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('6.212175', '-63.197121', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Bolívar', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Paulino Garzon', 'temploJudioBolívar.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416713490', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioBolívar@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.116667', '-63.55', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Bolívar', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ferran Rosa', 'temploIslamicoBolívar.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416821522', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoBolívar@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.306111', '-62.678889', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Bolívar', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Oriol Estrada', 'temploHinduBolívar.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416824562', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduBolívar@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.640833', '-66.1725', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Bolívar', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Robert Ros', 'temploShintoBolívar.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424784152', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoBolívar@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.02455', '-61.88187', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Carabobo', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Francisco Jose Guirao', 'temploCatolicoCarabobo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416341623', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoCarabobo@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.183333', '-67.933333', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Carabobo', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Antonio Javier Criado', 'temploJudioCarabobo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414859693', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioCarabobo@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.235556', '-67.885', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Carabobo', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Arturo Domingo', 'temploIslamicoCarabobo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414828344', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoCarabobo@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.287778', '-67.719444', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Carabobo', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Victorino Parra', 'temploHinduCarabobo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424736681', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduCarabobo@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.495429', '-66.943377', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Carabobo', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Nil Ribera', 'temploShintoCarabobo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412333548', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoCarabobo@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.083333', '-67.966667', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Cojedes', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felix Almagro', 'temploCatolicoCojedes.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412639115', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoCojedes@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.6329', '-68.8506', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Cojedes', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Elias Padron', 'temploJudioCojedes.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424312785', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioCojedes@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.916667', '-68.3', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Cojedes', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Javier Castillo', 'temploIslamicoCojedes.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212867995', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoCojedes@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.960556', '-68.301667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Cojedes', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Maria Peralta', 'temploHinduCojedes.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212227926', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduCojedes@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.63752', '-68.12884', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Cojedes', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Roger da Silva', 'temploShintoCojedes.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416775433', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoCojedes@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.82602', '-68.43899', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Delta Amacuro', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Marcos Antonio de Dios', 'temploCatolicoDeltaAmacuro.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212665094', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoDeltaAmacuro@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.58', '-60.9975', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Delta Amacuro', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Aritz Rosales', 'temploJudioDeltaAmacuro.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412903636', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioDeltaAmacuro@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.378854', '-62.168857', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Delta Amacuro', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Gustavo Adolfo Mejias', 'temploIslamicoDeltaAmacuro.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414853382', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoDeltaAmacuro@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.97152', '-62.25151', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Delta Amacuro', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Arnau Mejias', 'temploHinduDeltaAmacuro.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212272825', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduDeltaAmacuro@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.056944', '-62.049722', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Delta Amacuro', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Arnau Wu', 'temploShintoDeltaAmacuro.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414485939', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoDeltaAmacuro@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.966389', '-62.2525', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Distrito Capital', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alex Hernando', 'temploCatolicoDistritoCapital.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416319299', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoDistritoCapital@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.505728', '-66.934889', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Distrito Capital', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Carlos Tudela', 'temploJudioDistritoCapital.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412753332', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioDistritoCapital@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.492164', '-66.926004', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Distrito Capital', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Avelino Aranda', 'temploIslamicoDistritoCapital.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414197770', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoDistritoCapital@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.503634', '-66.904806', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Distrito Capital', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Iñaki Parejo', 'temploHinduDistritoCapital.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424386181', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduDistritoCapital@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.50503', '-66.88773', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Distrito Capital', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Ignacio Santos', 'temploShintoDistritoCapital.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212614831', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoDistritoCapital@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.512583', '-66.920209', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Falcón', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Yeray Cruz', 'temploCatolicoFalcón.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412666354', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoFalcón@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.1609', '-68.5538', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Falcón', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Youssef Serna', 'temploJudioFalcón.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424492409', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioFalcón@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.1211', '-69.6836', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Falcón', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Pablo Orozco', 'temploIslamicoFalcón.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426152745', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoFalcón@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.91667', '-70.75', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Falcón', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Mario Jaen', 'temploHinduFalcón.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212118280', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduFalcón@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.71667', '-70', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Falcón', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Fabian Fuster', 'temploShintoFalcón.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426988716', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoFalcón@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.28333', '-69.41667', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Guárico', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Sebastian Cañizares', 'temploCatolicoGuárico.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412216187', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoGuárico@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.111389', '-67.607778', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Guárico', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Rufino Piqueras', 'temploJudioGuárico.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424228869', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioGuárico@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.336099', '-66.254425', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Guárico', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Moises Arellano', 'temploIslamicoGuárico.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414858490', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoGuárico@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.995932', '-65.74532', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Guárico', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alejandro Casado', 'temploHinduGuárico.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424495101', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduGuárico@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.10193', '-66.39995', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Guárico', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Miquel Postigo', 'temploShintoGuárico.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414187094', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoGuárico@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.2188', '-66.0084', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado La Guaira', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Luis Maria Maza', 'temploCatolicoLaGuaira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426245017', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoLaGuaira@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.616667', '-66.85', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado La Guaira', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Moises Casado', 'temploJudioLaGuaira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414640334', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioLaGuaira@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.532122', '-67.115868', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado La Guaira', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Rufino Sevilla', 'temploIslamicoLaGuaira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412549407', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoLaGuaira@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.605392', '-66.35201', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado La Guaira', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Sebastian Serrano', 'temploHinduLaGuaira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424849350', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduLaGuaira@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.6', '-67.033333', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado La Guaira', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Elias Wu', 'temploShintoLaGuaira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426872846', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoLaGuaira@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.606667', '-66.8925', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Lara', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Raul Calleja', 'temploCatolicoLara.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414923208', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoLara@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.78222', '-69.7931', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Lara', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Tudela', 'temploJudioLara.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424808606', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioLara@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.3', '-69.16667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Lara', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Melchor Garriga', 'temploIslamicoLara.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416345113', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoLara@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.0667', '-69.3333', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Lara', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Segundo Juarez', 'temploHinduLara.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426127575', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduLara@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.005094', '-69.526124', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Lara', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Victor Manuel Arnaiz', 'temploShintoLara.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412683754', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoLara@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.786111', '-69.793056', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Mérida', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Florentino Alcazar', 'temploCatolicoMérida.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414502831', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoMérida@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.6', '-71.666667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Mérida', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Noe Ordoñez', 'temploJudioMérida.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426102166', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioMérida@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.714328', '-71.445122', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Mérida', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alexandru Herreros', 'temploIslamicoMérida.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426177560', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoMérida@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.225698', '-71.144577', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Mérida', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ramon Amado', 'temploHinduMérida.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426649531', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduMérida@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.038072', '-70.973428', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Mérida', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Pablo Amado', 'temploShintoMérida.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416524426', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoMérida@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.13069', '-71.4615', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Miranda', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Santos', 'temploCatolicoMiranda.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424214943', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoMiranda@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.400556', '-66.299444', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Miranda', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ignacio Gomez', 'temploJudioMiranda.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414565521', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioMiranda@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.29735', '-65.99556', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Miranda', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Victor Dardo', 'temploIslamicoMiranda.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212461806', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoMiranda@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.416667', '-66.866667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Miranda', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ricardo Aralla', 'temploHinduMiranda.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212798219', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduMiranda@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.483333', '-66.1', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Miranda', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Antonio Morales', 'temploShintoMiranda.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412263682', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoMiranda@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.183333', '-66.75', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Monagas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Sebastian Andrade', 'temploCatolicoMonagas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212467344', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoMonagas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.117222', '-63.722222', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Monagas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ricardo Seguro', 'temploJudioMonagas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424717559', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioMonagas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.55', '-63.366667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Monagas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Luis Uribe', 'temploIslamicoMonagas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212860030', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoMonagas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.111', '-63.1048', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Monagas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'David Mendoza', 'temploHinduMonagas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416119607', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduMonagas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.169167', '-63.51', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Monagas', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Armando Valencia', 'temploShintoMonagas.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416517221', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoMonagas@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.811596', '-63.614441', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Nueva Esparta', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Eduard Contreras', 'temploCatolicoNuevaEsparta.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212403372', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoNuevaEsparta@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.10758', '-63.8564', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Nueva Esparta', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Carlos Valdez', 'temploJudioNuevaEsparta.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412847742', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioNuevaEsparta@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.0278', '-63.8577', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Nueva Esparta', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ramon Barrios', 'temploIslamicoNuevaEsparta.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414420364', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoNuevaEsparta@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.0166', '-63.9499', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Nueva Esparta', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Simon Ital', 'temploHinduNuevaEsparta.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424269482', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduNuevaEsparta@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.9702', '-63.9058', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Nueva Esparta', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Oscar Burguillos', 'temploShintoNuevaEsparta.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416870927', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoNuevaEsparta@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.06796', '-63.922116', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Portuguesa', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felix Pietro', 'temploCatolicoPortuguesa.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412720833', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoPortuguesa@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.683333', '-68.966667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Portuguesa', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Marcano', 'temploJudioPortuguesa.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414384240', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioPortuguesa@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.566667', '-69.216667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Portuguesa', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Julio Verne', 'temploIslamicoPortuguesa.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412144656', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoPortuguesa@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.36845', '-69.206829', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Portuguesa', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Octavio Marval', 'temploHinduPortuguesa.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416697943', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduPortuguesa@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.037128', '-69.728693', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Portuguesa', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Joseph Baldillo', 'temploShintoPortuguesa.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416606250', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoPortuguesa@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.5', '-69', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Sucre', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Pierino Navarro', 'temploCatolicoSucre.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212825344', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoSucre@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.727507', '-62.567855', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Sucre', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Josue Navaez', 'temploJudioSucre.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212560756', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioSucre@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.5516', '-63.1601', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Sucre', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felipe Russi', 'temploIslamicoSucre.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426942591', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoSucre@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.6722', '-63.2403', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Sucre', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alexis Ramos', 'temploHinduSucre.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212203045', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduSucre@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.5029', '-63.4188', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Sucre', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Daniel Leon', 'temploShintoSucre.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426506894', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoSucre@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.37', '-63.9651', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Táchira', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Edgar Casco', 'temploCatolicoTáchira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426240303', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoTáchira@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.85628', '-72.18249', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Táchira', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Joy Ruiz', 'temploJudioTáchira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426757291', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioTáchira@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.0813', '-72.2466', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Táchira', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Carlos Velez', 'temploIslamicoTáchira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416995996', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoTáchira@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.816667', '-72.45', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Táchira', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'David Rodriguez', 'temploHinduTáchira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412424152', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduTáchira@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.83333', '-72.11667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Táchira', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ernesto Roman', 'temploShintoTáchira.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426611831', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoTáchira@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.64528', '-72.2758', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Trujillo', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Luis Tapia', 'temploCatolicoTrujillo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412129338', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoTrujillo@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.6643', '-70.7384', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Trujillo', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Leonardo Saldivar', 'temploJudioTrujillo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412543479', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioTrujillo@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.59373', '-69.86719', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Trujillo', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Nestor Zuniga', 'temploIslamicoTrujillo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426411776', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoTrujillo@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.61818', '-70.35713', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Trujillo', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ruben Aguilar', 'temploHinduTrujillo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212260671', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduTrujillo@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.707211', '-70.193208', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Trujillo', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alfredo Vierya', 'temploShintoTrujillo.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426870873', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoTrujillo@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.23333', '-68.91667', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Yaracuy', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Brandon Bahuer', 'temploCatolicoYaracuy.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412277030', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoYaracuy@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.250278', '-68.841944', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Yaracuy', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Miguel Quintana', 'temploJudioYaracuy.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426287947', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioYaracuy@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.438611', '-68.894167', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Yaracuy', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Roy Tortua', 'temploIslamicoYaracuy.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414441619', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoYaracuy@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.166667', '-68.9', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Yaracuy', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Noe Abduzcan', 'temploHinduYaracuy.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424928507', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduYaracuy@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.3225', '-68.774722', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Yaracuy', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Chimal Gaeta', 'temploShintoYaracuy.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426315216', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoYaracuy@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.329722', '-68.752778', @templo);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Zulia', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Mario Cartagena', 'temploCatolicoZulia.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212249953', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('CatolicoZulia@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.2556', '-71.3667', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Judio del Estado Zulia', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Montes', 'temploJudioZulia.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212599925', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('JudioZulia@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.78756', '-71.06463', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Zulia', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Steve Arguello', 'temploIslamicoZulia.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424922988', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('IslamicoZulia@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.4036', '-71.4517', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Zulia', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Joel Fener', 'temploHinduZulia.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414614008', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('HinduZulia@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.060397', '-72.235118', @templo);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Zulia', 'Templo', @estado);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'David Ruiz', 'temploShintoZulia.com.ve', @religion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212690122', @templo);
INSERT INTO arma_tu_fiesta.email (correo, fk_locacion) VALUES ('ShintoZulia@gmail.com', @templo);
INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9', '-71.9167', @templo);

