SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alto Orinoco (La Esmeralda)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Alto Orinoco Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Alto Orinoco Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416122600', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atabapo (San Fernando de Atabapo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Atabapo San Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Atabapo San Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212545935', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Atures Puerto Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Atures Puerto Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212808738', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('5.663056','-67.626389');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '5.663056' AND longitud = '-67.626389') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la derecha de la quinta nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Autana (Isla Ratón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Autana Isla Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Autana Isla Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416599994', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Manapiare (San Juan de Manapiare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Manapiare San Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Manapiare San Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212187215', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maroa (Maroa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Maroa Maroa) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Maroa Maroa) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412881809', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Río Negro (San Carlos de Río Negro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Río Negro Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Río Negro Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212259823', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Anaco (Anaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Anaco Anaco) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Anaco Anaco) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416765033', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aragua (Aragua de Barcelona)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Aragua Aragua Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Aragua Aragua Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414247493', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Bolívar Barcelona) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Bolívar Barcelona) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414317346', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('10.14455','-64.67241');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '10.14455' AND longitud = '-64.67241') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Detras de la farmacia gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bruzual (Clarines)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Bruzual Clarines) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Bruzual Clarines) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416236847', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cajigal (Onoto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Cajigal Onoto) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Cajigal Onoto) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416578557', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Valle de Guanape)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Carvajal Valle Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Carvajal Valle Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212778585', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Freites (Cantaura)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Freites Cantaura) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Freites Cantaura) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412682119', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanipa (San José de Guanipa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Guanipa San Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Guanipa San Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424623978', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanta (Guanta)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Guanta Guanta) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Guanta Guanta) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414230470', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Soledad)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Independencia Soledad) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Independencia Soledad) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212263342', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (San Mateo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Libertad San Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Libertad San Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412351930', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'McGregor (El Chaparro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de McGregor El Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de McGregor El Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426814512', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Pariaguán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Miranda Pariaguán) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Miranda Pariaguán) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414801194', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Mapire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Monagas Mapire) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Monagas Mapire) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414419368', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Peñalver (Puerto Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Peñalver Puerto Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Peñalver Puerto Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414424564', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Píritu (Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Píritu Píritu) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Píritu Píritu) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426543433', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Juan de Capistrano (Boca de Uchire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera San Juan VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera San Juan VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424223518', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Ana (Santa Ana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Santa Ana VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Santa Ana VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412785718', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Simón Rodríguez (El Tigre)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Simón Rodríguez Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Simón Rodríguez Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426860549', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sotillo (Puerto La Cruz)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Sotillo Puerto Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Sotillo Puerto Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416402802', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urbaneja (Lechería)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Urbaneja Lechería) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Urbaneja Lechería) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212588672', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Achaguas (Achaguas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Achaguas Achaguas) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Achaguas Achaguas) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212263264', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Biruaca (Biruaca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Biruaca Biruaca) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Biruaca Biruaca) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416810258', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camejo (San Juan de Payara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Camejo San Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Camejo San Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212122428', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Muñoz (Bruzual)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Muñoz Bruzual) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Muñoz Bruzual) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212773633', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Guasdualito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Páez Guasdualito) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Páez Guasdualito) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412616748', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Gallegos (Elorza)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Rómulo Gallegos Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Rómulo Gallegos Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426846943', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de San Fernando Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de San Fernando Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412449831', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('7.894','-67.473');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '7.894' AND longitud = '-67.473') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente del edificio gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alcántara (Santa Rita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Alcántara Santa VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Alcántara Santa VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412942645', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Mateo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Bolívar San VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Bolívar San VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426813327', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camatagua (Camatagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Camatagua Camatagua) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Camatagua Camatagua) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212649923', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Girardot Maracay) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Girardot Maracay) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424372781', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('10.251667','-67.601389');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '10.251667' AND longitud = '-67.601389') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la torre naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iragorry (El Limón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Iragorry El Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Iragorry El Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212160233', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lamas (Santa Cruz de Aragua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Lamas Santa Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Lamas Santa Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416632997', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Palo Negro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Libertador Palo Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Libertador Palo Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414569905', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Turmero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Mariño Turmero) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Mariño Turmero) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414284644', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Michelena (Las Tejerías)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Michelena Las VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Michelena Las VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212994690', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ocumare de la Costa de Oro (Ocumare de la Costa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Ocumare de Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Ocumare de Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412640043', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Revenga (El Consejo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Revenga El Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Revenga El Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426490355', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (La Victoria)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Ribas La Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Ribas La Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212495262', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Casimiro (San Casimiro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de San Casimiro Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de San Casimiro Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416225773', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Sebastián (San Sebastián de Los Reyes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de San Sebastián Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de San Sebastián Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424764971', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Sucre Cagua) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Sucre Cagua) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412537272', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tovar (Colonia Tovar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Tovar Colonia Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Tovar Colonia Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212191461', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Barbacoas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Urdaneta Barbacoas) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Urdaneta Barbacoas) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414579544', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Villa de Cura)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Zamora Villa Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Zamora Villa Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416673896', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alberto Arvelo Torrealba (Sabaneta)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Alberto Arvelo Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Alberto Arvelo Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424703386', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Eloy Blanco (El Cantón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Andrés Eloy Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Andrés Eloy Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412460597', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio José de Sucre (Socopó)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Antonio José Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Antonio José Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412368766', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Arismendi)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Arismendi Arismendi) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Arismendi Arismendi) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414725974', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Barinas Barinas) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Barinas Barinas) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412203921', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('8.62261','-70.20749');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '8.62261' AND longitud = '-70.20749') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la torre nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barinitas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Bolívar Barinitas) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Bolívar Barinitas) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212793356', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Paredes (Barrancas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Cruz Paredes Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Cruz Paredes Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212716292', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (Santa Bárbara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Ezequiel Zamora Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Ezequiel Zamora Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414348216', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Obispos (Obispos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Obispos Obispos) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Obispos Obispos) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212378955', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedraza (Ciudad Bolivia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Pedraza Ciudad Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Pedraza Ciudad Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416869163', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rojas (Libertad)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Rojas Libertad) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Rojas Libertad) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424920300', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sosa (Ciudad de Nutrias)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Sosa Ciudad Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Sosa Ciudad Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424492513', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura (Ciudad Piar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Angostura Ciudad Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Angostura Ciudad Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416968358', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Angostura del VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Angostura del VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416405183', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('8.116667','-63.55');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '8.116667' AND longitud = '-63.55') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la torre naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Caroní Ciudad Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Caroní Ciudad Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426802910', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara del Orinoco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Cedeño Caicara Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Cedeño Caicara Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416858742', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chien (El Palmar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Chien El Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Chien El Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426950059', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Callao (El Callao)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de El Callao Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de El Callao Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424961118', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gran Sabana (Santa Elena de Uairén)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Gran Sabana VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Gran Sabana VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424650833', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Upata)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Piar Upata) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Piar Upata) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426544739', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (Guasipati)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Roscio Guasipati) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Roscio Guasipati) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416823922', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sifontes (El Dorado)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Sifontes El VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Sifontes El VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412121316', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Maripa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Sucre Maripa) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Sucre Maripa) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426295609', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bejuma (Bejuma)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Bejuma Bejuma) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Bejuma Bejuma) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212570471', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carlos Arvelo (Güigüe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Carlos Arvelo Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Carlos Arvelo Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414930285', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Diego Ibarra (Mariara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Diego Ibarra Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Diego Ibarra Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424843727', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guacara (Guacara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Guacara Guacara) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Guacara Guacara) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426529346', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Tocuyito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Libertador Tocuyito) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Libertador Tocuyito) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426985446', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Guayos (Los Guayos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Los Guayos VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Los Guayos VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426864438', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Miranda)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Miranda Miranda) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Miranda Miranda) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414292173', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mora (Morón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Mora Morón) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Mora Morón) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424779888', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montalbán (Montalbán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Montalbán Montalbán) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Montalbán Montalbán) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212978675', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Naguanagua ( Naguanagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Naguanagua  Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Naguanagua  Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212763727', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Puerto Cabello (Puerto Cabello)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Puerto Cabello Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Puerto Cabello Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212394641', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Diego (San Diego)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de San Diego VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de San Diego VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212742196', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Joaquín (San Joaquín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de San Joaquín Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de San Joaquín Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426272099', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Valencia Valencia) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Valencia Valencia) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414823843', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('10.083333','-67.966667');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '10.083333' AND longitud = '-67.966667') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente de la torre nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Anzoátegui (Cojedes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Anzoátegui Cojedes) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Anzoátegui Cojedes) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424692190', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tinaquillo (Tinaquillo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Tinaquillo Tinaquillo) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Tinaquillo Tinaquillo) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426124150', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (El Baúl)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Girardot El VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Girardot El VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416104227', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lima Blanco (Macapo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Lima Blanco Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Lima Blanco Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426249272', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pao de San Juan Bautista (El Pao)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Pao de Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Pao de Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426692876', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ricaurte (Libertad)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Ricaurte Libertad) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Ricaurte Libertad) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424420932', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Gallegos (Las Vegas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Rómulo Gallegos Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Rómulo Gallegos Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424537576', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Ezequiel Zamora Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Ezequiel Zamora Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412430621', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('9.65','-68.583333');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '9.65' AND longitud = '-68.583333') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la farmacia gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tinaco (Tinaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Tinaco Tinaco) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Tinaco Tinaco) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412673274', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio Díaz') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Antonio Díaz Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Antonio Díaz Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212655788', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Casacoima (Sierra Imataca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Casacoima Sierra Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Casacoima Sierra Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416954589', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedernales (Pedernales)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Pedernales Pedernales) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Pedernales Pedernales) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416213962', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Tucupita Tucupita) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Tucupita Tucupita) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212163583', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('9.056944','-62.049722');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '9.056944' AND longitud = '-62.049722') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente de la farmacia naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Libertador Caracas) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Libertador Caracas) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212838054', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('10.505833','-66.914444');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '10.505833' AND longitud = '-66.914444') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la torre naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Juan de los Cayos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Acosta San VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Acosta San VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426184779', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Luis)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Bolívar San Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Bolívar San Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416395885', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buchivacoa (Capatárida)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Buchivacoa Capatárida) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Buchivacoa Capatárida) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212776054', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carirubana (Punto Fijo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Carirubana Punto Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Carirubana Punto Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426845729', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colina (La Vela de Coro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Colina La Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Colina La Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426249250', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Dabajuro (Dabajuro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Dabajuro Dabajuro) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Dabajuro Dabajuro) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424500333', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Democracia (Pedregal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Democracia Pedregal) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Democracia Pedregal) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212910196', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Falcón Pueblo Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Falcón Pueblo Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212970926', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Federación (Churuguara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Federación Churuguara) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Federación Churuguara) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212629269', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iturriza (Chichiriviche)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Iturriza Chichiriviche) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Iturriza Chichiriviche) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212902989', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jacura (Jacura)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Jacura Jacura) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Jacura Jacura) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412687045', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Taques (Santa Cruz de Los Taques)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Los Taques Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Los Taques Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212315647', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Manaure (Yaracal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Manaure Yaracal) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Manaure Yaracal) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426335986', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mauroa (Mene de Mauroa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Mauroa Mene VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Mauroa Mene VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414660056', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Miranda Santa Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Miranda Santa Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426316251', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('11.4','-69.683333');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '11.4' AND longitud = '-69.683333') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la derecha de la quinta de bloques',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Palmasola (Palmasola)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Palmasola Palmasola) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Palmasola Palmasola) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412538888', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Petit (Cabure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Petit Cabure) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Petit Cabure) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426889580', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Píritu (Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Píritu Píritu) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Píritu Píritu) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414733990', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (Mirimire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de San Francisco VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de San Francisco VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212487857', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (La Cruz de Taratara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Sucre La Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Sucre La Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414867304', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Silva (Tucacas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Silva Tucacas) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Silva Tucacas) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412800144', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tocópero (Tocópero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Tocópero Tocópero) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Tocópero Tocópero) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424719860', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Unión (Santa Cruz de Bucaral)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Unión Santa Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Unión Santa Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424630696', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urumaco (Urumaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Urumaco Urumaco) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Urumaco Urumaco) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424985879', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Puerto Cumarebo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Zamora Puerto Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Zamora Puerto Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412286780', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camaguán (Camaguán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Camaguán Camaguán) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Camaguán Camaguán) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416673204', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chaguaramas (Chaguaramas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Chaguaramas Chaguaramas) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Chaguaramas Chaguaramas) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426643024', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Socorro (El Socorro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de El Socorro Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de El Socorro Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212498226', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Las Mercedes (Las Mercedes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Las Mercedes Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Las Mercedes Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416862662', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Leonardo Infante (Valle de La Pascua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Leonardo Infante Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Leonardo Infante Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412196389', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Julián Mellado (El Sombrero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Julián Mellado Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Julián Mellado Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212421373', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Francisco de Miranda (Calabozo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Francisco de Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Francisco de Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426529854', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Altagracia de Orituco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Monagas Altagracia Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Monagas Altagracia Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416495022', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ortiz (Ortiz)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Ortiz Ortiz) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Ortiz Ortiz) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412578307', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (Tucupido)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Ribas Tucupido) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Ribas Tucupido) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416376176', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Roscio San VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Roscio San VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426407658', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('9.91267','-67.361459');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '9.91267' AND longitud = '-67.361459') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente de la quinta nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Gerónimo de Guayabal (Guayabal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de San Gerónimo Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de San Gerónimo Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424361035', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San José de Guaribe (San José de Guaribe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de San José Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de San José Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416160415', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa María de Ipire (Santa María de Ipire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Santa María Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Santa María Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426855410', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zaraza (Zaraza)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Zaraza Zaraza) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Zaraza Zaraza) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412842336', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Vargas La Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Vargas La Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426746858', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('10.6','-66.9331');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '10.6' AND longitud = '-66.9331') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Detras de la casa nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Blanco (Sanare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Blanco Sanare) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Blanco Sanare) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412264200', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Crespo (Duaca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Crespo Duaca) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Crespo Duaca) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412701939', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Iribarren Barquisimeto) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Iribarren Barquisimeto) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426664650', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('10.0667','-69.3333');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '10.0667' AND longitud = '-69.3333') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente de la quinta naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jiménez (Quibor)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Jiménez Quibor) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Jiménez Quibor) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426510825', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Morán (El Tocuyo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Morán El Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Morán El Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416620556', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Palavecino (Cabudare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Palavecino Cabudare) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Palavecino Cabudare) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426105944', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Planas (Sarare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Planas Sarare) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Planas Sarare) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426464893', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Torres Carora) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Torres Carora) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416949370', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Siquisique)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Urdaneta Siquisique) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Urdaneta Siquisique) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424768258', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Adriani (El Vigía)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Adriani El Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Adriani El Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426481922', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (La Azulita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Andrés Bello Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Andrés Bello Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212594920', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aricagua (Aricagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Aricagua Aricagua) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Aricagua Aricagua) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412790396', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Briceño (Torondoy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Briceño Torondoy) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Briceño Torondoy) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414435738', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacón (Canaguá)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Chacón Canaguá) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Chacón Canaguá) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414632356', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campo Elías (Ejido)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Campo Elías VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Campo Elías VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416493540', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Dávila (Bailadores)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Dávila Bailadores) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Dávila Bailadores) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426362104', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Febres Cordero (Nueva Bolivia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Febres Cordero Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Febres Cordero Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414512084', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaraque (Guaraque)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Guaraque Guaraque) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Guaraque Guaraque) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426375542', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Libertador Mérida) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Libertador Mérida) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416812836', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('8.6','-71.15');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '8.6' AND longitud = '-71.15') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda del edificio de bloques',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Timotes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Miranda Timotes) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Miranda Timotes) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414813917', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Noguera (Santa María de Caparo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Noguera Santa VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Noguera Santa VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424822883', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Parra Olmedo (Tucaní)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Parra Olmedo Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Parra Olmedo Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412427657', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pinto Salinas (Santa Cruz de Mora)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Pinto Salinas Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Pinto Salinas Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212322147', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pueblo Llano (Pueblo Llano)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Pueblo Llano Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Pueblo Llano Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424545526', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Quintero (Santo Domingo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Quintero Santo Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Quintero Santo Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414308856', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Mucuchíes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Rangel Mucuchíes) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Rangel Mucuchíes) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414685765', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ramos de Lora (Santa Elena de Arenales)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Ramos de Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Ramos de Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414800999', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Salas (Arapuey)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Salas Arapuey) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Salas Arapuey) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426861801', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Marquina (Tabay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Marquina Tabay) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Marquina Tabay) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414144069', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Lagunillas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Sucre Lagunillas) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Sucre Lagunillas) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424616127', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tovar (Tovar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Tovar Tovar) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Tovar Tovar) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414123508', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zea (Zea)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Zea Zea) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Zea Zea) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416499215', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acevedo (Caucagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Acevedo Caucagua) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Acevedo Caucagua) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426744076', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (San José de Barlovento)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Andrés Bello Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Andrés Bello Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412375036', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baruta (Baruta)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Baruta Baruta) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Baruta Baruta) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424442495', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Brión (Higuerote)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Brión Higuerote) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Brión Higuerote) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412617001', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Francisco de Yare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Bolívar San Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Bolívar San Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414651143', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buroz (Mamporal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Buroz Mamporal) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Buroz Mamporal) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412144445', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carrizal (Carrizal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Carrizal Carrizal) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Carrizal Carrizal) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416304972', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacao (Chacao)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Chacao Chacao) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Chacao Chacao) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212249039', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cristóbal Rojas (Charallave)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Cristóbal Rojas Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Cristóbal Rojas Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416383845', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Hatillo (El Hatillo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de El Hatillo Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de El Hatillo Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212588347', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Guaicaipuro Los Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Guaicaipuro Los Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414529347', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('10.350278','-67.038889');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '10.350278' AND longitud = '-67.038889') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente de la casa gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gual (Cúpira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Gual Cúpira) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Gual Cúpira) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414564524', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Santa Teresa del Tuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Independencia Santa Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Independencia Santa Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424249216', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lander (Ocumare del Tuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Lander Ocumare Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Lander Ocumare Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212724425', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Salias (San Antonio de los Altos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Los Salias Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Los Salias Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424520124', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Río Chico)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Páez Río Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Páez Río Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416136192', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Paz Castillo (Santa Lucía)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Paz Castillo Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Paz Castillo Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426426350', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Plaza (Guarenas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Plaza Guarenas) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Plaza Guarenas) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212434459', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Petare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Sucre Petare) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Sucre Petare) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212209185', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Cúa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Urdaneta Cúa) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Urdaneta Cúa) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426445222', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Guatire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Zamora Guatire) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Zamora Guatire) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212165969', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Antonio de Capayacuar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Acosta San Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Acosta San Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212559799', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aguasay (Aguasay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Aguasay Aguasay) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Aguasay Aguasay) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414512914', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Caripito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Bolívar Caripito) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Bolívar Caripito) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426208173', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caripe (Caripe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Caripe Caripe) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Caripe Caripe) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414827634', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara de Maturín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Cedeño Caicara Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Cedeño Caicara Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426104270', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Temblador)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Libertador Temblador) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Libertador Temblador) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212227024', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Maturín Maturín) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Maturín Maturín) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414720069', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('9.75','-63.183');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '9.75' AND longitud = '-63.183') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la panaderia nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Aragua de Maturín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Piar Aragua Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Piar Aragua Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414682963', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Punceres (Quiriquire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Punceres Quiriquire) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Punceres Quiriquire) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412616124', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Bárbara (Santa Bárbara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Santa Bárbara VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Santa Bárbara VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426919809', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sotillo (Barrancas del Orinoco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Sotillo Barrancas Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Sotillo Barrancas Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212223192', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Uracoa (Uracoa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Uracoa Uracoa) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Uracoa Uracoa) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414392795', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Punta de Mata)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Zamora Punta Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Zamora Punta Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426836176', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antolín del Campo (Paraguachí)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Antolín del VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Antolín del VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426823994', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Arismendi La Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Arismendi La Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212203041', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('11.0278','-63.8577');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '11.0278' AND longitud = '-63.8577') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la derecha de la casa nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Díaz (San Juan Bautista)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Díaz San Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Díaz San Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416589769', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'García (El Valle)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de García El Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de García El Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416544877', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gómez (Santa Ana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Gómez Santa Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Gómez Santa Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212723917', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Macanao (Boca de Río)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Macanao Boca Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Macanao Boca Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424293423', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maneiro (Pampatar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Maneiro Pampatar) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Maneiro Pampatar) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414794101', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Marcano (Juan Griego)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Marcano Juan Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Marcano Juan Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212590990', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Porlamar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Mariño Porlamar) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Mariño Porlamar) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416688383', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tubores (Punta de Piedras)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Tubores Punta Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Tubores Punta Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414312142', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Villalba (San Pedro de Coche)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Villalba San Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Villalba San Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424133842', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Agua Blanca (Agua Blanca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Agua Blanca Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Agua Blanca Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426630564', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Araure (Araure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Araure Araure) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Araure Araure) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412638478', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Esteller (Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Esteller Píritu) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Esteller Píritu) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212725774', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Guanare Guanare) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Guanare Guanare) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416324444', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('9.037128','-69.728693');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '9.037128' AND longitud = '-69.728693') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente del edificio gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanarito (Guanarito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Guanarito Guanarito) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Guanarito Guanarito) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426499635', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ospino (Ospino)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Ospino Ospino) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Ospino Ospino) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212896539', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Acarigua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Páez Acarigua) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Páez Acarigua) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416168280', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Papelón (Papelón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Papelón Papelón) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Papelón Papelón) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416510958', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Genaro de Boconoíto (Boconoíto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de San Genaro Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de San Genaro Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414551244', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Rafael de Onoto (San Rafael de Onoto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de San Rafael Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de San Rafael Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412714683', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rosalía (El Playón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Santa Rosalía VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Santa Rosalía VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212264109', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Biscucuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Sucre Biscucuy) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Sucre Biscucuy) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212588760', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Turén (Villa Bruzual)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Turén Villa VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Turén Villa VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424321714', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Unda (Chabasquén)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Unda Chabasquén) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Unda Chabasquén) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424963876', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Río Caribe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Arismendi Río Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Arismendi Río Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414610894', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Benítez (El Pilar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Benítez El Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Benítez El Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414883022', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bermúdez (Carúpano)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Bermúdez Carúpano) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Bermúdez Carúpano) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212553237', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Blanco (Casanay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Blanco Casanay) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Blanco Casanay) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412350741', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Marigüitar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Bolívar Marigüitar) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Bolívar Marigüitar) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412588126', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cajigal (Yaguaraparo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Cajigal Yaguaraparo) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Cajigal Yaguaraparo) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414634699', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Salmerón Acosta (Araya)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Cruz Salmerón Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Cruz Salmerón Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416157578', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Tunapuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Libertador Tunapuy) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Libertador Tunapuy) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414527793', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Irapa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Mariño Irapa) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Mariño Irapa) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426672150', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mata (San José de Aerocuar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Mata San Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Mata San Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424312796', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mejía (San Antonio del Golfo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Mejía San Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Mejía San Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212960302', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montes (Cumanacoa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Montes Cumanacoa) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Montes Cumanacoa) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412268554', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribero (Cariaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Ribero Cariaco) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Ribero Cariaco) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412648985', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Sucre Cumaná) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Sucre Cumaná) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212134090', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('10.41667','-64.08333');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '10.41667' AND longitud = '-64.08333') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la torre nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valdez (Güiria)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Valdez Güiria) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Valdez Güiria) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426634947', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (Cordero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Andrés Bello VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Andrés Bello VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212932398', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ayacucho (Colón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Ayacucho Colón) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Ayacucho Colón) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424443378', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Antonio del Táchira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Bolívar San Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Bolívar San Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412380508', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cárdenas (Táriba)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Cárdenas Táriba) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Cárdenas Táriba) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412903294', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Córdoba (Santa Ana de Táchira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Córdoba Santa Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Córdoba Santa Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414994271', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Fernández (San Rafael del Piñal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Fernández San Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Fernández San Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416715326', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guásimos (Palmira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Guásimos Palmira) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Guásimos Palmira) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414987045', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Hevia (La Fría)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Hevia La VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Hevia La VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212587083', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Capacho Nuevo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Independencia Capacho Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Independencia Capacho Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424284742', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jáuregui (La Grita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Jáuregui La Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Jáuregui La Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424793167', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Junín (Rubio)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Junín Rubio) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Junín Rubio) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412208529', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (Capacho Viejo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Libertad Capacho Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Libertad Capacho Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212520498', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Abejales)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Libertador Abejales) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Libertador Abejales) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414594289', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lobatera (Lobatera)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Lobatera Lobatera) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Lobatera Lobatera) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426417476', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maldonado (La Tendida)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Maldonado La Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Maldonado La Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416614115', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Michelena (Michelena)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Michelena Michelena) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Michelena Michelena) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414993469', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (San José de Bolívar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Miranda San VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Miranda San VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414304452', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Panamericano (Coloncito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Panamericano Coloncito) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Panamericano Coloncito) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416362657', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Costa (Las Mesas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Rómulo Costa Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Rómulo Costa Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426795121', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de San Cristóbal Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de San Cristóbal Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412445034', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('7.771357','-72.226147');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '7.771357' AND longitud = '-72.226147') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Detras de la panaderia gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Judas Tadeo (Umuquena)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de San Judas Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de San Judas Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424231468', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Seboruco (Seboruco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Seboruco Seboruco) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Seboruco Seboruco) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212495510', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Simón Rodríguez (San Simón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Simón Rodríguez Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Simón Rodríguez Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424474709', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Queniquea)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Sucre Queniquea) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Sucre Queniquea) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212651684', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torbes (San Josecito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Torbes San Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Torbes San Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414595595', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Delicias)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Urdaneta Delicias) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Urdaneta Delicias) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426164174', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ureña (Ureña)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Ureña Ureña) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Ureña Ureña) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414822663', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Uribante (Pregonero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Uribante Pregonero) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Uribante Pregonero) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416512529', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (El Cobre)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Vargas El Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Vargas El Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412989300', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (Santa Isabel)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Andrés Bello Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Andrés Bello Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424311989', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Boconó Boconó) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Boconó Boconó) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412778150', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Sabana Grande)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Bolívar Sabana VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Bolívar Sabana VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416408365', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Candelaria (Chejendé)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Candelaria Chejendé) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Candelaria Chejendé) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412895086', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carache (Carache)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Carache Carache) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Carache Carache) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412774315', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campos Elías (Campo Elías)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Campos Elías Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Campos Elías Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212123861', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Carvajal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Carvajal Carvajal) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Carvajal Carvajal) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414621774', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Escuque (Escuque)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Escuque Escuque) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Escuque Escuque) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414494076', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Ceiba (Santa Apolonia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de La Ceiba Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de La Ceiba Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412262935', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Márquez Cañizales (El Paradero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Márquez Cañizales Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Márquez Cañizales Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412465423', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (El Dividive)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Miranda El Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Miranda El Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212339133', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monte Carmelo (Monte Carmelo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Monte Carmelo VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Monte Carmelo VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424226497', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Motatán (Motatán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Motatán Motatán) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Motatán Motatán) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212767061', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampán (Pampán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Pampán Pampán) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Pampán Pampán) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414914223', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampanito (Pampanito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Pampanito Pampanito) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Pampanito Pampanito) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412941015', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Betijoque)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Rangel Betijoque) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Rangel Betijoque) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416953430', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Sabana de Mendoza)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Sucre Sabana VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Sucre Sabana VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414336258', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Trujillo Trujillo) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Trujillo Trujillo) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424925034', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('9.366667','-70.433056');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '9.366667' AND longitud = '-70.433056') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Detras de la casa de bloques',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (La Quebrada)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Urdaneta La Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Urdaneta La Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426654068', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valera (Valera)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Valera Valera) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Valera Valera) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414465022', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arístides Bastidas (San Pablo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Arístides Bastidas VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Arístides Bastidas VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412590583', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Aroa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Bolívar Aroa) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Bolívar Aroa) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416152072', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bruzual (Chivacoa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Bruzual Chivacoa) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Bruzual Chivacoa) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426684107', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cocorote (Cocorote)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Cocorote Cocorote) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Cocorote Cocorote) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212769993', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Independencia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Independencia Independencia) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Independencia Independencia) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414647011', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Trinidad (Boraure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de La Trinidad Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de La Trinidad Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424286955', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monge (Yumare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Monge Yumare) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Monge Yumare) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424324697', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Nirgua (Nirgua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Nirgua Nirgua) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Nirgua Nirgua) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414399545', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Sabana de Parra)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Páez Sabana Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Páez Sabana Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416464306', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Peña (Yaritagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Peña Yaritagua) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Peña Yaritagua) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212342386', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de San Felipe Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de San Felipe Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414557228', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('10.3353','-68.7458');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '10.3353' AND longitud = '-68.7458') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Detras de la torre nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Guama)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Sucre Guama) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Sucre Guama) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414520144', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urachiche (Urachiche)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Urachiche Urachiche) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Urachiche Urachiche) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414560788', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Veroes (Farriar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Veroes Farriar) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Veroes Farriar) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424427471', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Tía Juana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Bolívar Tía VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Bolívar Tía VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212305753', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baralt (San Timoteo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Baralt San Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Baralt San Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414131105', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Cabimas Cabimas) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Cabimas Cabimas) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416841942', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Catatumbo (Encontrados)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Catatumbo Encontrados) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Catatumbo Encontrados) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414147325', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colón (San Carlos del Zulia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Colón San VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Colón San VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412628854', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guajira (Sinamaica)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Guajira Sinamaica) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Guajira Sinamaica) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414745729', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Padilla (El Toro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Padilla El Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Padilla El Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414295770', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pulgar (Pueblo Nuevo-El Chivo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Pulgar Pueblo Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Pulgar Pueblo Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414365358', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lossada (La Concepción)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Lossada La Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Lossada La Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412664680', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Semprún (Casigua El Cubo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Semprún Casigua Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Semprún Casigua Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412633455', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Cañada de Urdaneta (Concepción)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de La Cañada VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de La Cañada VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412614502', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lagunillas (Ciudad Ojeda)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Lagunillas Ciudad Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Lagunillas Ciudad Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426808994', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Machiques (Machiques)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Machiques Machiques) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Machiques Machiques) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426413812', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mara (San Rafael del Moján)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Mara San Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Mara San Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424981129', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Maracaibo Maracaibo) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Maracaibo Maracaibo) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424586899', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud) VALUES ('10.66667','-72.16667');
SET @coordenada = (SELECT pkCoordenada FROM (SELECT id_coordenada as pkCoordenada FROM arma_tu_fiesta.coordenada WHERE latitud = '10.66667' AND longitud = '-72.16667') as tablaCoordenada);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas, fk_coordenada) VALUES (@restaurante, 'Sala Prive del Restaurante', '100', @coordenada);
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente de la quinta naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Los Puertos de Altagracia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Miranda Los VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Miranda Los VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426645857', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rosario (La Villa del Rosario)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Rosario La Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Rosario La Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412677331', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (San Francisco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de San Francisco Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de San Francisco Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416826594', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rita (Santa Rita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Santa Rita Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Santa Rita Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426334506', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Bobures)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Sucre Bobures) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Sucre Bobures) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424112650', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valmore Rodríguez (Bachaquero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Valmore Rodríguez Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Valmore Rodríguez Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416375375', @restaurante);

