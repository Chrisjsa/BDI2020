SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alto Orinoco (La Esmeralda)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Alto Orinoco Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Alto Orinoco Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412137067', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atabapo (San Fernando de Atabapo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Atabapo San VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Atabapo San VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212831340', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Atures Puerto Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Atures Puerto Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412351289', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('5.663056','-67.626389', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la quinta de bloques',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Autana (Isla Ratón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Autana Isla Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Autana Isla Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424765894', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Manapiare (San Juan de Manapiare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Manapiare San Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Manapiare San Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424181608', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maroa (Maroa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Maroa Maroa) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Maroa Maroa) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212119697', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Río Negro (San Carlos de Río Negro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Río Negro Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Río Negro Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412407969', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Anaco (Anaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Anaco Anaco) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Anaco Anaco) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416791689', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aragua (Aragua de Barcelona)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Aragua Aragua Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Aragua Aragua Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426139239', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Bolívar Barcelona) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Bolívar Barcelona) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424662635', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.14455','-64.67241', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la derecha de la panaderia gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bruzual (Clarines)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Bruzual Clarines) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Bruzual Clarines) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414978937', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cajigal (Onoto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Cajigal Onoto) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Cajigal Onoto) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212451325', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Valle de Guanape)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Carvajal Valle Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Carvajal Valle Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416859243', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Freites (Cantaura)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Freites Cantaura) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Freites Cantaura) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212630459', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanipa (San José de Guanipa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Guanipa San Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Guanipa San Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212117088', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanta (Guanta)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Guanta Guanta) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Guanta Guanta) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412217370', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Soledad)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Independencia Soledad) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Independencia Soledad) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426112265', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (San Mateo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Libertad San Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Libertad San Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416533864', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'McGregor (El Chaparro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de McGregor El Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de McGregor El Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412524825', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Pariaguán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Miranda Pariaguán) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Miranda Pariaguán) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416796938', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Mapire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Monagas Mapire) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Monagas Mapire) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212958614', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Peñalver (Puerto Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Peñalver Puerto Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Peñalver Puerto Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416758308', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Píritu (Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Píritu Píritu) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Píritu Píritu) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212611223', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Juan de Capistrano (Boca de Uchire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera San Juan Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera San Juan Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212593599', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Ana (Santa Ana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Santa Ana Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Santa Ana Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212671825', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Simón Rodríguez (El Tigre)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Simón Rodríguez VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Simón Rodríguez VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426795412', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sotillo (Puerto La Cruz)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Sotillo Puerto VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Sotillo Puerto VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412353500', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urbaneja (Lechería)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Urbaneja Lechería) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Urbaneja Lechería) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414153204', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Achaguas (Achaguas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Achaguas Achaguas) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Achaguas Achaguas) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424335139', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Biruaca (Biruaca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Biruaca Biruaca) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Biruaca Biruaca) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416814079', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camejo (San Juan de Payara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Camejo San Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Camejo San Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412396105', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Muñoz (Bruzual)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Muñoz Bruzual) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Muñoz Bruzual) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412313553', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Guasdualito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Páez Guasdualito) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Páez Guasdualito) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414929244', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Gallegos (Elorza)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Rómulo Gallegos Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Rómulo Gallegos Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212205724', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de San Fernando Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de San Fernando Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212700558', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.894','-67.473', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la derecha de la quinta gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alcántara (Santa Rita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Alcántara Santa VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Alcántara Santa VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414565593', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Mateo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Bolívar San Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Bolívar San Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412731216', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camatagua (Camatagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Camatagua Camatagua) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Camatagua Camatagua) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414464189', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Girardot Maracay) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Girardot Maracay) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414239395', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.251667','-67.601389', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Detras de la panaderia nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iragorry (El Limón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Iragorry El Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Iragorry El Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412213449', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lamas (Santa Cruz de Aragua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Lamas Santa Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Lamas Santa Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414314418', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Palo Negro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Libertador Palo Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Libertador Palo Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426855979', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Turmero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Mariño Turmero) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Mariño Turmero) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416623926', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Michelena (Las Tejerías)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Michelena Las VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Michelena Las VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426613614', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ocumare de la Costa de Oro (Ocumare de la Costa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Ocumare de Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Ocumare de Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212891106', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Revenga (El Consejo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Revenga El Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Revenga El Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412531075', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (La Victoria)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Ribas La Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Ribas La Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414278847', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Casimiro (San Casimiro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de San Casimiro Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de San Casimiro Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426188589', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Sebastián (San Sebastián de Los Reyes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de San Sebastián VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de San Sebastián VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424714570', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Sucre Cagua) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Sucre Cagua) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416267290', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tovar (Colonia Tovar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Tovar Colonia Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Tovar Colonia Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212619284', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Barbacoas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Urdaneta Barbacoas) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Urdaneta Barbacoas) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416764820', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Villa de Cura)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Zamora Villa Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Zamora Villa Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212364178', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alberto Arvelo Torrealba (Sabaneta)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Alberto Arvelo Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Alberto Arvelo Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412676790', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Eloy Blanco (El Cantón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Andrés Eloy Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Andrés Eloy Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414170202', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio José de Sucre (Socopó)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Antonio José Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Antonio José Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424566644', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Arismendi)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Arismendi Arismendi) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Arismendi Arismendi) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426365971', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Barinas Barinas) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Barinas Barinas) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212361037', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.62261','-70.20749', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la panaderia gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barinitas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Bolívar Barinitas) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Bolívar Barinitas) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412379099', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Paredes (Barrancas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Cruz Paredes Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Cruz Paredes Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426789749', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (Santa Bárbara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Ezequiel Zamora Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Ezequiel Zamora Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424900977', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Obispos (Obispos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Obispos Obispos) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Obispos Obispos) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424302534', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedraza (Ciudad Bolivia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Pedraza Ciudad Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Pedraza Ciudad Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212951695', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rojas (Libertad)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Rojas Libertad) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Rojas Libertad) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212706669', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sosa (Ciudad de Nutrias)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Sosa Ciudad Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Sosa Ciudad Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412932381', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura (Ciudad Piar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Angostura Ciudad Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Angostura Ciudad Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212794457', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Angostura del VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Angostura del VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416822423', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.116667','-63.55', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la panaderia gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Caroní Ciudad Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Caroní Ciudad Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426481302', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara del Orinoco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Cedeño Caicara Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Cedeño Caicara Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414429214', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chien (El Palmar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Chien El Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Chien El Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212813827', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Callao (El Callao)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera El Callao Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera El Callao Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424965909', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gran Sabana (Santa Elena de Uairén)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Gran Sabana Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Gran Sabana Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412477568', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Upata)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Piar Upata) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Piar Upata) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426939206', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (Guasipati)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Roscio Guasipati) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Roscio Guasipati) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426977285', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sifontes (El Dorado)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Sifontes El Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Sifontes El Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426689744', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Maripa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Sucre Maripa) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Sucre Maripa) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424927453', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bejuma (Bejuma)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Bejuma Bejuma) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Bejuma Bejuma) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212563273', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carlos Arvelo (Güigüe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Carlos Arvelo Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Carlos Arvelo Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414106828', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Diego Ibarra (Mariara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Diego Ibarra Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Diego Ibarra Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416146700', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guacara (Guacara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Guacara Guacara) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Guacara Guacara) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416701293', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Tocuyito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Libertador Tocuyito) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Libertador Tocuyito) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426167440', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Guayos (Los Guayos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Los Guayos Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Los Guayos Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414526255', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Miranda)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Miranda Miranda) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Miranda Miranda) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424674984', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mora (Morón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Mora Morón) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Mora Morón) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412940223', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montalbán (Montalbán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Montalbán Montalbán) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Montalbán Montalbán) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416767727', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Naguanagua ( Naguanagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Naguanagua  Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Naguanagua  Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412901267', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Puerto Cabello (Puerto Cabello)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Puerto Cabello Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Puerto Cabello Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414855051', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Diego (San Diego)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de San Diego Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de San Diego Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424321762', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Joaquín (San Joaquín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de San Joaquín Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de San Joaquín Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426678436', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Valencia Valencia) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Valencia Valencia) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412473083', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.083333','-67.966667', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Detras de la casa naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Anzoátegui (Cojedes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Anzoátegui Cojedes) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Anzoátegui Cojedes) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212519324', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tinaquillo (Tinaquillo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Tinaquillo Tinaquillo) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Tinaquillo Tinaquillo) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212587790', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (El Baúl)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Girardot El VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Girardot El VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412260292', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lima Blanco (Macapo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Lima Blanco VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Lima Blanco VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416807978', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pao de San Juan Bautista (El Pao)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Pao de Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Pao de Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426873731', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ricaurte (Libertad)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Ricaurte Libertad) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Ricaurte Libertad) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412893172', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Gallegos (Las Vegas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Rómulo Gallegos Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Rómulo Gallegos Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426276715', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Ezequiel Zamora VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Ezequiel Zamora VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212207733', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.65','-68.583333', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente del edificio gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tinaco (Tinaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Tinaco Tinaco) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Tinaco Tinaco) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212944698', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio Díaz') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Antonio Díaz Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Antonio Díaz Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416530855', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Casacoima (Sierra Imataca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Casacoima Sierra Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Casacoima Sierra Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416296622', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedernales (Pedernales)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Pedernales Pedernales) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Pedernales Pedernales) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426750435', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Tucupita Tucupita) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Tucupita Tucupita) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212795420', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.056944','-62.049722', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente de la panaderia naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Libertador Caracas) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Libertador Caracas) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212645678', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.505833','-66.914444', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Detras de la torre naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Juan de los Cayos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Acosta San Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Acosta San Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414110026', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Luis)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Bolívar San Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Bolívar San Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424716496', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buchivacoa (Capatárida)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Buchivacoa Capatárida) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Buchivacoa Capatárida) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212245191', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carirubana (Punto Fijo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Carirubana Punto VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Carirubana Punto VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426279492', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colina (La Vela de Coro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Colina La Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Colina La Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212446016', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Dabajuro (Dabajuro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Dabajuro Dabajuro) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Dabajuro Dabajuro) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414136338', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Democracia (Pedregal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Democracia Pedregal) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Democracia Pedregal) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426398587', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Falcón Pueblo Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Falcón Pueblo Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426532745', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Federación (Churuguara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Federación Churuguara) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Federación Churuguara) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426310533', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iturriza (Chichiriviche)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Iturriza Chichiriviche) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Iturriza Chichiriviche) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424878858', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jacura (Jacura)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Jacura Jacura) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Jacura Jacura) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414494508', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Taques (Santa Cruz de Los Taques)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Los Taques Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Los Taques Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424244896', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Manaure (Yaracal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Manaure Yaracal) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Manaure Yaracal) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212825333', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mauroa (Mene de Mauroa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Mauroa Mene VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Mauroa Mene VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416154014', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Miranda Santa Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Miranda Santa Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212485844', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.4','-69.683333', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la casa naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Palmasola (Palmasola)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Palmasola Palmasola) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Palmasola Palmasola) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212378883', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Petit (Cabure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Petit Cabure) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Petit Cabure) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416999190', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Píritu (Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Píritu Píritu) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Píritu Píritu) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416310413', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (Mirimire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de San Francisco Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de San Francisco Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414676356', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (La Cruz de Taratara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Sucre La Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Sucre La Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416256502', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Silva (Tucacas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Silva Tucacas) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Silva Tucacas) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424636735', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tocópero (Tocópero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Tocópero Tocópero) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Tocópero Tocópero) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426236277', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Unión (Santa Cruz de Bucaral)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Unión Santa Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Unión Santa Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414292830', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urumaco (Urumaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Urumaco Urumaco) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Urumaco Urumaco) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426966867', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Puerto Cumarebo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Zamora Puerto Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Zamora Puerto Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414298906', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camaguán (Camaguán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Camaguán Camaguán) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Camaguán Camaguán) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424189301', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chaguaramas (Chaguaramas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Chaguaramas Chaguaramas) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Chaguaramas Chaguaramas) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412490125', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Socorro (El Socorro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de El Socorro VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de El Socorro VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424870100', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Las Mercedes (Las Mercedes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Las Mercedes Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Las Mercedes Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426251863', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Leonardo Infante (Valle de La Pascua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Leonardo Infante Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Leonardo Infante Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424853126', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Julián Mellado (El Sombrero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Julián Mellado Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Julián Mellado Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426496536', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Francisco de Miranda (Calabozo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Francisco de Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Francisco de Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414341649', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Altagracia de Orituco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Monagas Altagracia Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Monagas Altagracia Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212842811', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ortiz (Ortiz)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Ortiz Ortiz) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Ortiz Ortiz) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424473666', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (Tucupido)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Ribas Tucupido) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Ribas Tucupido) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426767411', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Roscio San VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Roscio San VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412696588', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.91267','-67.361459', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la torre gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Gerónimo de Guayabal (Guayabal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de San Gerónimo Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de San Gerónimo Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426200170', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San José de Guaribe (San José de Guaribe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de San José Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de San José Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424216741', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa María de Ipire (Santa María de Ipire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Santa María Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Santa María Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424772262', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zaraza (Zaraza)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Zaraza Zaraza) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Zaraza Zaraza) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424463166', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Vargas La Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Vargas La Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412867173', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.6','-66.9331', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la casa gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Blanco (Sanare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Blanco Sanare) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Blanco Sanare) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414112617', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Crespo (Duaca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Crespo Duaca) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Crespo Duaca) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426729500', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Iribarren Barquisimeto) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Iribarren Barquisimeto) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414363943', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.0667','-69.3333', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Detras de la casa de bloques',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jiménez (Quibor)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Jiménez Quibor) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Jiménez Quibor) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212137537', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Morán (El Tocuyo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Morán El Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Morán El Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416710243', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Palavecino (Cabudare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Palavecino Cabudare) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Palavecino Cabudare) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426762340', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Planas (Sarare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Planas Sarare) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Planas Sarare) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426970000', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Torres Carora) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Torres Carora) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426166452', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Siquisique)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Urdaneta Siquisique) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Urdaneta Siquisique) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426402816', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Adriani (El Vigía)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Adriani El Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Adriani El Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416975475', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (La Azulita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Andrés Bello Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Andrés Bello Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416716919', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aricagua (Aricagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Aricagua Aricagua) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Aricagua Aricagua) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412482121', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Briceño (Torondoy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Briceño Torondoy) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Briceño Torondoy) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416481025', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacón (Canaguá)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Chacón Canaguá) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Chacón Canaguá) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426572013', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campo Elías (Ejido)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Campo Elías VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Campo Elías VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212140764', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Dávila (Bailadores)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Dávila Bailadores) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Dávila Bailadores) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426768463', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Febres Cordero (Nueva Bolivia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Febres Cordero VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Febres Cordero VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412536909', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaraque (Guaraque)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Guaraque Guaraque) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Guaraque Guaraque) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412794489', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Libertador Mérida) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Libertador Mérida) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424512554', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('8.6','-71.15', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la quinta gris',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Timotes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Miranda Timotes) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Miranda Timotes) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412912222', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Noguera (Santa María de Caparo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Noguera Santa VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Noguera Santa VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412977038', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Parra Olmedo (Tucaní)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Parra Olmedo Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Parra Olmedo Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416883653', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pinto Salinas (Santa Cruz de Mora)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Pinto Salinas Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Pinto Salinas Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414945931', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pueblo Llano (Pueblo Llano)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Pueblo Llano Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Pueblo Llano Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416187543', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Quintero (Santo Domingo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Quintero Santo Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Quintero Santo Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424514195', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Mucuchíes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Rangel Mucuchíes) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Rangel Mucuchíes) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426123257', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ramos de Lora (Santa Elena de Arenales)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Ramos de VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Ramos de VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412403023', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Salas (Arapuey)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Salas Arapuey) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Salas Arapuey) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414570331', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Marquina (Tabay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Marquina Tabay) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Marquina Tabay) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426582846', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Lagunillas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Sucre Lagunillas) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Sucre Lagunillas) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426322091', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tovar (Tovar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Tovar Tovar) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Tovar Tovar) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426336481', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zea (Zea)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Zea Zea) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Zea Zea) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426204096', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acevedo (Caucagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Acevedo Caucagua) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Acevedo Caucagua) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212179723', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (San José de Barlovento)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Andrés Bello Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Andrés Bello Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412488307', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baruta (Baruta)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Baruta Baruta) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Baruta Baruta) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212155247', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Brión (Higuerote)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Brión Higuerote) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Brión Higuerote) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424342237', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Francisco de Yare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Bolívar San Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Bolívar San Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212740953', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buroz (Mamporal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Buroz Mamporal) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Buroz Mamporal) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212168472', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carrizal (Carrizal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Carrizal Carrizal) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Carrizal Carrizal) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212918724', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacao (Chacao)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Chacao Chacao) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Chacao Chacao) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212888084', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cristóbal Rojas (Charallave)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Cristóbal Rojas Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Cristóbal Rojas Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426588528', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Hatillo (El Hatillo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera El Hatillo Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera El Hatillo Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426659125', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Guaicaipuro Los VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Guaicaipuro Los VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426576577', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.350278','-67.038889', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la derecha de la quinta de bloques',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gual (Cúpira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Gual Cúpira) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Gual Cúpira) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426225954', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Santa Teresa del Tuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Independencia Santa Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Independencia Santa Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212662854', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lander (Ocumare del Tuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Lander Ocumare Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Lander Ocumare Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212876180', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Salias (San Antonio de los Altos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Los Salias Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Los Salias Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426198169', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Río Chico)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Páez Río Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Páez Río Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426729583', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Paz Castillo (Santa Lucía)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Paz Castillo Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Paz Castillo Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414352990', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Plaza (Guarenas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Plaza Guarenas) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Plaza Guarenas) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424203418', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Petare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Sucre Petare) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Sucre Petare) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414806899', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Cúa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Urdaneta Cúa) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Urdaneta Cúa) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416899552', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Guatire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Zamora Guatire) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Zamora Guatire) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412162554', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Antonio de Capayacuar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Acosta San Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Acosta San Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424320316', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aguasay (Aguasay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Aguasay Aguasay) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Aguasay Aguasay) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426145065', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Caripito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Bolívar Caripito) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Bolívar Caripito) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424111183', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caripe (Caripe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Caripe Caripe) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Caripe Caripe) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426453091', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara de Maturín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Cedeño Caicara Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Cedeño Caicara Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414317102', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Temblador)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Libertador Temblador) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Libertador Temblador) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424258830', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Maturín Maturín) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Maturín Maturín) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424319066', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.75','-63.183', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la panaderia naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Aragua de Maturín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Piar Aragua VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Piar Aragua VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424628013', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Punceres (Quiriquire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Punceres Quiriquire) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Punceres Quiriquire) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212771580', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Bárbara (Santa Bárbara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Santa Bárbara VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Santa Bárbara VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412873520', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sotillo (Barrancas del Orinoco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Sotillo Barrancas VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Sotillo Barrancas VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412405647', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Uracoa (Uracoa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Uracoa Uracoa) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Uracoa Uracoa) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416953054', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Punta de Mata)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Zamora Punta Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Zamora Punta Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412168407', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antolín del Campo (Paraguachí)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Antolín del Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Antolín del Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424238806', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Arismendi La Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Arismendi La Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426784135', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('11.0278','-63.8577', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente del edificio de bloques',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Díaz (San Juan Bautista)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Díaz San Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Díaz San Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414477033', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'García (El Valle)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de García El Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de García El Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424415276', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gómez (Santa Ana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Gómez Santa Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Gómez Santa Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212902793', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Macanao (Boca de Río)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Macanao Boca Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Macanao Boca Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416869601', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maneiro (Pampatar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Maneiro Pampatar) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Maneiro Pampatar) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426441880', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Marcano (Juan Griego)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Marcano Juan Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Marcano Juan Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414836566', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Porlamar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Mariño Porlamar) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Mariño Porlamar) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426996825', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tubores (Punta de Piedras)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Tubores Punta Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Tubores Punta Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414130493', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Villalba (San Pedro de Coche)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Villalba San VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Villalba San VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426559734', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Agua Blanca (Agua Blanca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Agua Blanca Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Agua Blanca Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212985605', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Araure (Araure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Araure Araure) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Araure Araure) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412376597', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Esteller (Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Esteller Píritu) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Esteller Píritu) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424255720', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Guanare Guanare) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Guanare Guanare) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424865989', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.037128','-69.728693', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Detras de la farmacia nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanarito (Guanarito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Guanarito Guanarito) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Guanarito Guanarito) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426661208', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ospino (Ospino)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Ospino Ospino) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Ospino Ospino) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412339635', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Acarigua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Páez Acarigua) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Páez Acarigua) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424586174', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Papelón (Papelón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Papelón Papelón) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Papelón Papelón) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414507898', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Genaro de Boconoíto (Boconoíto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de San Genaro VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de San Genaro VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212803973', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Rafael de Onoto (San Rafael de Onoto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de San Rafael Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de San Rafael Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424885671', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rosalía (El Playón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Santa Rosalía Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Santa Rosalía Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412997831', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Biscucuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Sucre Biscucuy) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Sucre Biscucuy) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424409744', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Turén (Villa Bruzual)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Turén Villa Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Turén Villa Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412211791', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Unda (Chabasquén)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Unda Chabasquén) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Unda Chabasquén) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426155875', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Río Caribe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Arismendi Río Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Arismendi Río Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416517071', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Benítez (El Pilar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Benítez El Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Benítez El Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414478066', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bermúdez (Carúpano)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Bermúdez Carúpano) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Bermúdez Carúpano) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414880112', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Blanco (Casanay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Blanco Casanay) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Blanco Casanay) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424246196', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Marigüitar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Bolívar Marigüitar) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Bolívar Marigüitar) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212521477', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cajigal (Yaguaraparo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Cajigal Yaguaraparo) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Cajigal Yaguaraparo) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412393121', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Salmerón Acosta (Araya)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Cruz Salmerón Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Cruz Salmerón Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424433397', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Tunapuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Libertador Tunapuy) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Libertador Tunapuy) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416298580', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Irapa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Mariño Irapa) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Mariño Irapa) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212966788', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mata (San José de Aerocuar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Mata San VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Mata San VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412789498', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mejía (San Antonio del Golfo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Mejía San Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Mejía San Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424922000', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montes (Cumanacoa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Montes Cumanacoa) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Montes Cumanacoa) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426838967', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribero (Cariaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Ribero Cariaco) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Ribero Cariaco) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426706114', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Sucre Cumaná) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Sucre Cumaná) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212580487', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.41667','-64.08333', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la izquierda de la panaderia naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valdez (Güiria)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Valdez Güiria) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Valdez Güiria) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426300824', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (Cordero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Andrés Bello Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Andrés Bello Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412996777', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ayacucho (Colón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Ayacucho Colón) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Ayacucho Colón) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412779901', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Antonio del Táchira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Bolívar San Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Bolívar San Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424436069', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cárdenas (Táriba)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Cárdenas Táriba) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Cárdenas Táriba) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412737454', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Córdoba (Santa Ana de Táchira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Córdoba Santa Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Córdoba Santa Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412385485', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Fernández (San Rafael del Piñal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Fernández San Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Fernández San Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212958651', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guásimos (Palmira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Guásimos Palmira) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Guásimos Palmira) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424404109', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Hevia (La Fría)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Hevia La Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Hevia La Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424178745', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Capacho Nuevo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Independencia Capacho Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Independencia Capacho Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426790639', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jáuregui (La Grita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Jáuregui La Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Jáuregui La Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212607436', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Junín (Rubio)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Junín Rubio) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Junín Rubio) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414763296', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (Capacho Viejo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Libertad Capacho Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Libertad Capacho Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412741335', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Abejales)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Libertador Abejales) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Libertador Abejales) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414254033', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lobatera (Lobatera)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Lobatera Lobatera) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Lobatera Lobatera) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416377296', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maldonado (La Tendida)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Maldonado La Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Maldonado La Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414145597', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Michelena (Michelena)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Michelena Michelena) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Michelena Michelena) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426239178', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (San José de Bolívar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Miranda San Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Miranda San Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416203488', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Panamericano (Coloncito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Panamericano Coloncito) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Panamericano Coloncito) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424601524', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Costa (Las Mesas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Rómulo Costa Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Rómulo Costa Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414647439', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de San Cristóbal VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de San Cristóbal VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424607669', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('7.771357','-72.226147', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Detras de la panaderia nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Judas Tadeo (Umuquena)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de San Judas Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de San Judas Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212437949', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Seboruco (Seboruco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Seboruco Seboruco) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Seboruco Seboruco) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416422073', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Simón Rodríguez (San Simón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Simón Rodríguez Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Simón Rodríguez Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424834049', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Queniquea)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Sucre Queniquea) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Sucre Queniquea) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424201264', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torbes (San Josecito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Torbes San Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Torbes San Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424829775', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Delicias)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Urdaneta Delicias) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Urdaneta Delicias) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424805926', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ureña (Ureña)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Ureña Ureña) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Ureña Ureña) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416845014', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Uribante (Pregonero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Uribante Pregonero) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Uribante Pregonero) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426529455', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (El Cobre)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Vargas El Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Vargas El Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412431213', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (Santa Isabel)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Andrés Bello Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Andrés Bello Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414910858', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Boconó Boconó) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Boconó Boconó) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426665717', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Sabana Grande)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Bolívar Sabana Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Bolívar Sabana Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416774767', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Candelaria (Chejendé)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Candelaria Chejendé) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Candelaria Chejendé) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212806570', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carache (Carache)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Carache Carache) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Carache Carache) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414386054', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campos Elías (Campo Elías)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Campos Elías VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Campos Elías VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424819687', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Carvajal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Carvajal Carvajal) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Carvajal Carvajal) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426211675', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Escuque (Escuque)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Escuque Escuque) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Escuque Escuque) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414603492', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Ceiba (Santa Apolonia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de La Ceiba Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de La Ceiba Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212191990', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Márquez Cañizales (El Paradero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Márquez Cañizales VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Fusion Asiatica de Márquez Cañizales VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414149566', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (El Dividive)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Miranda El VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Miranda El VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424567358', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monte Carmelo (Monte Carmelo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Monte Carmelo Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Monte Carmelo Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424775613', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Motatán (Motatán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Motatán Motatán) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Motatán Motatán) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412928502', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampán (Pampán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Pampán Pampán) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Pampán Pampán) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412267479', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampanito (Pampanito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Pampanito Pampanito) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de Pampanito Pampanito) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424771432', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Betijoque)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Rangel Betijoque) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Rangel Betijoque) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416920559', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Sabana de Mendoza)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Sucre Sabana Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Sucre Sabana Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424483864', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Trujillo Trujillo) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Trujillo Trujillo) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424646067', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('9.366667','-70.433056', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('Al frente de la farmacia naranja',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '2');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (La Quebrada)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Urdaneta La VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Urdaneta La VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426527239', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valera (Valera)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Valera Valera) Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Valera Valera) Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416810350', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arístides Bastidas (San Pablo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Arístides Bastidas Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Arístides Bastidas Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412521087', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Aroa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Bolívar Aroa) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Bolívar Aroa) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424948202', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bruzual (Chivacoa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Bruzual Chivacoa) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Bruzual Chivacoa) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426693617', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cocorote (Cocorote)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Cocorote Cocorote) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Arepera Cocorote Cocorote) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412258503', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Independencia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Independencia Independencia) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de Independencia Independencia) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212878689', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Trinidad (Boraure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de La Trinidad Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Brisas de La Trinidad Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424421275', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monge (Yumare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Monge Yumare) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Monge Yumare) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424311778', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Nirgua (Nirgua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Nirgua Nirgua) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Nirgua Nirgua) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416698793', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Sabana de Parra)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Páez Sabana Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Páez Sabana Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414947573', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Peña (Yaritagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Peña Yaritagua) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Peña Yaritagua) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412641663', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de San Felipe VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de San Felipe VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416617192', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.3353','-68.7458', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la derecha de la panaderia de bloques',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '4');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Guama)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Sucre Guama) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Sucre Guama) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426456575', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urachiche (Urachiche)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Urachiche Urachiche) VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Urachiche Urachiche) VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212822079', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Veroes (Farriar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Veroes Farriar) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Veroes Farriar) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412427330', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Tía Juana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Bolívar Tía Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Bolívar Tía Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414923173', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baralt (San Timoteo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Baralt San Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Grill de Baralt San Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212244953', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Cabimas Cabimas) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Churrasqueria de Cabimas Cabimas) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412494339', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Catatumbo (Encontrados)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Catatumbo Encontrados) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Catatumbo Encontrados) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414795972', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colón (San Carlos del Zulia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Colón San VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Colón San VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414470974', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guajira (Sinamaica)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Guajira Sinamaica) Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de Guajira Sinamaica) Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424146303', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Padilla (El Toro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Padilla El Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Burritos de Padilla El Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412537391', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pulgar (Pueblo Nuevo-El Chivo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Pulgar Pueblo Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Pulgar Pueblo Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426696581', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lossada (La Concepción)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Lossada La Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Lossada La Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426459031', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Semprún (Casigua El Cubo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Semprún Casigua Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Semprún Casigua Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0426879838', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Cañada de Urdaneta (Concepción)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de La Cañada Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Pizzeria de La Cañada Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424693252', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lagunillas (Ciudad Ojeda)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Lagunillas Ciudad Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Lagunillas Ciudad Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424383499', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Machiques (Machiques)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Machiques Machiques) Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bolognesa de Machiques Machiques) Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416471189', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mara (San Rafael del Moján)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Mara San Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Bistro de Mara San Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412670635', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Maracaibo Maracaibo) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Maracaibo Maracaibo) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0412915168', @restaurante);

INSERT INTO arma_tu_fiesta.coordenada (latitud, longitud, fk_locacion) VALUES ('10.66667','-72.16667', @restaurante);
INSERT INTO arma_tu_fiesta.salon_de_fiesta (fk_salon, descripcion, capacidad_personas) VALUES (@restaurante, 'Sala Prive del Restaurante', '100');
INSERT INTO arma_tu_fiesta.punto_de_referencia (descripcion, fk_salon_de_fiesta) VALUES ('A la derecha de la casa nueva',@restaurante);

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Techada') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Estacionamiento') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '1');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Punto de Electricidad') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Fuente') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '3');

