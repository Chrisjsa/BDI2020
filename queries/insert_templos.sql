SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Amazonas') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Amazonas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Idoia Carrion', 'temploCatolicoAmazonas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Amazonas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Roberto Carlos Calleja', 'temploJudioAmazonas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Amazonas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alexander Hervas', 'temploIslamicoAmazonas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Amazonas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Diego Herreros', 'temploHinduAmazonas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Amazonas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Amazonas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ibai Morillas', 'temploShintoAmazonas@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Anzoátegui') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Anzoátegui', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Fulgencio Solano', 'temploCatolicoAnzoátegui@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Anzoátegui', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Simon Grau', 'temploJudioAnzoátegui@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Anzoátegui', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Guillem Boix', 'temploIslamicoAnzoátegui@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Anzoátegui', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felix Valencia', 'temploHinduAnzoátegui@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Anzoátegui', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Anzoátegui') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Antonio Zhu', 'temploShintoAnzoátegui@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Apure') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Apure', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Valentin Giraldo', 'temploCatolicoApure@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Apure', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Francisco Manuel Rus', 'temploJudioApure@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Apure', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Gheorghe Ortega', 'temploIslamicoApure@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Apure', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Martin Revilla', 'temploHinduApure@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Apure', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Apure') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Lluis Li', 'temploShintoApure@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Aragua') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Aragua', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Juan Amoros', 'temploCatolicoAragua@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Aragua', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Pablo Calle', 'temploJudioAragua@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Aragua', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ezequiel Fajardo', 'temploIslamicoAragua@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Aragua', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Adan Guerrero', 'temploHinduAragua@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Aragua', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Aragua') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Mustapha López', 'temploShintoAragua@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Barinas') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Barinas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Noe Castellanos', 'temploCatolicoBarinas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Barinas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Gustavo Adolfo Saez', 'temploJudioBarinas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Barinas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Teofilo de Haro', 'temploIslamicoBarinas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Barinas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Julio Cesar Saavedra', 'temploHinduBarinas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Barinas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Barinas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Carlos Manuel Zheng', 'temploShintoBarinas@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Bolívar') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Bolívar', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Thiago Serrano', 'temploCatolicoBolívar@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Bolívar', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Paulino Garzon', 'temploJudioBolívar@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Bolívar', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ferran Rosa', 'temploIslamicoBolívar@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Bolívar', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Oriol Estrada', 'temploHinduBolívar@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Bolívar', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Bolívar') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Robert Ros', 'temploShintoBolívar@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Carabobo') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Carabobo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Francisco Jose Guirao', 'temploCatolicoCarabobo@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Carabobo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Antonio Javier Criado', 'temploJudioCarabobo@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Carabobo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Arturo Domingo', 'temploIslamicoCarabobo@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Carabobo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Victorino Parra', 'temploHinduCarabobo@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Carabobo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Carabobo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Nil Ribera', 'temploShintoCarabobo@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Cojedes') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Cojedes', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felix Almagro', 'temploCatolicoCojedes@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Cojedes', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Elias Padron', 'temploJudioCojedes@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Cojedes', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Javier Castillo', 'temploIslamicoCojedes@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Cojedes', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Maria Peralta', 'temploHinduCojedes@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Cojedes', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Cojedes') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Roger da Silva', 'temploShintoCojedes@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Delta Amacuro') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Delta Amacuro', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Marcos Antonio de Dios', 'temploCatolicoDelta Amacuro@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Delta Amacuro', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Aritz Rosales', 'temploJudioDelta Amacuro@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Delta Amacuro', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Gustavo Adolfo Mejias', 'temploIslamicoDelta Amacuro@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Delta Amacuro', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Arnau Mejias', 'temploHinduDelta Amacuro@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Delta Amacuro', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Delta Amacuro') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Arnau Wu', 'temploShintoDelta Amacuro@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Distrito Capital') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Distrito Capital', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alex Hernando', 'temploCatolicoDistrito Capital@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Distrito Capital', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Carlos Tudela', 'temploJudioDistrito Capital@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Distrito Capital', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Avelino Aranda', 'temploIslamicoDistrito Capital@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Distrito Capital', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Iñaki Parejo', 'temploHinduDistrito Capital@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Distrito Capital', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Distrito Capital') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Ignacio Santos', 'temploShintoDistrito Capital@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Falcón') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Falcón', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Yeray Cruz', 'temploCatolicoFalcón@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Falcón', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Youssef Serna', 'temploJudioFalcón@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Falcón', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Pablo Orozco', 'temploIslamicoFalcón@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Falcón', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Mario Jaen', 'temploHinduFalcón@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Falcón', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Falcón') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Fabian Fuster', 'temploShintoFalcón@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Guárico') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Guárico', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Sebastian Cañizares', 'temploCatolicoGuárico@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Guárico', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Rufino Piqueras', 'temploJudioGuárico@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Guárico', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Moises Arellano', 'temploIslamicoGuárico@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Guárico', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alejandro Casado', 'temploHinduGuárico@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Guárico', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Guárico') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Miquel Postigo', 'temploShintoGuárico@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'La Guaira') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado La Guaira', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Luis Maria Maza', 'temploCatolicoLa Guaira@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado La Guaira', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Moises Casado', 'temploJudioLa Guaira@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado La Guaira', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Rufino Sevilla', 'temploIslamicoLa Guaira@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado La Guaira', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Sebastian Serrano', 'temploHinduLa Guaira@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado La Guaira', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%La Guaira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Elias Wu', 'temploShintoLa Guaira@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Lara') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Lara', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Raul Calleja', 'temploCatolicoLara@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Lara', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Tudela', 'temploJudioLara@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Lara', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Melchor Garriga', 'temploIslamicoLara@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Lara', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Segundo Juarez', 'temploHinduLara@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Lara', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Lara') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Victor Manuel Arnaiz', 'temploShintoLara@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Mérida') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Mérida', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Florentino Alcazar', 'temploCatolicoMérida@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Mérida', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Noe Ordoñez', 'temploJudioMérida@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Mérida', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alexandru Herreros', 'temploIslamicoMérida@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Mérida', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ramon Amado', 'temploHinduMérida@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Mérida', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Mérida') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Pablo Amado', 'temploShintoMérida@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Miranda') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Miranda', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Santos', 'temploCatolicoMiranda@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Miranda', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ignacio Gomez', 'temploJudioMiranda@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Miranda', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Victor Dardo', 'temploIslamicoMiranda@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Miranda', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ricardo Aralla', 'temploHinduMiranda@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Miranda', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Miranda') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Antonio Morales', 'temploShintoMiranda@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Monagas') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Monagas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Sebastian Andrade', 'temploCatolicoMonagas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Monagas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ricardo Seguro', 'temploJudioMonagas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Monagas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Luis Uribe', 'temploIslamicoMonagas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Monagas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'David Mendoza', 'temploHinduMonagas@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Monagas', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Monagas') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Armando Valencia', 'temploShintoMonagas@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Nueva Esparta') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Nueva Esparta', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Eduard Contreras', 'temploCatolicoNueva Esparta@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Nueva Esparta', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Juan Carlos Valdez', 'temploJudioNueva Esparta@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Nueva Esparta', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ramon Barrios', 'temploIslamicoNueva Esparta@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Nueva Esparta', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Simon Ital', 'temploHinduNueva Esparta@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Nueva Esparta', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Nueva Esparta') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Oscar Burguillos', 'temploShintoNueva Esparta@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Portuguesa') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Portuguesa', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felix Pietro', 'temploCatolicoPortuguesa@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Portuguesa', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jesus Marcano', 'temploJudioPortuguesa@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Portuguesa', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Julio Verne', 'temploIslamicoPortuguesa@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Portuguesa', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Octavio Marval', 'temploHinduPortuguesa@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Portuguesa', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Portuguesa') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Joseph Baldillo', 'temploShintoPortuguesa@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Sucre') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Sucre', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Pierino Navarro', 'temploCatolicoSucre@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Sucre', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Josue Navaez', 'temploJudioSucre@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Sucre', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Felipe Russi', 'temploIslamicoSucre@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Sucre', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alexis Ramos', 'temploHinduSucre@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Sucre', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Sucre') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Daniel Leon', 'temploShintoSucre@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Táchira') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Táchira', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Edgar Casco', 'temploCatolicoTáchira@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Táchira', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Joy Ruiz', 'temploJudioTáchira@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Táchira', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Carlos Velez', 'temploIslamicoTáchira@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Táchira', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'David Rodriguez', 'temploHinduTáchira@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Táchira', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Táchira') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ernesto Roman', 'temploShintoTáchira@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Trujillo') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Trujillo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Luis Tapia', 'temploCatolicoTrujillo@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Trujillo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Leonardo Saldivar', 'temploJudioTrujillo@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Trujillo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Nestor Zuniga', 'temploIslamicoTrujillo@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Trujillo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Ruben Aguilar', 'temploHinduTrujillo@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Trujillo', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Trujillo') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Alfredo Vierya', 'temploShintoTrujillo@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Yaracuy') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Yaracuy', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Brandon Bahuer', 'temploCatolicoYaracuy@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Yaracuy', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Miguel Quintana', 'temploJudioYaracuy@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Yaracuy', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Roy Tortua', 'temploIslamicoYaracuy@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Yaracuy', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Noe Abduzcan', 'temploHinduYaracuy@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Yaracuy', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Yaracuy') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Chimal Gaeta', 'temploShintoYaracuy@gmail.com', @religion);

