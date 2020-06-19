CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`lugar` (
    `id_lugar` INT NOT NULL,
    `nombre` VARCHAR(45) NOT NULL,
    `tipo` VARCHAR(45) NOT NULL,
    `pertenece_a` INT NOT NULL,
    PRIMARY KEY (`id_lugar`),
        FOREIGN KEY (`pertenece_a`)
        REFERENCES `arma_tu_fiesta`.`lugar` (`id_lugar`)
)

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`persona` (
    `id_persona` INT NOT NULL,
    `cedula` VARCHAR(45) NOT NULL,
    `primer_nombre` VARCHAR(45) NOT NULL,
    `segundo_nombre` VARCHAR(45) NOT NULL,
    `primer_apellido` VARCHAR(45) NOT NULL,
    `segundo_apellido` VARCHAR(45) NOT NULL,
    `fecha_nacimiento` DATE NOT NULL,
    `sexo` VARCHAR(45) NOT NULL,
    `estado_civil` VARCHAR(45) NOT NULL,
    `residencia` INT NOT NULL,
    PRIMARY KEY (`id_persona`),
        FOREIGN KEY (`residencia`)
        REFERENCES `arma_tu_fiesta`.`lugar` (`id_lugar`)
)

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`usuario` (
    `id_usuario` INT NOT NULL,
    `username` VARCHAR(45) NOT NULL,
    `password` VARCHAR(45) NOT NULL,
    `persona` INT NOT NULL,
    PRIMARY KEY (`id_usuario`),
        FOREIGN KEY (`persona`)
        REFERENCES `arma_tu_fiesta`.`persona` (`id_persona`)
)

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`rol` (
    `id_rol` INT NOT NULL,
    `nombre` VARCHAR(45) NOT NULL,
    `descripcion` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_rol`)
)

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`permiso` (
    `id_permiso` INT NOT NULL,
    `nombre` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_permiso`)
)

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`usuario_rol` (
    `id_usuario` INT NOT NULL,
    `id_rol` INT NOT NULL,
    `id_permiso` INT NOT NULL,
    FOREIGN KEY (`id_usuario`) REFERENCES `arma_tu_fiesta`.`usuario` (`id_usuario`),
    FOREIGN KEY (`id_rol`) REFERENCES `arma_tu_fiesta`.`rol` (`id_rol`),
    FOREIGN KEY (`id_permiso`) REFERENCES `arma_tu_fiesta`.`permiso` (`id_permiso`)
)