SET @caract = (SELECT pkCaract FROM (SELECT id_caracteristica as pkCaract FROM arma_tu_fiesta.caracteristica WHERE nombre = 'Area Infantil') as tablaCaract);
INSERT INTO arma_tu_fiesta.caracteristica_salon (fk_salon_de_fiesta, fk_caracteristica, cantidad) VALUES (@restaurante,@caract, '5');

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Los Puertos de Altagracia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Miranda Los Gourmet', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Hornos de Miranda Los Gourmet' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424299811', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rosario (La Villa del Rosario)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Rosario La Deluxe', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Mar y Tierra de Rosario La Deluxe' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416296761', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (San Francisco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de San Francisco VIP', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Parrillera de San Francisco VIP' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0424386764', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rita (Santa Rita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Santa Rita Rico', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Los Costillas de Santa Rita Rico' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0414447138', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Bobures)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Sucre Bobures) Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Sucre Bobures) Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0212549674', @restaurante);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valmore Rodríguez (Bachaquero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Valmore Rodríguez Criollo', 'Restaurante', @pertenece);
SET @restaurante = (SELECT pkLocacion FROM (SELECT id_locacion as pkLocacion FROM arma_tu_fiesta.locacion WHERE nombre = 'Tacos de Valmore Rodríguez Criollo' AND tipo = 'Restaurante') as tablaLocacion);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_locacion) VALUES ('0416627738', @restaurante);

