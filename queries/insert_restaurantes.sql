SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alto Orinoco (La Esmeralda)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Alto', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414891519', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atabapo (San Fernando de Atabapo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Atabapo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426233147', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Atures (Puerto Ayacucho)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Atures', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412238859', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Autana (Isla Ratón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Autana', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414413812', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Manapiare (San Juan de Manapiare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Manapiare', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426773674', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maroa (Maroa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Maroa', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212465535', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Río Negro (San Carlos de Río Negro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Río', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416691975', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Anaco (Anaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Anaco', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424526134', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aragua (Aragua de Barcelona)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Aragua', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212571837', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barcelona)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Bolívar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426164328', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bruzual (Clarines)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Bruzual', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424519718', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cajigal (Onoto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Cajigal', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212942178', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Valle de Guanape)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Carvajal', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416798388', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Freites (Cantaura)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Freites', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212801007', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanipa (San José de Guanipa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Guanipa', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424654834', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanta (Guanta)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Guanta', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412241108', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Soledad)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Independencia', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414192826', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (San Mateo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Libertad', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414114865', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'McGregor (El Chaparro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera McGregor', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212872457', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Pariaguán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Miranda', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424710982', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Mapire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Gourtmet Monagas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416383736', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Peñalver (Puerto Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Peñalver', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412776142', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Píritu (Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Píritu', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426926215', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Juan de Capistrano (Boca de Uchire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416797849', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Ana (Santa Ana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Santa', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426735911', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Simón Rodríguez (El Tigre)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Simón', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212912701', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sotillo (Puerto La Cruz)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Sotillo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416207075', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urbaneja (Lechería)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Urbaneja', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414665402', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Achaguas (Achaguas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Achaguas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414408407', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Biruaca (Biruaca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Biruaca', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412266826', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camejo (San Juan de Payara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Camejo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412878112', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Muñoz (Bruzual)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Gourtmet Muñoz', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416946289', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Guasdualito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Páez', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416316508', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Gallegos (Elorza)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Rómulo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212977920', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Fernando (San Fernando de Apure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212688547', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alcántara (Santa Rita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Alcántara', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416538477', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Mateo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Bolívar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414125047', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camatagua (Camatagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Camatagua', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414469668', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (Maracay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Girardot', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424115080', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iragorry (El Limón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Iragorry', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412439695', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lamas (Santa Cruz de Aragua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Lamas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416306124', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Palo Negro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Libertador', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212645635', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Turmero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Mariño', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426342480', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Michelena (Las Tejerías)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Michelena', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212850014', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ocumare de la Costa de Oro (Ocumare de la Costa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Ocumare', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426763978', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Revenga (El Consejo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Revenga', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426745384', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (La Victoria)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Ribas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412690572', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Casimiro (San Casimiro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212524991', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Sebastián (San Sebastián de Los Reyes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424550152', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Sucre', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416600283', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tovar (Colonia Tovar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Tovar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212950798', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Barbacoas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Urdaneta', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212930042', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Villa de Cura)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Zamora', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416673679', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Alberto Arvelo Torrealba (Sabaneta)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Alberto', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414942436', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Eloy Blanco (El Cantón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Andrés', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426942789', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio José de Sucre (Socopó)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Antonio', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426330386', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Arismendi)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Arismendi', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416685238', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Barinas (Barinas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Barinas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426843803', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Barinitas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Bolívar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414516370', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Paredes (Barrancas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Cruz', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416721252', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (Santa Bárbara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Ezequiel', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414501527', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Obispos (Obispos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Obispos', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414808210', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedraza (Ciudad Bolivia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Pedraza', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212730809', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rojas (Libertad)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Rojas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424799039', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sosa (Ciudad de Nutrias)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Sosa', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212257633', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura (Ciudad Piar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Angostura', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424219397', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Angostura del Orinoco (Ciudad Bolívar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Angostura', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414760225', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caroní (Ciudad Guayana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Caroní', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416755388', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara del Orinoco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Cedeño', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426873152', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chien (El Palmar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Chien', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426692911', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Callao (El Callao)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de El', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424915483', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gran Sabana (Santa Elena de Uairén)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Gran', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412987209', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Upata)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Piar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426368913', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (Guasipati)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Roscio', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424123440', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sifontes (El Dorado)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Sifontes', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412563370', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Maripa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Sucre', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212237553', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bejuma (Bejuma)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Bejuma', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412143700', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carlos Arvelo (Güigüe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Carlos', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212364250', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Diego Ibarra (Mariara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Diego', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212289044', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guacara (Guacara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Guacara', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416687195', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Tocuyito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Libertador', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414256231', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Guayos (Los Guayos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Los', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212539266', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Miranda)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Miranda', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426590810', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mora (Morón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Mora', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416104150', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montalbán (Montalbán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Montalbán', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426960214', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Naguanagua ( Naguanagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Naguanagua', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412803910', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Puerto Cabello (Puerto Cabello)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Puerto', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414641576', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Diego (San Diego)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412994004', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Joaquín (San Joaquín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412739370', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valencia (Valencia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Valencia', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414526551', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Anzoátegui (Cojedes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Anzoátegui', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426933865', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tinaquillo (Tinaquillo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Tinaquillo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412275665', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Girardot (El Baúl)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Girardot', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414535736', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lima Blanco (Macapo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Lima', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426687162', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pao de San Juan Bautista (El Pao)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Pao', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416379956', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ricaurte (Libertad)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Ricaurte', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212328579', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Gallegos (Las Vegas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Rómulo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414473305', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ezequiel Zamora (San Carlos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Ezequiel', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412310652', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tinaco (Tinaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Tinaco', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416748969', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antonio Díaz') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Antonio', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424963305', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Casacoima (Sierra Imataca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Casacoima', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414668635', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pedernales (Pedernales)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Pedernales', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212717680', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tucupita (Tucupita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Tucupita', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212300966', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Caracas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Libertador', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426739845', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Juan de los Cayos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Acosta', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212664627', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Luis)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Bolívar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414572621', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buchivacoa (Capatárida)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Buchivacoa', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414677959', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carirubana (Punto Fijo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Carirubana', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212963592', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colina (La Vela de Coro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Colina', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412129859', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Dabajuro (Dabajuro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Dabajuro', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212119698', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Democracia (Pedregal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Democracia', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416318342', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Falcón (Pueblo Nuevo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Falcón', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412373397', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Federación (Churuguara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Federación', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414852775', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iturriza (Chichiriviche)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Iturriza', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416105857', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jacura (Jacura)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Jacura', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212589072', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Taques (Santa Cruz de Los Taques)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Los', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412896580', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Manaure (Yaracal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Manaure', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424221680', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mauroa (Mene de Mauroa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Mauroa', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414400509', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Santa Ana de Coro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Miranda', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416841954', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Palmasola (Palmasola)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Palmasola', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412884648', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Petit (Cabure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Petit', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424480659', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Píritu (Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Píritu', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212994910', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (Mirimire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212547239', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (La Cruz de Taratara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Sucre', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212593555', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Silva (Tucacas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Silva', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416237198', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tocópero (Tocópero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Tocópero', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426242782', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Unión (Santa Cruz de Bucaral)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Unión', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426460468', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urumaco (Urumaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Urumaco', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412232660', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Puerto Cumarebo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Zamora', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416666749', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Camaguán (Camaguán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Camaguán', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412688504', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chaguaramas (Chaguaramas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Chaguaramas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424514112', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Socorro (El Socorro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de El', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414559308', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Las Mercedes (Las Mercedes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Las', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212274109', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Leonardo Infante (Valle de La Pascua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Leonardo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424390667', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Julián Mellado (El Sombrero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Julián', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424130881', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Francisco de Miranda (Calabozo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Francisco', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424468618', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monagas (Altagracia de Orituco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Monagas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426165108', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ortiz (Ortiz)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Ortiz', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424919276', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribas (Tucupido)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Ribas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412386127', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Roscio (San Juan de Los Morros)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Roscio', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412438492', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Gerónimo de Guayabal (Guayabal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424385552', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San José de Guaribe (San José de Guaribe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416508180', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa María de Ipire (Santa María de Ipire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Santa', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412706108', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zaraza (Zaraza)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Zaraza', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414736771', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (La Guaira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Vargas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426301267', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Blanco (Sanare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Blanco', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424695183', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Crespo (Duaca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Crespo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426368854', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Iribarren (Barquisimeto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Iribarren', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426950114', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jiménez (Quibor)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Gourtmet Jiménez', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416541085', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Morán (El Tocuyo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Morán', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416970440', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Palavecino (Cabudare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Palavecino', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212729719', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Planas (Sarare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Planas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412897566', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torres (Carora)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Torres', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412439586', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Siquisique)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Urdaneta', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426452409', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Adriani (El Vigía)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Adriani', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426840537', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (La Azulita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Andrés', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424891842', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aricagua (Aricagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Aricagua', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416632167', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Briceño (Torondoy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Briceño', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414503231', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacón (Canaguá)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Chacón', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426490743', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campo Elías (Ejido)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Campo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412968547', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Dávila (Bailadores)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Dávila', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426780168', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Febres Cordero (Nueva Bolivia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Febres', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414850044', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaraque (Guaraque)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Guaraque', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426818381', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Mérida)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Libertador', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416128968', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Timotes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Gourtmet Miranda', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414214603', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Noguera (Santa María de Caparo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Noguera', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212367564', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Parra Olmedo (Tucaní)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Parra', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426814153', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pinto Salinas (Santa Cruz de Mora)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Pinto', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414109860', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pueblo Llano (Pueblo Llano)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Pueblo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414248501', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Quintero (Santo Domingo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Quintero', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426729378', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Mucuchíes)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Rangel', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412367897', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ramos de Lora (Santa Elena de Arenales)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Ramos', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414920396', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Salas (Arapuey)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Salas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212912567', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Marquina (Tabay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Marquina', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416287863', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Lagunillas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Sucre', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212998918', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tovar (Tovar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Tovar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426854279', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zea (Zea)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Zea', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212394168', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acevedo (Caucagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Acevedo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412530735', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (San José de Barlovento)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Andrés', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412309758', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baruta (Baruta)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Baruta', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416606139', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Brión (Higuerote)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Brión', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414290564', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Francisco de Yare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Bolívar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426650081', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Buroz (Mamporal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Buroz', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426543568', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carrizal (Carrizal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Carrizal', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416689306', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Chacao (Chacao)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Chacao', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416137140', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cristóbal Rojas (Charallave)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Cristóbal', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212320657', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'El Hatillo (El Hatillo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de El', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426950237', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guaicaipuro (Los Teques)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Guaicaipuro', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412232821', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gual (Cúpira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Gual', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412852801', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Santa Teresa del Tuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Independencia', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416821896', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lander (Ocumare del Tuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Lander', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412157835', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Los Salias (San Antonio de los Altos)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Los', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426322557', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Río Chico)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Páez', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414107789', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Paz Castillo (Santa Lucía)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Paz', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416445830', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Plaza (Guarenas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Plaza', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414550765', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Petare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Sucre', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424874483', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Cúa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Urdaneta', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424541667', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Guatire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Zamora', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212966416', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Acosta (San Antonio de Capayacuar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Acosta', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424571888', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Aguasay (Aguasay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Aguasay', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416366844', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Caripito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Bolívar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426710384', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Caripe (Caripe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Caripe', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412676281', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cedeño (Caicara de Maturín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Cedeño', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414493180', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Temblador)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Libertador', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426301962', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maturín (Maturín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Maturín', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416779635', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Piar (Aragua de Maturín)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Piar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424423799', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Punceres (Quiriquire)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Punceres', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426537536', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Bárbara (Santa Bárbara)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Santa', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424147667', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sotillo (Barrancas del Orinoco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Sotillo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426883481', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Uracoa (Uracoa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Uracoa', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212487864', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Zamora (Punta de Mata)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Zamora', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412672418', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Antolín del Campo (Paraguachí)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Antolín', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416293855', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (La Asunción)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Arismendi', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416550074', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Díaz (San Juan Bautista)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Díaz', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424958798', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'García (El Valle)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de García', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416799855', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Gómez (Santa Ana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Gómez', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424619233', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Macanao (Boca de Río)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Macanao', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414955700', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maneiro (Pampatar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Maneiro', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424509957', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Marcano (Juan Griego)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Marcano', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426708534', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Porlamar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Mariño', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212101982', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Tubores (Punta de Piedras)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Tubores', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212908000', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Villalba (San Pedro de Coche)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Villalba', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414238606', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Agua Blanca (Agua Blanca)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Agua', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426584281', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Araure (Araure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Araure', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212690706', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Esteller (Píritu)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Esteller', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414643639', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanare (Guanare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Guanare', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416359969', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guanarito (Guanarito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Guanarito', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212359324', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ospino (Ospino)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Ospino', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416707712', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Acarigua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Páez', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212576155', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Papelón (Papelón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Papelón', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424105331', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Genaro de Boconoíto (Boconoíto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426813365', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Rafael de Onoto (San Rafael de Onoto)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414260240', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rosalía (El Playón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Santa', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414537719', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Biscucuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Sucre', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416511794', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Turén (Villa Bruzual)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Turén', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426629022', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Unda (Chabasquén)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Unda', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424890813', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arismendi (Río Caribe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Arismendi', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414390989', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Benítez (El Pilar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Benítez', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426421506', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bermúdez (Carúpano)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Bermúdez', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212355415', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Blanco (Casanay)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Blanco', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416690031', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Marigüitar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Bolívar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416657938', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cajigal (Yaguaraparo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Cajigal', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416684702', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cruz Salmerón Acosta (Araya)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Cruz', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414792670', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Tunapuy)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Libertador', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426566452', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mariño (Irapa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Mariño', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412570430', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mata (San José de Aerocuar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Mata', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424379310', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mejía (San Antonio del Golfo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Mejía', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416548977', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Montes (Cumanacoa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Gourtmet Montes', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414173462', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ribero (Cariaco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Ribero', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426851509', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Cumaná)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Sucre', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424114503', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valdez (Güiria)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Valdez', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426206382', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (Cordero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Andrés', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212947250', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ayacucho (Colón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Ayacucho', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426622889', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (San Antonio del Táchira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Bolívar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412741612', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cárdenas (Táriba)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Cárdenas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426253658', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Córdoba (Santa Ana de Táchira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Córdoba', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426852856', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Fernández (San Rafael del Piñal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Fernández', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426649476', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guásimos (Palmira)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Guásimos', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414977020', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Hevia (La Fría)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Hevia', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426214067', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Capacho Nuevo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Gourtmet Independencia', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412295720', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Jáuregui (La Grita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Jáuregui', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426253311', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Junín (Rubio)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Junín', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426167253', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertad (Capacho Viejo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Libertad', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414407480', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Libertador (Abejales)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Libertador', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426354855', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lobatera (Lobatera)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Lobatera', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416216204', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maldonado (La Tendida)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Maldonado', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412810878', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Michelena (Michelena)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Michelena', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412258373', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (San José de Bolívar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Miranda', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212555235', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Panamericano (Coloncito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Panamericano', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212488144', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rómulo Costa (Las Mesas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Gourtmet Rómulo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414975037', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Cristóbal (San Cristóbal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426944957', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Judas Tadeo (Umuquena)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416490387', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Seboruco (Seboruco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Seboruco', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414392633', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Simón Rodríguez (San Simón)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Brisas de Simón', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416896075', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Queniquea)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Sucre', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424467657', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Torbes (San Josecito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Torbes', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414395220', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (Delicias)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Urdaneta', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412448979', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Ureña (Ureña)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Ureña', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414820158', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Uribante (Pregonero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Gourtmet Uribante', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414762884', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Vargas (El Cobre)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Pizzeria de Vargas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424610991', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Andrés Bello (Santa Isabel)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Andrés', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212322858', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Boconó (Boconó)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Boconó', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424710768', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Sabana Grande)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Bolívar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212512122', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Candelaria (Chejendé)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Arepera Candelaria', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212994065', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carache (Carache)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Carache', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426803663', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Campos Elías (Campo Elías)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Campos', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424830441', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Carvajal (Carvajal)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Carvajal', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212812184', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Escuque (Escuque)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Escuque', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426529015', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Ceiba (Santa Apolonia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de La', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414725040', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Márquez Cañizales (El Paradero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Márquez', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424716926', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (El Dividive)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Miranda', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414406148', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monte Carmelo (Monte Carmelo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Monte', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212837922', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Motatán (Motatán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Motatán', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426623865', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampán (Pampán)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Pampán', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412324025', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pampanito (Pampanito)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Pampanito', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426439198', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rangel (Betijoque)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Rangel', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426250191', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Sabana de Mendoza)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de Sucre', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414174478', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Trujillo (Trujillo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Trujillo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424808027', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urdaneta (La Quebrada)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Urdaneta', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424287707', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valera (Valera)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Valera', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426232359', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Arístides Bastidas (San Pablo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Arístides', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416558047', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Aroa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Bolívar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212491051', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bruzual (Chivacoa)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Bruzual', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414448347', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cocorote (Cocorote)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Cocorote', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412990582', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Independencia (Independencia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Independencia', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424955679', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Trinidad (Boraure)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de La', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424525531', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Monge (Yumare)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Tacos de Monge', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414984275', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Nirgua (Nirgua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Nirgua', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416664469', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Páez (Sabana de Parra)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Fusion Asiatica de Páez', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212807518', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Peña (Yaritagua)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Peña', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424778172', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Felipe (San Felipe)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416801799', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Guama)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Sucre', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426488620', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Urachiche (Urachiche)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Urachiche', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212874932', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Veroes (Farriar)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Veroes', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414270226', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Bolívar (Tía Juana)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Bolívar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412485946', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Baralt (San Timoteo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Baralt', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212212940', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Cabimas (Cabimas)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Cabimas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424359953', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Catatumbo (Encontrados)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Catatumbo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414129761', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Colón (San Carlos del Zulia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Colón', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426787848', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Guajira (Sinamaica)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Mar y Tierra de Guajira', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416150634', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Padilla (El Toro)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Padilla', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416214105', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Pulgar (Pueblo Nuevo-El Chivo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Pulgar', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416557092', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lossada (La Concepción)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Lossada', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212647381', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Semprún (Casigua El Cubo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bolognesa de Semprún', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212299125', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'La Cañada de Urdaneta (Concepción)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Gourtmet La', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0212520774', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Lagunillas (Ciudad Ojeda)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Lagunillas', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412386572', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Machiques (Machiques)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Hornos de Machiques', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426692432', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Mara (San Rafael del Moján)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Mara', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412552540', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Maracaibo (Maracaibo)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Gourtmet Maracaibo', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412664365', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Miranda (Los Puertos de Altagracia)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Churrasqueria de Miranda', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414724471', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Rosario (La Villa del Rosario)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Grill de Rosario', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0424506175', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'San Francisco (San Francisco)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Los Costillas de San', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0426910416', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Santa Rita (Santa Rita)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Bistro de Santa', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0412408464', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Sucre (Bobures)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Burritos de Sucre', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0414178948', @proveedor);

SET @pertenece = (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Municipio' AND nombre = 'Valmore Rodríguez (Bachaquero)') as tablaLugar);
INSERT INTO arma_tu_fiesta.locacion (nombre, tipo, fk_localizacion) VALUES ('Parrillera de Valmore', 'Restaurante', @pertenece);
INSERT INTO arma_tu_fiesta.telefono (numero, fk_proveedor) VALUES ('0416974632', @proveedor);

