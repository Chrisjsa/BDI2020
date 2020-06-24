CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`lugar` (
    `id_lugar`              INT NOT NULL AUTO_INCREMENT,
    `nombre`                VARCHAR(45) NOT NULL,
    `tipo`                  VARCHAR(45) NOT NULL,
    `fk_pertenece`          INT NULL,
    PRIMARY KEY (`id_lugar`),
        FOREIGN KEY (`fk_pertenece`) REFERENCES `arma_tu_fiesta`.`lugar` (`id_lugar`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`persona` (
    `id_persona`            INT NOT NULL AUTO_INCREMENT,
    `cedula`                VARCHAR(45) NOT NULL UNIQUE,
    `p_nombre`              VARCHAR(45) NOT NULL,
    `s_nombre`              VARCHAR(45) NULL,
    `p_apellido`            VARCHAR(45) NOT NULL,
    `s_apellido`            VARCHAR(45) NULL,
    `fecha_nacimiento`      DATE NOT NULL,
    `sexo`                  VARCHAR(45) NOT NULL,
    `estado_civil`          VARCHAR(45) NOT NULL,
    `fk_residencia`         INT NOT NULL,
    PRIMARY KEY (`id_persona`),
        FOREIGN KEY (`fk_residencia`) REFERENCES `arma_tu_fiesta`.`lugar` (`id_lugar`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`usuario` (
    `id_usuario`            INT NOT NULL AUTO_INCREMENT,
    `username`              VARCHAR(45) NOT NULL,
    `password`              VARCHAR(45) NOT NULL,
    `fk_persona`            INT NOT NULL,
    PRIMARY KEY (`id_usuario`),
        FOREIGN KEY (`fk_persona`) REFERENCES `arma_tu_fiesta`.`persona` (`id_persona`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`rol` (
    `id_rol`                INT NOT NULL AUTO_INCREMENT,
    `nombre`                VARCHAR(45) NOT NULL,
    `descripcion`           VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_rol`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`permiso` (
    `id_permiso`            INT NOT NULL AUTO_INCREMENT,
    `nombre`                VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_permiso`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`usuario_rol` (
    `id_usuario_rol`        INT NOT NULL AUTO_INCREMENT,
    `fk_usuario`            INT NOT NULL,
    `fk_rol`                INT NOT NULL,
    `fk_permiso`            INT NOT NULL,
    PRIMARY KEY (`id_usuario_rol`),
        FOREIGN KEY (`fk_usuario`) REFERENCES `arma_tu_fiesta`.`usuario` (`id_usuario`),
        FOREIGN KEY (`fk_rol`) REFERENCES `arma_tu_fiesta`.`rol` (`id_rol`),
        FOREIGN KEY (`fk_permiso`) REFERENCES `arma_tu_fiesta`.`permiso` (`id_permiso`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`proveedor` (
    `id_proveedor`          INT NOT NULL AUTO_INCREMENT,
    `rif`                   VARCHAR(45) NOT NULL UNIQUE,
    `razon_social`          VARCHAR(45) NOT NULL,
    `tipo`                  VARCHAR(45) NOT NULL,
    `fk_ubicado`            INT NOT NULL,
    PRIMARY KEY (`id_proveedor`),
        FOREIGN KEY (`fk_ubicado`) REFERENCES `arma_tu_fiesta`.`lugar` (`id_lugar`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`empleado` (
    `id_empleado`           INT NOT NULL AUTO_INCREMENT,
    `cargo`                 VARCHAR(45) NOT NULL,
    `fk_persona`            INT NOT NULL,
    `fk_proveedor`          INT NOT NULL,
    PRIMARY KEY (`id_empleado`),
        FOREIGN KEY (`fk_persona`) REFERENCES `arma_tu_fiesta`.`persona` (`id_persona`),
        FOREIGN KEY (`fk_proveedor`) REFERENCES `arma_tu_fiesta`.`proveedor` (`id_proveedor`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`coordenada` (
    `id_coordenada`         INT NOT NULL AUTO_INCREMENT,
    `posicion_x`            VARCHAR(45) NOT NULL,
    `posicion_y`            VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_coordenada`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`horario` (
    `id_horario`            INT NOT NULL AUTO_INCREMENT,
    `turno`                 VARCHAR(45) NOT NULL,
    `hora_inicio`           TIME NOT NULL,
    `hora_termina`          TIME NOT NULL,
    PRIMARY KEY (`id_horario`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`religion` (
    `id_religion`           INT NOT NULL AUTO_INCREMENT,
    `nombre`                VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_religion`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`locacion` (
    `id_locacion`           INT NOT NULL AUTO_INCREMENT,
    `nombre`                VARCHAR(45) NOT NULL,
    `fk_localizacion`       INT NOT NULL,
    PRIMARY KEY (`id_locacion`),
        FOREIGN KEY (`fk_localizacion`) REFERENCES `arma_tu_fiesta`.`lugar` (`id_lugar`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`jefatura` (
    `fk_jefatura`           INT NOT NULL,
    `jefe_civil`            VARCHAR(45) NOT NULL,
        FOREIGN KEY (`fk_jefatura`) REFERENCES `arma_tu_fiesta`.`locacion` (`id_locacion`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`templo` (
    `fk_templo`             INT NOT NULL,
    `parroco`               VARCHAR(45) NOT NULL,
    `web`                   VARCHAR(45) NOT NULL,
    `fk_religion`           INT NOT NULL,
    `fk_horario`            INT NOT NULL,
        FOREIGN KEY (`fk_templo`) REFERENCES `arma_tu_fiesta`.`locacion` (`id_locacion`),
        FOREIGN KEY (`fk_religion`) REFERENCES `arma_tu_fiesta`.`religion` (`id_religion`),
        FOREIGN KEY (`fk_horario`) REFERENCES `arma_tu_fiesta`.`horario` (`id_horario`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`salon_de_fiesta` (
    `fk_salon`              INT NOT NULL,
    `descripcion`           VARCHAR(45) NOT NULL,
    `tamaño`                VARCHAR(45) NOT NULL,
    `capacidad_personas`    INT NOT NULL,
    `fk_coordenada`         INT NOT NULL,
        FOREIGN KEY (`fk_salon`) REFERENCES `arma_tu_fiesta`.`locacion` (`id_locacion`),
        FOREIGN KEY (`fk_coordenada`) REFERENCES `arma_tu_fiesta`.`coordenada` (`id_coordenada`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`punto_de_referencia` (
    `id_punto`              INT NOT NULL AUTO_INCREMENT,
    `descripcion`           VARCHAR(45) NOT NULL,
    `fk_salon_de_fiesta`    INT NOT NULL,
    PRIMARY KEY (`id_punto`),
        FOREIGN KEY (`fk_salon_de_fiesta`) REFERENCES `arma_tu_fiesta`.`locacion` (`id_locacion`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`caracteristica` (
    `id_caracteristica`     INT NOT NULL AUTO_INCREMENT,
    `nombre`                VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_caracteristica`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`caracteristica_salon` (
    `id_caract_salon`       INT NOT NULL AUTO_INCREMENT,
    `fk_salon_de_fiesta`    INT NOT NULL,
    `fk_caracteristica`     INT NOT NULL,
    `cantidad`              INT NOT NULL,
    PRIMARY KEY (`id_caract_salon`),
        FOREIGN KEY (`fk_salon_de_fiesta`) REFERENCES `arma_tu_fiesta`.`locacion` (`id_locacion`),
        FOREIGN KEY (`fk_caracteristica`) REFERENCES `arma_tu_fiesta`.`caracteristica` (`id_caracteristica`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`telefono` (
    `id_telefono`           INT NOT NULL AUTO_INCREMENT,
    `telefonica`            VARCHAR(45) NOT NULL,
    `numero`                VARCHAR(45) NOT NULL,
    `fk_persona`            INT NULL,
    `fk_proveedor`          INT NULL,
    `fk_locacion`           INT NULL,
    PRIMARY KEY (`id_telefono`),
        FOREIGN KEY (`fk_persona`) REFERENCES `arma_tu_fiesta`.`persona` (`id_persona`),
        FOREIGN KEY (`fk_proveedor`) REFERENCES `arma_tu_fiesta`.`proveedor` (`id_proveedor`),
        FOREIGN KEY (`fk_locacion`) REFERENCES `arma_tu_fiesta`.`locacion` (`id_locacion`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`email` (
    `id_email`              INT NOT NULL AUTO_INCREMENT,
    `correo`                VARCHAR(45) NOT NULL,
    `dominio`               VARCHAR(45) NOT NULL,
    `fk_persona`            INT NULL,
    `fk_proveedor`          INT NULL,
    `fk_locacion`           INT NULL,
    PRIMARY KEY (`id_email`),
        FOREIGN KEY (`fk_persona`) REFERENCES `arma_tu_fiesta`.`persona` (`id_persona`),
        FOREIGN KEY (`fk_proveedor`) REFERENCES `arma_tu_fiesta`.`proveedor` (`id_proveedor`),
        FOREIGN KEY (`fk_locacion`) REFERENCES `arma_tu_fiesta`.`locacion` (`id_locacion`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`tramite_carta` (
    `id_tramite_carta`      INT NOT NULL AUTO_INCREMENT,
    `estatus`               VARCHAR(45) NOT NULL,
    `fk_jefatura`           INT NOT NULL,
    PRIMARY KEY (`id_tramite_carta`),
        FOREIGN KEY (`fk_jefatura`) REFERENCES `arma_tu_fiesta`.`locacion` (`id_locacion`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`persona_tramite` (
    `fk_persona`            INT NOT NULL,
    `fk_tramite_carta`      INT NOT NULL,
    `relacion`              VARCHAR(45) NOT NULL,
        FOREIGN KEY (`fk_persona`) REFERENCES `arma_tu_fiesta`.`persona` (`id_persona`),
        FOREIGN KEY (`fk_tramite_carta`) REFERENCES `arma_tu_fiesta`.`tramite_carta` (`id_tramite_carta`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`producto` (
    `id_producto`           INT NOT NULL AUTO_INCREMENT,
    `categoria`             VARCHAR(45) NOT NULL,
    `nombre`                VARCHAR(45) NOT NULL,
    `descripcion`           VARCHAR(45) NOT NULL,
    `precio`                NUMERIC NOT NULL,
    `fk_agregado_por`       INT NOT NULL,
    PRIMARY KEY (`id_producto`),
        FOREIGN KEY (`fk_agregado_por`) REFERENCES `arma_tu_fiesta`.`rol` (`id_rol`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`producto_producto` (
    `id_producto_producto`  INT NOT NULL AUTO_INCREMENT,
    `fk_compuesto`          INT NOT NULL,
    `fk_compone`            INT NOT NULL,
    PRIMARY KEY (`id_producto_producto`),
        FOREIGN KEY (`fk_compuesto`) REFERENCES `arma_tu_fiesta`.`producto` (`id_producto`),
        FOREIGN KEY (`fk_compone`) REFERENCES `arma_tu_fiesta`.`producto` (`id_producto`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`servicio_tercerizado` (
    `id_servicio`           INT NOT NULL AUTO_INCREMENT,
    `categoria`             VARCHAR(45) NOT NULL,
    `nombre`                VARCHAR(45) NOT NULL,
    `descripcion`           VARCHAR(45) NOT NULL,
    `fk_agregado_por`       INT NOT NULL,
    PRIMARY KEY (`id_servicio`),
        FOREIGN KEY (`fk_agregado_por`) REFERENCES `arma_tu_fiesta`.`rol` (`id_rol`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`imagen` (
    `id_imagen`             INT NOT NULL AUTO_INCREMENT,
    `fuente`                VARCHAR(45) NOT NULL,
    `fk_salon`              INT NULL,
    `fk_producto`           INT NULL,
    `fk_servicio`           INT NULL,
    PRIMARY KEY (`id_imagen`),
        FOREIGN KEY (`fk_salon`) REFERENCES `arma_tu_fiesta`.`locacion` (`id_locacion`),
        FOREIGN KEY (`fk_producto`) REFERENCES `arma_tu_fiesta`.`producto` (`id_producto`),
        FOREIGN KEY (`fk_servicio`) REFERENCES `arma_tu_fiesta`.`servicio_tercerizado` (`id_servicio`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`proveedor_salon` (
    `id_proveedor_salon`    INT NOT NULL AUTO_INCREMENT,
    `fk_proveedor`          INT NOT NULL,
    `fk_salon`              INT NOT NULL,
    `precio`                NUMERIC NOT NULL,
    `fecha_reserva`         DATE NOT NULL,
    `fecha_inicio`          DATE NOT NULL,
    `fecha_fin`             DATE NOT NULL,
    PRIMARY KEY (`id_proveedor_salon`),
        FOREIGN KEY (`fk_proveedor`) REFERENCES `arma_tu_fiesta`.`proveedor` (`id_proveedor`),
        FOREIGN KEY (`fk_salon`) REFERENCES `arma_tu_fiesta`.`locacion` (`id_locacion`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`proveedor_producto` (
    `id_proveedor_producto` INT NOT NULL AUTO_INCREMENT,
    `fk_proveedor`          INT NOT NULL,
    `fk_producto`           INT NOT NULL,
    `cantidad`              INT NOT NULL,
    `precio`                NUMERIC NOT NULL,
    `fecha_entrega`         DATE NOT NULL,
    PRIMARY KEY (`id_proveedor_producto`),
        FOREIGN KEY (`fk_proveedor`) REFERENCES `arma_tu_fiesta`.`proveedor` (`id_proveedor`),
        FOREIGN KEY (`fk_producto`) REFERENCES `arma_tu_fiesta`.`producto` (`id_producto`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`proveedor_servicio` (
    `id_proveedor_servicio` INT NOT NULL AUTO_INCREMENT,
    `fk_proveedor`          INT NOT NULL,
    `fk_servicio`           INT NOT NULL,
    `precio`                NUMERIC NOT NULL,
    `fecha_reserva`         DATE NOT NULL,
    `fecha_inicio`          DATE NOT NULL,
    `fecha_fin`             DATE NOT NULL,
    PRIMARY KEY (`id_proveedor_servicio`),
        FOREIGN KEY (`fk_proveedor`) REFERENCES `arma_tu_fiesta`.`proveedor` (`id_proveedor`),
        FOREIGN KEY (`fk_servicio`) REFERENCES `arma_tu_fiesta`.`servicio_tercerizado` (`id_servicio`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`cita` (
    `fk_usuario_rol`        INT NOT NULL,
    `fk_proveedor_servicio` INT NOT NULL,
    `fecha`                 DATE NOT NULL,
    `hora`                  DATE NOT NULL,
        FOREIGN KEY (`fk_usuario_rol`) REFERENCES `arma_tu_fiesta`.`usuario_rol` (`id_usuario_rol`),
        FOREIGN KEY (`fk_proveedor_servicio`) REFERENCES `arma_tu_fiesta`.`proveedor_servicio` (`id_proveedor_servicio`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`evento` (
    `id_evento`             INT NOT NULL AUTO_INCREMENT,
    `tipo`                  VARCHAR(45) NOT NULL,
    `tema`                  VARCHAR(45) NOT NULL,
    `cortejo`               VARCHAR(45) NULL,
    PRIMARY KEY (`id_evento`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`orden_evento` (
    `id_orden_evento`       INT NOT NULL AUTO_INCREMENT,
    `cantidad_invitados`    INT NOT NULL,
    `fecha_reserva`         DATE NOT NULL,
    `fecha_realizacion`     DATE NOT NULL,
    `fk_usuario_rol`        INT NOT NULL,
    `fk_evento`             INT NOT NULL,
    PRIMARY KEY (`id_orden_evento`),
        FOREIGN KEY (`fk_usuario_rol`) REFERENCES `arma_tu_fiesta`.`usuario_rol` (`id_usuario_rol`),
        FOREIGN KEY (`fk_evento`) REFERENCES `arma_tu_fiesta`.`evento` (`id_evento`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`presupuesto` (
    `id_presupuesto`        INT NOT NULL AUTO_INCREMENT,
    `fecha`                 DATE NOT NULL,
    `estatus`               VARCHAR(45) NOT NULL,
    `total`                 NUMERIC NOT NULL,
    `fk_orden_evento`       INT NOT NULL,
    PRIMARY KEY (`id_presupuesto`),
        FOREIGN KEY (`fk_orden_evento`) REFERENCES `arma_tu_fiesta`.`orden_evento` (`id_orden_evento`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`detalle` (
    `id_detalle`            INT NOT NULL AUTO_INCREMENT,
    `cantidad`              INT NOT NULL,
    `precio_unitario`       NUMERIC NOT NULL,
    `descuento`             NUMERIC NOT NULL,
    `fk_presupuesto`        INT NOT NULL,
    `fk_producto`           INT NULL,
    `fk_proveedor_salon`    INT NULL,
    `fk_proveedor_servicio` INT NULL,
    PRIMARY KEY (`id_detalle`),
        FOREIGN KEY (`fk_presupuesto`) REFERENCES `arma_tu_fiesta`.`presupuesto` (`id_presupuesto`),
        FOREIGN KEY (`fk_producto`) REFERENCES `arma_tu_fiesta`.`producto` (`id_producto`),
        FOREIGN KEY (`fk_proveedor_salon`) REFERENCES `arma_tu_fiesta`.`proveedor_salon` (`id_proveedor_salon`),
        FOREIGN KEY (`fk_proveedor_servicio`) REFERENCES `arma_tu_fiesta`.`proveedor_servicio` (`id_proveedor_servicio`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`metodo_de_pago` (
    `id_metodo`             INT NOT NULL AUTO_INCREMENT,
    `banco`                 VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_metodo`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`tarjeta` (
    `fk_pago`               INT NOT NULL,
    `tipo`                  VARCHAR(45) NOT NULL,
    `numero_cuenta`         INT NOT NULL,
    `fecha_caducidad`       DATE NOT NULL,
    `marca`                 VARCHAR(45) NOT NULL,
    `codigo_reverso`        INT NOT NULL,
        FOREIGN KEY (`fk_pago`) REFERENCES `arma_tu_fiesta`.`metodo_de_pago` (`id_metodo`)
);

CREATE TABLE IF NOT EXISTS `arma_tu_fiesta`.`transferencia` (
    `fk_pago`               INT NOT NULL,
    `numero_comprobante`    INT NOT NULL,
    `fecha_realizacion`     DATE NOT NULL,
    `concepto`              VARCHAR(45) NOT NULL,
        FOREIGN KEY (`fk_pago`) REFERENCES `arma_tu_fiesta`.`metodo_de_pago` (`id_metodo`)
);