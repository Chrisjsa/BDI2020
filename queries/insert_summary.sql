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
        ('Lara', @tipo, @pertenece),
        ('Merida', @tipo, @pertenece),
        ('Miranda', @tipo, @pertenece),
        ('Monagas', @tipo, @pertenece),
        ('Nueva Esparta', @tipo, @pertenece),
        ('Portuguesa', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('Tachira', @tipo, @pertenece),
        ('Trujillo', @tipo, @pertenece),
        ('Vargas', @tipo, @pertenece),
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
        ('Alto Orinoco (La Esmeralda)', @tipo, @pertenece),
        ('Atabapo (San Fernando de Atabapo)', @tipo, @pertenece),
        ('Atures (Puerto Ayacucho)', @tipo, @pertenece),
        ('Autana (Isla Ratón)', @tipo, @pertenece),
        ('Manapiare (San Juan de Manapiare)', @tipo, @pertenece),
        ('Maroa (Maroa)', @tipo, @pertenece),
        ('Río Negro (San Carlos de Río Negro)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Anzoategui')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Anaco (Anaco)', @tipo, @pertenece),
        ('Aragua (Aragua de Barcelona)', @tipo, @pertenece),
        ('Bolívar (Barcelona)', @tipo, @pertenece),
        ('Bruzual (Clarines)', @tipo, @pertenece),
        ('Cajigal (Onoto)', @tipo, @pertenece),
        ('Carvajal (Valle de Guanape)', @tipo, @pertenece),
        ('Freites (Cantaura)', @tipo, @pertenece),
        ('Guanipa (San José de Guanipa)', @tipo, @pertenece),
        ('Guanta (Guanta)', @tipo, @pertenece),
        ('Independencia (Soledad)', @tipo, @pertenece),
        ('Libertad (San Mateo)', @tipo, @pertenece),
        ('McGregor (El Chaparro)', @tipo, @pertenece),
        ('Miranda (Pariaguán)', @tipo, @pertenece),
        ('Monagas (Mapire)', @tipo, @pertenece),
        ('Peñalver (Puerto Píritu)', @tipo, @pertenece),
        ('Píritu (Píritu)', @tipo, @pertenece),
        ('San Juan de Capistrano (Boca de Uchire)', @tipo, @pertenece),
        ('Santa Ana (Santa Ana)', @tipo, @pertenece),
        ('Simón Rodríguez (El Tigre)', @tipo, @pertenece),
        ('Sotillo (Puerto La Cruz)', @tipo, @pertenece),
        ('Urbaneja (Lechería)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Apure')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Achaguas (Achaguas)', @tipo, @pertenece),
        ('Biruaca (Biruaca)', @tipo, @pertenece),
        ('Camejo (San Juan de Payara)', @tipo, @pertenece),
        ('Muñoz (Bruzual)', @tipo, @pertenece),
        ('Páez (Guasdualito)', @tipo, @pertenece),
        ('Rómulo Gallegos (Elorza)', @tipo, @pertenece),
        ('San Fernando (San Fernando de Apure)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Aragua')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Alcántara (Santa Rita)', @tipo, @pertenece),
        ('Bolívar (San Mateo)', @tipo, @pertenece),
        ('Camatagua (Camatagua)', @tipo, @pertenece),
        ('Girardot (Maracay)', @tipo, @pertenece),
        ('Iragorry (El Limón)', @tipo, @pertenece),
        ('Lamas (Santa Cruz de Aragua)', @tipo, @pertenece),
        ('Libertador (Palo Negro)', @tipo, @pertenece),
        ('Mariño (Turmero)', @tipo, @pertenece),
        ('Michelena (Las Tejerías)', @tipo, @pertenece),
        ('Ocumare de la Costa de Oro (Ocumare de la Costa)', @tipo, @pertenece),
        ('Revenga (El Consejo)', @tipo, @pertenece),
        ('Ribas (La Victoria)', @tipo, @pertenece),
        ('San Casimiro (San Casimiro)', @tipo, @pertenece),
        ('San Sebastián (San Sebastián de Los Reyes)', @tipo, @pertenece),
        ('Sucre (Cagua)', @tipo, @pertenece),
        ('Tovar (Colonia Tovar)', @tipo, @pertenece),
        ('Urdaneta (Barbacoas)', @tipo, @pertenece),
        ('Zamora (Villa de Cura)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Barinas')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Alberto Arvelo Torrealba (Sabaneta)', @tipo, @pertenece),
        ('Andrés Eloy Blanco (El Cantón)', @tipo, @pertenece),
        ('Antonio José de Sucre (Socopó)', @tipo, @pertenece),
        ('Arismendi (Arismendi)', @tipo, @pertenece),
        ('Barinas (Barinas)', @tipo, @pertenece),
        ('Bolívar (Barinitas)', @tipo, @pertenece),
        ('Cruz Paredes (Barrancas)', @tipo, @pertenece),
        ('Ezequiel Zamora (Santa Bárbara)', @tipo, @pertenece),
        ('Obispos (Obispos)', @tipo, @pertenece),
        ('Pedraza (Ciudad Bolivia)', @tipo, @pertenece),
        ('Rojas (Libertad)', @tipo, @pertenece),
        ('Sosa (Ciudad de Nutrias)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Bolivar')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Angostura (Ciudad Piar)', @tipo, @pertenece),
        ('Angostura del Orinoco (Ciudad Bolívar)', @tipo, @pertenece),
        ('Caroní (Ciudad Guayana)', @tipo, @pertenece),
        ('Cedeño (Caicara del Orinoco)', @tipo, @pertenece),
        ('Chien (El Palmar)', @tipo, @pertenece),
        ('El Callao (El Callao)', @tipo, @pertenece),
        ('Gran Sabana (Santa Elena de Uairén)', @tipo, @pertenece),
        ('Piar (Upata)', @tipo, @pertenece),
        ('Roscio (Guasipati)', @tipo, @pertenece),
        ('Sifontes (El Dorado)', @tipo, @pertenece),
        ('Sucre (Maripa)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Carabobo')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Bejuma (Bejuma)', @tipo, @pertenece),
        ('Carlos Arvelo (Güigüe)', @tipo, @pertenece),
        ('Diego Ibarra (Mariara)', @tipo, @pertenece),
        ('Guacara (Guacara)', @tipo, @pertenece),
        ('Libertador (Tocuyito)', @tipo, @pertenece),
        ('Los Guayos (Los Guayos)', @tipo, @pertenece),
        ('Miranda (Miranda)', @tipo, @pertenece),
        ('Mora (Morón)', @tipo, @pertenece),
        ('Montalbán (Montalbán)', @tipo, @pertenece),
        ('Naguanagua ( Naguanagua)', @tipo, @pertenece),
        ('Puerto Cabello (Puerto Cabello)', @tipo, @pertenece),
        ('San Diego (San Diego)', @tipo, @pertenece),
        ('San Joaquín (San Joaquín)', @tipo, @pertenece),
        ('Valencia (Valencia)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Cojedes')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Anzoátegui (Cojedes)', @tipo, @pertenece),
        ('Tinaquillo (Tinaquillo)', @tipo, @pertenece),
        ('Girardot (El Baúl)', @tipo, @pertenece),
        ('Lima Blanco (Macapo)', @tipo, @pertenece),
        ('Pao de San Juan Bautista (El Pao)', @tipo, @pertenece),
        ('Ricaurte (Libertad)', @tipo, @pertenece),
        ('Rómulo Gallegos (Las Vegas)', @tipo, @pertenece),
        ('Ezequiel Zamora (San Carlos)', @tipo, @pertenece),
        ('Tinaco (Tinaco)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Delta Amacuro')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Antonio Díaz (Curiapo)', @tipo, @pertenece),
        ('Casacoima (Sierra Imataca)', @tipo, @pertenece),
        ('Pedernales (Pedernales)', @tipo, @pertenece),
        ('Tucupita (Tucupita)', @tipo, @pertenece)
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
        ('Acosta (San Juan de los Cayos)', @tipo, @pertenece),
        ('Bolívar (San Luis)', @tipo, @pertenece),
        ('Buchivacoa (Capatárida)', @tipo, @pertenece),
        ('Carirubana (Punto Fijo)', @tipo, @pertenece),
        ('Colina (La Vela de Coro)', @tipo, @pertenece),
        ('Dabajuro (Dabajuro)', @tipo, @pertenece),
        ('Democracia (Pedregal)', @tipo, @pertenece),
        ('Falcón (Pueblo Nuevo)', @tipo, @pertenece),
        ('Federación (Churuguara)', @tipo, @pertenece),
        ('Iturriza (Chichiriviche)', @tipo, @pertenece),
        ('Jacura (Jacura)', @tipo, @pertenece),
        ('Los Taques (Santa Cruz de Los Taques)', @tipo, @pertenece),
        ('Manaure (Yaracal)', @tipo, @pertenece),
        ('Mauroa (Mene de Mauroa)', @tipo, @pertenece),
        ('Miranda (Santa Ana de Coro)', @tipo, @pertenece),
        ('Palmasola (Palmasola)', @tipo, @pertenece),
        ('Petit (Cabure)', @tipo, @pertenece),
        ('Píritu (Píritu)', @tipo, @pertenece),
        ('San Francisco (Mirimire)', @tipo, @pertenece),
        ('Sucre (La Cruz de Taratara)', @tipo, @pertenece),
        ('Silva (Tucacas)', @tipo, @pertenece),
        ('Tocópero (Tocópero)', @tipo, @pertenece),
        ('Unión (Santa Cruz de Bucaral)', @tipo, @pertenece),
        ('Urumaco (Urumaco)', @tipo, @pertenece),
        ('Zamora (Puerto Cumarebo)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Guarico')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Camaguán (Camaguán)', @tipo, @pertenece),
        ('Chaguaramas (Chaguaramas)', @tipo, @pertenece),
        ('El Socorro (El Socorro)', @tipo, @pertenece),
        ('Las Mercedes (Las Mercedes)', @tipo, @pertenece),
        ('Leonardo Infante (Valle de La Pascua)', @tipo, @pertenece),
        ('Julián Mellado (El Sombrero)', @tipo, @pertenece),
        ('Francisco de Miranda (Calabozo)', @tipo, @pertenece),
        ('Monagas (Altagracia de Orituco)', @tipo, @pertenece),
        ('Ortiz (Ortiz)', @tipo, @pertenece),
        ('Ribas (Tucupido)', @tipo, @pertenece),
        ('Roscio (San Juan de Los Morros)', @tipo, @pertenece),
        ('San Gerónimo de Guayabal (Guayabal)', @tipo, @pertenece),
        ('San José de Guaribe (San José de Guaribe)', @tipo, @pertenece),
        ('Santa María de Ipire (Santa María de Ipire)', @tipo, @pertenece),
        ('Zaraza (Zaraza)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'La Guaira')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Vargas (La Guaira)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Lara')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Blanco (Sanare)', @tipo, @pertenece),
        ('Crespo (Duaca)', @tipo, @pertenece),
        ('Iribarren (Barquisimeto)', @tipo, @pertenece),
        ('Jiménez (Quibor)', @tipo, @pertenece),
        ('Morán (El Tocuyo)', @tipo, @pertenece),
        ('Palavecino (Cabudare)', @tipo, @pertenece),
        ('Planas (Sarare)', @tipo, @pertenece),
        ('Torres (Carora)', @tipo, @pertenece),
        ('Urdaneta (Siquisique)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Merida')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Adriani (El Vigía)', @tipo, @pertenece),
        ('Andrés Bello (La Azulita)', @tipo, @pertenece),
        ('Aricagua (Aricagua)', @tipo, @pertenece),
        ('Briceño (Torondoy)', @tipo, @pertenece),
        ('Chacón (Canaguá)', @tipo, @pertenece),
        ('Campo Elías (Ejido)', @tipo, @pertenece),
        ('Dávila (Bailadores)', @tipo, @pertenece),
        ('Febres Cordero (Nueva Bolivia)', @tipo, @pertenece),
        ('Guaraque (Guaraque)', @tipo, @pertenece),
        ('Libertador (Mérida)', @tipo, @pertenece),
        ('Miranda (Timotes)', @tipo, @pertenece),
        ('Noguera (Santa María de Caparo)', @tipo, @pertenece),
        ('Parra Olmedo (Tucaní)', @tipo, @pertenece),
        ('Pinto Salinas (Santa Cruz de Mora)', @tipo, @pertenece),
        ('Pueblo Llano (Pueblo Llano)', @tipo, @pertenece),
        ('Quintero (Santo Domingo)', @tipo, @pertenece),
        ('Rangel (Mucuchíes)', @tipo, @pertenece),
        ('Ramos de Lora (Santa Elena de Arenales)', @tipo, @pertenece),
        ('Salas (Arapuey)', @tipo, @pertenece),
        ('Marquina (Tabay)', @tipo, @pertenece),
        ('Sucre (Lagunillas)', @tipo, @pertenece),
        ('Tovar (Tovar)', @tipo, @pertenece),
        ('Zea (Zea)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Miranda')
    as tablaLugar);

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Acevedo (Caucagua)', @tipo, @pertenece),
        ('Andrés Bello (San José de Barlovento)', @tipo, @pertenece),
        ('Baruta (Baruta)', @tipo, @pertenece),
        ('Brión (Higuerote)', @tipo, @pertenece),
        ('Bolívar (San Francisco de Yare)', @tipo, @pertenece),
        ('Buroz (Mamporal)', @tipo, @pertenece),
        ('Carrizal (Carrizal)', @tipo, @pertenece),
        ('Chacao (Chacao)', @tipo, @pertenece),
        ('Cristóbal Rojas (Charallave)', @tipo, @pertenece),
        ('El Hatillo (El Hatillo)', @tipo, @pertenece),
        ('Guaicaipuro (Los Teques)', @tipo, @pertenece),
        ('Gual (Cúpira)', @tipo, @pertenece),
        ('Independencia (Santa Teresa del Tuy)', @tipo, @pertenece),
        ('Lander (Ocumare del Tuy)', @tipo, @pertenece),
        ('Los Salias (San Antonio de los Altos)', @tipo, @pertenece),
        ('Páez (Río Chico)', @tipo, @pertenece),
        ('Paz Castillo (Santa Lucía)', @tipo, @pertenece),
        ('Plaza (Guarenas)', @tipo, @pertenece),
        ('Sucre (Petare)', @tipo, @pertenece),
        ('Urdaneta (Cúa)', @tipo, @pertenece),
        ('Zamora (Guatire)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Monagas')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Acosta (San Antonio de Capayacuar)', @tipo, @pertenece),
        ('Aguasay (Aguasay)', @tipo, @pertenece),
        ('Bolívar (Caripito)', @tipo, @pertenece),
        ('Caripe (Caripe)', @tipo, @pertenece),
        ('Cedeño (Caicara de Maturín)', @tipo, @pertenece),
        ('Libertador (Temblador)', @tipo, @pertenece),
        ('Maturín (Maturín)', @tipo, @pertenece),
        ('Piar (Aragua de Maturín)', @tipo, @pertenece),
        ('Punceres (Quiriquire)', @tipo, @pertenece),
        ('Santa Bárbara (Santa Bárbara)', @tipo, @pertenece),
        ('Sotillo (Barrancas del Orinoco)', @tipo, @pertenece),
        ('Uracoa (Uracoa)', @tipo, @pertenece),
        ('Zamora (Punta de Mata)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Nueva Esparta')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Antolín del Campo (Paraguachí)', @tipo, @pertenece),
        ('Arismendi (La Asunción)', @tipo, @pertenece),
        ('Díaz (San Juan Bautista)', @tipo, @pertenece),
        ('García (El Valle)', @tipo, @pertenece),
        ('Gómez (Santa Ana)', @tipo, @pertenece),
        ('Macanao (Boca de Río)', @tipo, @pertenece),
        ('Maneiro (Pampatar)', @tipo, @pertenece),
        ('Marcano (Juan Griego)', @tipo, @pertenece),
        ('Mariño (Porlamar)', @tipo, @pertenece),
        ('Tubores (Punta de Piedras)', @tipo, @pertenece),
        ('Villalba (San Pedro de Coche)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Portuguesa')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Agua Blanca (Agua Blanca)', @tipo, @pertenece),
        ('Araure (Araure)', @tipo, @pertenece),
        ('Esteller (Píritu)', @tipo, @pertenece),
        ('Guanare (Guanare)', @tipo, @pertenece),
        ('Guanarito (Guanarito)', @tipo, @pertenece),
        ('Ospino (Ospino)', @tipo, @pertenece),
        ('Páez (Acarigua)', @tipo, @pertenece),
        ('Papelón (Papelón)', @tipo, @pertenece),
        ('San Genaro de Boconoíto (Boconoíto)', @tipo, @pertenece),
        ('San Rafael de Onoto (San Rafael de Onoto)', @tipo, @pertenece),
        ('Santa Rosalía (El Playón)', @tipo, @pertenece),
        ('Sucre (Biscucuy)', @tipo, @pertenece),
        ('Turén (Villa Bruzual)', @tipo, @pertenece),
        ('Unda (Chabasquén)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Sucre')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Arismendi (Río Caribe)', @tipo, @pertenece),
        ('Benítez (El Pilar)', @tipo, @pertenece),
        ('Bermúdez (Carúpano)', @tipo, @pertenece),
        ('Blanco (Casanay)', @tipo, @pertenece),
        ('Bolívar (Marigüitar)', @tipo, @pertenece),
        ('Cajigal (Yaguaraparo)', @tipo, @pertenece),
        ('Cruz Salmerón Acosta (Araya)', @tipo, @pertenece),
        ('Libertador (Tunapuy)', @tipo, @pertenece),
        ('Mariño (Irapa)', @tipo, @pertenece),
        ('Mata (San José de Aerocuar)', @tipo, @pertenece),
        ('Mejía (San Antonio del Golfo)', @tipo, @pertenece),
        ('Montes (Cumanacoa)', @tipo, @pertenece),
        ('Ribero (Cariaco)', @tipo, @pertenece),
        ('Sucre (Cumaná)', @tipo, @pertenece),
        ('Valdez (Güiria)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Tachira')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Andrés Bello (Cordero)', @tipo, @pertenece),
        ('Ayacucho (Colón)', @tipo, @pertenece),
        ('Bolívar (San Antonio del Táchira)', @tipo, @pertenece),
        ('Cárdenas (Táriba)', @tipo, @pertenece),
        ('Córdoba (Santa Ana de Táchira)', @tipo, @pertenece),
        ('Fernández (San Rafael del Piñal)', @tipo, @pertenece),
        ('Guásimos (Palmira)', @tipo, @pertenece),
        ('Hevia (La Fría)', @tipo, @pertenece),
        ('Independencia (Capacho Nuevo)', @tipo, @pertenece),
        ('Jáuregui (La Grita)', @tipo, @pertenece),
        ('Junín (Rubio)', @tipo, @pertenece),
        ('Libertad (Capacho Viejo)', @tipo, @pertenece),
        ('Libertador (Abejales)', @tipo, @pertenece),
        ('Lobatera (Lobatera)', @tipo, @pertenece),
        ('Maldonado (La Tendida)', @tipo, @pertenece),
        ('Michelena (Michelena)', @tipo, @pertenece),
        ('Miranda (San José de Bolívar)', @tipo, @pertenece),
        ('Panamericano (Coloncito)', @tipo, @pertenece),
        ('Rómulo Costa (Las Mesas)', @tipo, @pertenece),
        ('San Cristóbal (San Cristóbal)', @tipo, @pertenece),
        ('San Judas Tadeo (Umuquena)', @tipo, @pertenece),
        ('Seboruco (Seboruco)', @tipo, @pertenece),
        ('Simón Rodríguez (San Simón)', @tipo, @pertenece),
        ('Sucre (Queniquea)', @tipo, @pertenece),
        ('Torbes (San Josecito)', @tipo, @pertenece),
        ('Urdaneta (Delicias)', @tipo, @pertenece),
        ('Ureña (Ureña)', @tipo, @pertenece),
        ('Uribante (Pregonero)', @tipo, @pertenece),
        ('Vargas (El Cobre)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Trujillo')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Andrés Bello (Santa Isabel)', @tipo, @pertenece),
        ('Boconó (Boconó)', @tipo, @pertenece),
        ('Bolívar (Sabana Grande)', @tipo, @pertenece),
        ('Candelaria (Chejendé)', @tipo, @pertenece),
        ('Carache (Carache)', @tipo, @pertenece),
        ('Campos Elías (Campo Elías)', @tipo, @pertenece),
        ('Carvajal (Carvajal)', @tipo, @pertenece),
        ('Escuque (Escuque)', @tipo, @pertenece),
        ('La Ceiba (Santa Apolonia)', @tipo, @pertenece),
        ('Márquez Cañizales (El Paradero)', @tipo, @pertenece),
        ('Miranda (El Dividive)', @tipo, @pertenece),
        ('Monte Carmelo (Monte Carmelo)', @tipo, @pertenece),
        ('Motatán (Motatán)', @tipo, @pertenece),
        ('Pampán (Pampán)', @tipo, @pertenece),
        ('Pampanito (Pampanito)', @tipo, @pertenece),
        ('Rangel (Betijoque)', @tipo, @pertenece),
        ('Sucre (Sabana de Mendoza)', @tipo, @pertenece),
        ('Trujillo (Trujillo)', @tipo, @pertenece),
        ('Urdaneta (La Quebrada)', @tipo, @pertenece),
        ('Valera (Valera)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Yaracuy')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Arístides Bastidas (San Pablo)', @tipo, @pertenece),
        ('Bolívar (Aroa)', @tipo, @pertenece),
        ('Bruzual (Chivacoa)', @tipo, @pertenece),
        ('Cocorote (Cocorote)', @tipo, @pertenece),
        ('Independencia (Independencia)', @tipo, @pertenece),
        ('La Trinidad (Boraure)', @tipo, @pertenece),
        ('Monge (Yumare)', @tipo, @pertenece),
        ('Nirgua (Nirgua)', @tipo, @pertenece),
        ('Páez (Sabana de Parra)', @tipo, @pertenece),
        ('Peña (Yaritagua)', @tipo, @pertenece),
        ('San Felipe (San Felipe)', @tipo, @pertenece),
        ('Sucre (Guama)', @tipo, @pertenece),
        ('Urachiche (Urachiche)', @tipo, @pertenece),
        ('Veroes (Farriar)', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Zulia')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Bolívar (Tía Juana)', @tipo, @pertenece),
        ('Baralt (San Timoteo)', @tipo, @pertenece),
        ('Cabimas (Cabimas)', @tipo, @pertenece),
        ('Catatumbo (Encontrados)', @tipo, @pertenece),
        ('Colón (San Carlos del Zulia)', @tipo, @pertenece),
        ('Guajira (Sinamaica)', @tipo, @pertenece),
        ('Padilla (El Toro)', @tipo, @pertenece),
        ('Pulgar (Pueblo Nuevo-El Chivo)', @tipo, @pertenece),
        ('Lossada (La Concepción)', @tipo, @pertenece),
        ('Semprún (Casigua El Cubo)', @tipo, @pertenece),
        ('La Cañada de Urdaneta (Concepción)', @tipo, @pertenece),
        ('Lagunillas (Ciudad Ojeda)', @tipo, @pertenece),
        ('Machiques (Machiques)', @tipo, @pertenece),
        ('Mara (San Rafael del Moján)', @tipo, @pertenece),
        ('Maracaibo (Maracaibo)', @tipo, @pertenece),
        ('Miranda (Los Puertos de Altagracia)', @tipo, @pertenece),
        ('Rosario (La Villa del Rosario)', @tipo, @pertenece),
        ('San Francisco (San Francisco)', @tipo, @pertenece),
        ('Santa Rita (Santa Rita)', @tipo, @pertenece),
        ('Sucre (Bobures)', @tipo, @pertenece),
        ('Valmore Rodríguez (Bachaquero)', @tipo, @pertenece)
