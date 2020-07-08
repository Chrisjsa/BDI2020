CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`lugar` (
    `id_lugar`              INT NOT NULL AUTO_INCREMENT,
    `nombre`                VARCHAR(100) NOT NULL,
    `tipo`                  VARCHAR(45) NOT NULL,
    `fk_pertenece`          INT NULL,
    CONSTRAINT `pk_lugar` PRIMARY KEY (`id_lugar`),
        CONSTRAINT `fk_lugar_lugar` FOREIGN KEY (`fk_pertenece`) REFERENCES `arma_tu_fiesta`.`lugar` (`id_lugar`)
);

-- 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000