SET @estado = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Estado' AND nombre = 'Zulia') as tablaLugar);
SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Cristianismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Catolico del Estado Zulia', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Catolico%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Mario Cartagena', 'temploCatolicoZulia@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Judaismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Judio del Estado Zulia', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Judio%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Jose Montes', 'temploJudioZulia@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Islamismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Islamico del Estado Zulia', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Islamico%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Steve Arguello', 'temploIslamicoZulia@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Hinduismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Hindu del Estado Zulia', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Hindu%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'Joel Fener', 'temploHinduZulia@gmail.com', @religion);

SET @religion = (SELECT pkReligion FROM (SELECT id_religion as pkReligion FROM arma_tu_fiesta.religion WHERE nombre = 'Shintoismo') as tablaReligion);
INSERT INTO arma_tu_fiesta.locacion (nombre, fk_localizacion) VALUES ('Principal Templo Shinto del Estado Zulia', @pertenece);
SET @templo = (SELECT pkTemplo FROM (SELECT id_locacion as pkTemplo FROM arma_tu_fiesta.locacion WHERE nombre LIKE '%Shinto%Zulia') as tablaTemplo);
INSERT INTO arma_tu_fiesta.templo (fk_templo, parroco, web, fk_religion) VALUES (@templo, 'David Ruiz', 'temploShintoZulia@gmail.com', @religion);

