INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`) VALUES ('America', 'Continente');
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`) VALUES ('Africa', 'Continente');
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`) VALUES ('Asia', 'Continente');
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`) VALUES ('Europa', 'Continente');
INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`) VALUES ('Oceania', 'Continente');

INSERT INTO `arma_tu_fiesta`.`lugar` (`nombre`, `tipo`,`fk_pertenece`)
    VALUES (
        'Venezuela',
        'Pais',
        (SELECT `id_lugar` as pkLugar FROM `arma_tu_fiesta`.`lugar` WHERE `tipo`= 'Continente' AND `nombre` = 'America')
    );

SELECT `id_lugar` as pkLugar
    FROM `arma_tu_fiesta`.`lugar`
    WHERE `tipo` = 'Continente' AND `nombre` = 'America';
