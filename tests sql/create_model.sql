CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`entidad` (
    `clave_primaria` INT NOT NULL,
    `atributo` VARCHAR(45) NOT NULL,
    `clave_foranea` INT NOT NULL,
    PRIMARY KEY (`id_metodo`),
    FOREIGN KEY (`clave_foranea`) REFERENCES `arma_tu_fiesta`.`entidad_origen` (`clave_primaria_de_la_entidad`)
);
