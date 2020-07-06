-- ++++++++++++++++++++++++++++++++++ LUGAR +++++++++++++++++++++++++++++++++++++++++++++++++++++
SET @tipo = 'Continente';

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`)
    VALUES
        ('America', @tipo),
        ('Africa', @tipo),
        ('Asia', @tipo),
        ('Europa', @tipo),
        ('Oceania', @tipo)
;

-- Paises

SET @tipo = 'Pais';
SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Continente' AND nombre = 'America')
    as tablaLugar);

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Venezuela', @tipo, @pertenece),
        ('Colombia', @tipo, @pertenece),
        ('Chile', @tipo, @pertenece),
        ('Brasil', @tipo, @pertenece),
        ('Argentina', @tipo, @pertenece)
;

-- Estados

SET @tipo = 'Estado';
SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Pais' AND nombre = 'Venezuela')
    as tablaLugar);

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Amazonas', @tipo, @pertenece),
        ('Anzoategui', @tipo, @pertenece),
        ('Apure', @tipo, @pertenece),
        ('Aragua', @tipo, @pertenece),
        ('Barinas', @tipo, @pertenece),
        ('Bolivar', @tipo, @pertenece),
        ('Carabobo', @tipo, @pertenece),
        ('Cojedes', @tipo, @pertenece),
        ('Delta Amacuro', @tipo, @pertenece),
        ('Distrito Capital', @tipo, @pertenece),
        ('Falcon', @tipo, @pertenece),
        ('Guarico', @tipo, @pertenece),
        ('La Guaira', @tipo, @pertenece),
        ('Lara', @tipo, @pertenece),
        ('Merida', @tipo, @pertenece),
        ('Miranda', @tipo, @pertenece),
        ('Monagas', @tipo, @pertenece),
        ('Nueva Esparta', @tipo, @pertenece),
        ('Portuguesa', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Tachira', @tipo, @pertenece),
        ('Trujillo', @tipo, @pertenece),
        ('Yaracuy', @tipo, @pertenece),
        ('Zulia', @tipo, @pertenece)
;

-- Municipios

SET @tipo = 'Municipio';

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Amazonas')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Alto Orinoco', @tipo, @pertenece),
        ('Atabapo', @tipo, @pertenece),
        ('Atures', @tipo, @pertenece),
        ('Autana', @tipo, @pertenece),
        ('Manapiare', @tipo, @pertenece),
        ('Maroa', @tipo, @pertenece),
        ('Río Negro', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Anzoategui')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Anaco', @tipo, @pertenece),
        ('Aragua', @tipo, @pertenece),
        ('Bolívar', @tipo, @pertenece),
        ('Bruzual', @tipo, @pertenece),
        ('Cajigal', @tipo, @pertenece),
        ('Carvajal', @tipo, @pertenece),
        ('Freites', @tipo, @pertenece),
        ('Guanipa', @tipo, @pertenece),
        ('Guanta', @tipo, @pertenece),
        ('Independencia', @tipo, @pertenece),
        ('Libertad', @tipo, @pertenece),
        ('McGregor', @tipo, @pertenece),
        ('Miranda', @tipo, @pertenece),
        ('Monagas', @tipo, @pertenece),
        ('Peñalver', @tipo, @pertenece),
        ('Píritu', @tipo, @pertenece),
        ('San Juan de Capistrano', @tipo, @pertenece),
        ('Santa Ana', @tipo, @pertenece),
        ('Simón Rodríguez', @tipo, @pertenece),
        ('Sotillo', @tipo, @pertenece),
        ('Urbaneja', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Apure')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Achaguas', @tipo, @pertenece),
        ('Biruaca', @tipo, @pertenece),
        ('Camejo', @tipo, @pertenece),
        ('Muñoz', @tipo, @pertenece),
        ('Páez', @tipo, @pertenece),
        ('Rómulo Gallegos', @tipo, @pertenece),
        ('San Fernando', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Aragua')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Alcántara', @tipo, @pertenece),
        ('Bolívar', @tipo, @pertenece),
        ('Camatagua', @tipo, @pertenece),
        ('Girardot', @tipo, @pertenece),
        ('Iragorry', @tipo, @pertenece),
        ('Lamas', @tipo, @pertenece),
        ('Libertador', @tipo, @pertenece),
        ('Mariño', @tipo, @pertenece),
        ('Michelena', @tipo, @pertenece),
        ('Ocumare de la Costa de Oro', @tipo, @pertenece),
        ('Revenga', @tipo, @pertenece),
        ('Ribas', @tipo, @pertenece),
        ('San Casimiro ', @tipo, @pertenece),
        ('San Sebastián', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Tovar', @tipo, @pertenece),
        ('Urdaneta', @tipo, @pertenece),
        ('Zamora', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Barinas')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Alberto Arvelo Torrealba', @tipo, @pertenece),
        ('Andrés Eloy Blanco', @tipo, @pertenece),
        ('Antonio José de Sucre', @tipo, @pertenece),
        ('Arismendi', @tipo, @pertenece),
        ('Barinas', @tipo, @pertenece),
        ('Bolívar', @tipo, @pertenece),
        ('Cruz Paredes', @tipo, @pertenece),
        ('Ezequiel Zamora', @tipo, @pertenece),
        ('Obispos', @tipo, @pertenece),
        ('Pedraza', @tipo, @pertenece),
        ('Rojas', @tipo, @pertenece),
        ('Sosa', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Bolivar')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Angostura', @tipo, @pertenece),
        ('Angostura del Orinoco', @tipo, @pertenece),
        ('Caroní', @tipo, @pertenece),
        ('Cedeño', @tipo, @pertenece),
        ('Chien', @tipo, @pertenece),
        ('El Callao', @tipo, @pertenece),
        ('Gran Sabana', @tipo, @pertenece),
        ('Piar', @tipo, @pertenece),
        ('Roscio', @tipo, @pertenece),
        ('Sifontes', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Carabobo')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Bejuma', @tipo, @pertenece),
        ('Carlos Arvelo', @tipo, @pertenece),
        ('Diego Ibarra', @tipo, @pertenece),
        ('Guacara', @tipo, @pertenece),
        ('Libertador', @tipo, @pertenece),
        ('Los Guayos', @tipo, @pertenece),
        ('Miranda', @tipo, @pertenece),
        ('Mora', @tipo, @pertenece),
        ('Montalbán', @tipo, @pertenece),
        ('Naguanagua', @tipo, @pertenece),
        ('Puerto Cabello', @tipo, @pertenece),
        ('San Diego', @tipo, @pertenece),
        ('San Joaquín', @tipo, @pertenece),
        ('Valencia', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Cojedes')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Anzoátegui', @tipo, @pertenece),
        ('Tinaquillo', @tipo, @pertenece),
        ('Girardot', @tipo, @pertenece),
        ('Lima Blanco', @tipo, @pertenece),
        ('Pao de San Juan Bautista', @tipo, @pertenece),
        ('Ricaurte', @tipo, @pertenece),
        ('Rómulo Gallegos', @tipo, @pertenece),
        ('Ezequiel Zamora', @tipo, @pertenece),
        ('Tinaco', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Delta Amacuro')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Antonio Díaz', @tipo, @pertenece),
        ('Casacoima', @tipo, @pertenece),
        ('Pedernales', @tipo, @pertenece),
        ('Tucupita', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Distrito Capital')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Libertador', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Falcon')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Acosta', @tipo, @pertenece),
        ('Bolívar', @tipo, @pertenece),
        ('Buchivacoa', @tipo, @pertenece),
        ('Carirubana', @tipo, @pertenece),
        ('Colina', @tipo, @pertenece),
        ('Dabajuro', @tipo, @pertenece),
        ('Democracia', @tipo, @pertenece),
        ('Falcón', @tipo, @pertenece),
        ('Federación', @tipo, @pertenece),
        ('Iturriza', @tipo, @pertenece),
        ('Jacura', @tipo, @pertenece),
        ('Los Taques', @tipo, @pertenece),
        ('Manaure', @tipo, @pertenece),
        ('Mauroa', @tipo, @pertenece),
        ('Miranda', @tipo, @pertenece),
        ('Palmasola', @tipo, @pertenece),
        ('Petit', @tipo, @pertenece),
        ('Píritu', @tipo, @pertenece),
        ('San Francisco', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Silva', @tipo, @pertenece),
        ('Tocópero', @tipo, @pertenece),
        ('Unión', @tipo, @pertenece),
        ('Urumaco', @tipo, @pertenece),
        ('Zamora', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Guarico')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Camaguán', @tipo, @pertenece),
        ('Chaguaramas', @tipo, @pertenece),
        ('El Socorro', @tipo, @pertenece),
        ('Las Mercedes', @tipo, @pertenece),
        ('Leonardo Infante', @tipo, @pertenece),
        ('Julián Mellado', @tipo, @pertenece),
        ('Francisco de Miranda', @tipo, @pertenece),
        ('Monagas', @tipo, @pertenece),
        ('Ortiz', @tipo, @pertenece),
        ('Ribas', @tipo, @pertenece),
        ('Roscio', @tipo, @pertenece),
        ('San Gerónimo de Guayabal', @tipo, @pertenece),
        ('San José de Guaribe', @tipo, @pertenece),
        ('Santa María de Ipire', @tipo, @pertenece),
        ('Zaraza', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'La Guaira')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Vargas', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Lara')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Blanco', @tipo, @pertenece),
        ('Crespo', @tipo, @pertenece),
        ('Iribarren', @tipo, @pertenece),
        ('Jiménez', @tipo, @pertenece),
        ('Morán', @tipo, @pertenece),
        ('Palavecino', @tipo, @pertenece),
        ('Planas', @tipo, @pertenece),
        ('Torres', @tipo, @pertenece),
        ('Urdaneta', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Merida')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Adriani', @tipo, @pertenece),
        ('Andrés Bello', @tipo, @pertenece),
        ('Aricagua', @tipo, @pertenece),
        ('Briceño', @tipo, @pertenece),
        ('Chacón', @tipo, @pertenece),
        ('Campo Elías', @tipo, @pertenece),
        ('Dávila', @tipo, @pertenece),
        ('Febres Cordero', @tipo, @pertenece),
        ('Guaraque', @tipo, @pertenece),
        ('Libertador', @tipo, @pertenece),
        ('Miranda', @tipo, @pertenece),
        ('Noguera', @tipo, @pertenece),
        ('Parra Olmedo', @tipo, @pertenece),
        ('Pinto Salinas', @tipo, @pertenece),
        ('Pueblo Llano', @tipo, @pertenece),
        ('Quintero', @tipo, @pertenece),
        ('Rangel', @tipo, @pertenece),
        ('Ramos de Lora', @tipo, @pertenece),
        ('Salas', @tipo, @pertenece),
        ('Marquina', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Tovar', @tipo, @pertenece),
        ('Zea', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Miranda')
    as tablaLugar);

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Acevedo', @tipo, @pertenece),
        ('Andrés Bello', @tipo, @pertenece),
        ('Baruta', @tipo, @pertenece),
        ('Brión', @tipo, @pertenece),
        ('Bolívar', @tipo, @pertenece),
        ('Buroz', @tipo, @pertenece),
        ('Carrizal', @tipo, @pertenece),
        ('Chacao', @tipo, @pertenece),
        ('Cristóbal Rojas', @tipo, @pertenece),
        ('El Hatillo', @tipo, @pertenece),
        ('Guaicaipuro', @tipo, @pertenece),
        ('Gual', @tipo, @pertenece),
        ('Independencia', @tipo, @pertenece),
        ('Lander', @tipo, @pertenece),
        ('Los Salias', @tipo, @pertenece),
        ('Páez', @tipo, @pertenece),
        ('Paz Castillo', @tipo, @pertenece),
        ('Plaza', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Urdaneta', @tipo, @pertenece),
        ('Zamora', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Monagas')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Acosta', @tipo, @pertenece),
        ('Aguasay', @tipo, @pertenece),
        ('Bolívar', @tipo, @pertenece),
        ('Caripe', @tipo, @pertenece),
        ('Cedeño', @tipo, @pertenece),
        ('Libertador', @tipo, @pertenece),
        ('Maturín', @tipo, @pertenece),
        ('Piar', @tipo, @pertenece),
        ('Punceres', @tipo, @pertenece),
        ('Santa Bárbara', @tipo, @pertenece),
        ('Sotillo', @tipo, @pertenece),
        ('Uracoa', @tipo, @pertenece),
        ('Zamora', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Nueva Esparta')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Antolín del Campo', @tipo, @pertenece),
        ('Arismendi', @tipo, @pertenece),
        ('Díaz', @tipo, @pertenece),
        ('García', @tipo, @pertenece),
        ('Gómez', @tipo, @pertenece),
        ('Macanao', @tipo, @pertenece),
        ('Maneiro', @tipo, @pertenece),
        ('Marcano', @tipo, @pertenece),
        ('Mariño', @tipo, @pertenece),
        ('Tubores', @tipo, @pertenece),
        ('Villalba', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Portuguesa')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Agua Blanca (Agua Blanca)', @tipo, @pertenece),
        ('Araure', @tipo, @pertenece),
        ('Esteller', @tipo, @pertenece),
        ('Guanare', @tipo, @pertenece),
        ('Guanarito', @tipo, @pertenece),
        ('Ospino', @tipo, @pertenece),
        ('Páez', @tipo, @pertenece),
        ('Papelón', @tipo, @pertenece),
        ('San Genaro de Boconoíto', @tipo, @pertenece),
        ('San Rafael de Onoto', @tipo, @pertenece),
        ('Santa Rosalía', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Turén', @tipo, @pertenece),
        ('Unda', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Sucre')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Arismendi', @tipo, @pertenece),
        ('Benítez', @tipo, @pertenece),
        ('Bermúdez', @tipo, @pertenece),
        ('Blanco', @tipo, @pertenece),
        ('Bolívar', @tipo, @pertenece),
        ('Cajigal', @tipo, @pertenece),
        ('Cruz Salmerón Acosta', @tipo, @pertenece),
        ('Libertador', @tipo, @pertenece),
        ('Mariño', @tipo, @pertenece),
        ('Mata', @tipo, @pertenece),
        ('Mejía', @tipo, @pertenece),
        ('Montes', @tipo, @pertenece),
        ('Ribero', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Valdez', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Tachira')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Andrés Bello', @tipo, @pertenece),
        ('Ayacucho', @tipo, @pertenece),
        ('Bolívar', @tipo, @pertenece),
        ('Cárdenas', @tipo, @pertenece),
        ('Córdoba', @tipo, @pertenece),
        ('Fernández', @tipo, @pertenece),
        ('Guásimos', @tipo, @pertenece),
        ('Hevia', @tipo, @pertenece),
        ('Independencia', @tipo, @pertenece),
        ('Jáuregui', @tipo, @pertenece),
        ('Junín', @tipo, @pertenece),
        ('Libertad', @tipo, @pertenece),
        ('Libertador', @tipo, @pertenece),
        ('Lobatera', @tipo, @pertenece),
        ('Maldonado', @tipo, @pertenece),
        ('Michelena', @tipo, @pertenece),
        ('Miranda', @tipo, @pertenece),
        ('Panamericano', @tipo, @pertenece),
        ('Rómulo Costa', @tipo, @pertenece),
        ('San Cristóbal', @tipo, @pertenece),
        ('San Judas Tadeo', @tipo, @pertenece),
        ('Seboruco', @tipo, @pertenece),
        ('Simón Rodríguez', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Torbes', @tipo, @pertenece),
        ('Urdaneta', @tipo, @pertenece),
        ('Ureña', @tipo, @pertenece),
        ('Uribante', @tipo, @pertenece),
        ('Vargas', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Trujillo')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Andrés Bello', @tipo, @pertenece),
        ('Boconó', @tipo, @pertenece),
        ('Bolívar', @tipo, @pertenece),
        ('Candelaria', @tipo, @pertenece),
        ('Carache', @tipo, @pertenece),
        ('Campos Elías', @tipo, @pertenece),
        ('Carvajal', @tipo, @pertenece),
        ('Escuque', @tipo, @pertenece),
        ('La Ceiba', @tipo, @pertenece),
        ('Márquez Cañizales', @tipo, @pertenece),
        ('Miranda', @tipo, @pertenece),
        ('Monte Carmelo', @tipo, @pertenece),
        ('Motatán', @tipo, @pertenece),
        ('Pampán', @tipo, @pertenece),
        ('Pampanito', @tipo, @pertenece),
        ('Rangel', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Trujillo', @tipo, @pertenece),
        ('Urdaneta', @tipo, @pertenece),
        ('Valera', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Yaracuy')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Arístides Bastidas', @tipo, @pertenece),
        ('Bolívar', @tipo, @pertenece),
        ('Bruzual', @tipo, @pertenece),
        ('Cocorote', @tipo, @pertenece),
        ('Independencia', @tipo, @pertenece),
        ('La Trinidad', @tipo, @pertenece),
        ('Monge', @tipo, @pertenece),
        ('Nirgua', @tipo, @pertenece),
        ('Páez', @tipo, @pertenece),
        ('Peña', @tipo, @pertenece),
        ('San Felipe', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Urachiche', @tipo, @pertenece),
        ('Veroes', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Zulia')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Bolívar', @tipo, @pertenece),
        ('Baralt', @tipo, @pertenece),
        ('Cabimas', @tipo, @pertenece),
        ('Catatumbo', @tipo, @pertenece),
        ('Colón', @tipo, @pertenece),
        ('Guajira', @tipo, @pertenece),
        ('Padilla', @tipo, @pertenece),
        ('Pulgar', @tipo, @pertenece),
        ('Lossada', @tipo, @pertenece),
        ('Semprún', @tipo, @pertenece),
        ('La Cañada de Urdaneta', @tipo, @pertenece),
        ('Lagunillas', @tipo, @pertenece),
        ('Machiques', @tipo, @pertenece),
        ('Mara', @tipo, @pertenece),
        ('Maracaibo', @tipo, @pertenece),
        ('Miranda', @tipo, @pertenece),
        ('Rosario', @tipo, @pertenece),
        ('San Francisco', @tipo, @pertenece),
        ('Santa Rita', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Valmore Rodríguez', @tipo, @pertenece)
;

-- Parroquias
/*

SET @tipo = 'Parroquia';

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Municipio' AND nombre = 'Libertador')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES

;

*/
-- ++++++++++++++++++++++++++++++++++ PERSONA +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`persona` (`cedula`,`p_nombre`,`s_nombre`,`p_apellido`,`s_apellido`,`fecha_nacimiento`,`sexo`,`estado_civil`,`fk_residencia`)
    VALUES
    ('V-20202706','Beatriz','Aurora','Pinzon','Solano','1995-12-20','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'El Valle') as tablaLugar)),
    ('V-20201309','Armando','Enrique ','Mendoza','Saenz','1991-04-04','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Santa Rosalia') as tablaLugar)),
    ('V-7456987','Hermes','','Pinzon','Galarza','1965-01-01','Masculino','Casado',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Coche') as tablaLugar)),
    ('V-9378192','Julia','','Solano','','1970-02-02','Femenino','Casada',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Coche') as tablaLugar)),
    ('V-8741963','Roberto','','Mendoza','','1968-03-03','Masculino','Casado',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Antimano') as tablaLugar)),
    ('E-84659785','Margarita','','Saenz','','1966-05-05','Femenino','Casada',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Antimano') as tablaLugar)),
    ('E-86265784','Nicolas','','Mora','','1996-06-06','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'La Vega') as tablaLugar)),
    ('V-26805693','Marcela','','Valencia','','1993-07-07','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'El Paraiso') as tablaLugar)),
    ('V-22142357','Daniel','','Valencia','','1990-08-08','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'El Junquito') as tablaLugar)),
    ('V-27005921','Patricia','','Fernandez','','1993-09-09','Femenino','Divorciada',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Las Minas') as tablaLugar)),
    ('V-19654963','Hugo','','Lombardi','','1989-10-10','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'San Juan') as tablaLugar)),
    ('V-28745123','Aura','Maria','Fuentes','','2000-11-12','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Santa Teresa') as tablaLugar)),
    ('E-81997002','Michell','','Doinel','','1992-12-11','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = '23 de Enero') as tablaLugar)),
    ('V-21008702','Maria','','Calderon','','1992-01-06','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'La Pastora') as tablaLugar)),
    ('V-30365214','Jenny','','Garcia','','2001-07-20','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Altagracia') as tablaLugar)),
    ('V-29820142','Mariana','','Valdez','','1999-09-01','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'San Jose') as tablaLugar)),
    ('V-31102965','Freddy','Stewart','Contreras','','2002-01-09','Masculino','Soltero',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'San Bernandino') as tablaLugar)),
    ('E-88296365','Catalina','','Angel','','1998-01-28','Femenino','Soltera',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Candelaria') as tablaLugar))
;

-- ++++++++++++++++++++++++++++++++++ USUARIO +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`usuario` (`username`,`password`,`fk_persona`)
    VALUES
    ('betty','clave0001',
        (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-20202706') as tablapersona)),
    ('marce','clave0002',
        (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-26805693') as tablapersona)),
    ('huguito','clave0003',
        (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-19654963') as tablapersona)),
    ('frances','clave0004',
        (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'E-81997002') as tablapersona)),
    ('auramaria','clave0005',
        (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-28745123') as tablapersona))
;

-- ++++++++++++++++++++++++++++++++++ ROL +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`rol` (`nombre`,`descripcion`)
    VALUES
    ('Administrador','Acceso total del sistema, revisa estados y reportes'),
    ('Empleado','Acceso parcial del sistema, registra locaciones, productos y servicios'),
    ('Cliente','Acceso al servicio del sistema, solicita los eventos, selecciona servicios y tramites')
;

-- ++++++++++++++++++++++++++++++++++ PERMISO +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`permiso` (`nombre`)
    VALUES
    ('Acceso Total'),
    ('Registrar Locacion'),
    ('Registrar Producto'),
    ('Registrar Servicio'),
    ('Registrar Proveedor'),
    ('Generar Reporte'),
    ('Solicitar Servicio'),
    ('Solicitar Tramite'),
    ('Seleccionar Producto'),
    ('Seleccionar Servicio'),
    ('Aprobar Presupuesto'),
    ('Realizar Pago')
;

-- ++++++++++++++++++++++++++++++++++ USUARIO_ROL +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'huguito') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Administrador') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Acceso Total') as tablaPermiso))
;

INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'marce') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Administrador') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Generar Reporte') as tablaPermiso))
;

INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'auramaria') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Empleado') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Registrar Locacion') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'auramaria') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Empleado') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Registrar Producto') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'auramaria') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Empleado') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Registrar Servicio') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'auramaria') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Empleado') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Registrar Proveedor') as tablaPermiso))
;

INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Solicitar Servicio') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Solicitar Tramite') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Seleccionar Producto') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Seleccionar Servicio') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Aprobar Presupuesto') as tablaPermiso))
;
INSERT INTO `arma_tu_fiesta`.`usuario_rol` (`fk_usuario`,`fk_rol`,`fk_permiso`)
    VALUES
    ((SELECT pkUsuario FROM (SELECT id_usuario as pkUsuario FROM arma_tu_fiesta.usuario WHERE username = 'betty') as tablaUsuario),
    (SELECT pkRol FROM (SELECT id_rol as pkRol FROM arma_tu_fiesta.rol WHERE nombre = 'Cliente') as tablaRol),
    (SELECT pkPermiso FROM (SELECT id_Permiso as pkPermiso FROM arma_tu_fiesta.permiso WHERE nombre = 'Realizar Pago') as tablaPermiso))
;

-- ++++++++++++++++++++++++++++++++++ PROVEEDOR +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`proveedor` (`rif`,`razon_social`,`rubro`,`fk_ubicado`)
    VALUES
    ('J-20202706','Kami Productions','Fotografia y video',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'El Recreo') as tablaLugar)),
    ('J-20201309','Ambrosia','Catering ',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'El Cafetal') as tablaLugar)),
    ('J-7456987','Fondo Blanco','Bebidas',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Petare') as tablaLugar)),
    ('J-9378192','Contigo','Mobiliario',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'La Dolorita') as tablaLugar)),
    ('J-8741963','Yutu','Entretenimiento',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'San Pedro') as tablaLugar))
;

-- ++++++++++++++++++++++++++++++++++ EMPLEADO +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`empleado` (`cargo`, `fk_persona`, `fk_proveedor`)
    VALUES
    ('Fotografa',
    (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'E-88296365') as tablapersona),
    (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-20202706') as tablaProveedor)),
    ('Fotografo',
    (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-31102965') as tablapersona),
    (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-20202706') as tablaProveedor)),
    ('Organizador',
    (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'E-81997002') as tablapersona),
    (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-20201309') as tablaProveedor)),
    ('Organizadora',
    (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-26805693') as tablapersona),
    (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-7456987') as tablaProveedor)),
    ('Personal',
    (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-30365214') as tablapersona),
    (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-8741963') as tablaProveedor)),
    ('Personal',
    (SELECT pkPersona FROM (SELECT id_persona as pkPersona FROM arma_tu_fiesta.persona WHERE cedula = 'V-29820142') as tablapersona),
    (SELECT pkProveedor FROM (SELECT id_proveedor as pkProveedor FROM arma_tu_fiesta.proveedor WHERE rif = 'J-8741963') as tablaProveedor))
;

-- ++++++++++++++++++++++++++++++++++ HORARIO +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`horario` (`turno`, `hora_inicio`, `hora_termina`)
    VALUES
    ('Mañana','07:00:00','12:00:00'),
    ('Tarde','13:00:00','18:00:00')
;

-- ++++++++++++++++++++++++++++++++++ RELIGION +++++++++++++++++++++++++++++++++++++++++++++++++++++

INSERT INTO `arma_tu_fiesta`.`religion` (`nombre`)
    VALUES
    ('Cristianismo'),
    ('Judaismo'),
    ('Islamismo'),
    ('Hinduismo'),
    ('Sintoismo')
;