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

-- Municipios Caracas

SET @tipo = 'Municipio';

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Distrito Capital')
    as tablaLugar);

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Libertador', @tipo, @pertenece)
;

SET @pertenece = (SELECT pkLugar FROM
    (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo= 'Estado' AND nombre = 'Miranda')
    as tablaLugar);

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`, `fk_pertenece`)
    VALUES
        ('Baruta', @tipo, @pertenece),
        ('Chacao', @tipo, @pertenece),
        ('El Hatillo', @tipo, @pertenece),
        ('Sucre', @tipo, @pertenece)
;

-- Parroquias Caracas

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