;

-- Parroquias
/*

SET @tipo = 'Parroquia';

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Municipio' AND nombre = 'Libertador')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Santa Rosalia', @tipo, @pertenece),
        ('El Valle', @tipo, @pertenece),
        ('Coche', @tipo, @pertenece),
        ('Caricuao', @tipo, @pertenece),
        ('Macarao', @tipo, @pertenece),
        ('Antimano', @tipo, @pertenece),
        ('La Vega', @tipo, @pertenece),
        ('El Paraiso', @tipo, @pertenece),
        ('El Junquito', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece),
        ('San Juan', @tipo, @pertenece),
        ('Santa Teresa', @tipo, @pertenece),
        ('23 de Enero', @tipo, @pertenece),
        ('La Pastora', @tipo, @pertenece),
        ('Altagracia', @tipo, @pertenece),
        ('San Jose', @tipo, @pertenece),
        ('San Bernandino', @tipo, @pertenece),
        ('Catedral', @tipo, @pertenece),
        ('Candelaria', @tipo, @pertenece),
        ('San Agustin', @tipo, @pertenece),
        ('El Recreo', @tipo, @pertenece),
        ('San Pedro', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Municipio' AND nombre = 'Baruta')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('El Cafetal', @tipo, @pertenece),
        ('Las Minas', @tipo, @pertenece),
        ('Nuestra Señora del Rosario', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Municipio' AND nombre = 'Chacao')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Chacao', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Municipio' AND nombre = 'El Hatillo')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Santa Rosalía de Palermo', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Municipio' AND nombre = 'Sucre')
    as tablaLugar);
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Leoncio Martinez', @tipo, @pertenece),
        ('Petare', @tipo, @pertenece),
        ('Caucagüita', @tipo, @pertenece),
        ('Fila de Mariches', @tipo, @pertenece),
        ('La Dolorita', @tipo, @pertenece)
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