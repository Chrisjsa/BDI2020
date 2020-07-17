CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`religion` (
    `id_religion`           INT NOT NULL AUTO_INCREMENT,
    `nombre`                VARCHAR(80) NOT NULL,
    CONSTRAINT `pk_religion` PRIMARY KEY (`id_religion`)
);

INSERT INTO `arma_tu_fiesta`.`religion` (`nombre`)
    VALUES
    ('Cristianismo'),
    ('Judaismo'),
    ('Islamismo'),
    ('Hinduismo'),
    ('Shintoismo')
;