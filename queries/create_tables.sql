# -*- coding: utf-8 -*-

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.lugar (
    id_lugar               INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(100) NOT NULL,
    tipo                   VARCHAR(80) NOT NULL,
    fk_pertenece           INT NULL,
    CONSTRAINT pk_lugar PRIMARY KEY (id_lugar),
        CONSTRAINT fk_lugar_lugar FOREIGN KEY (fk_pertenece) REFERENCES arma_tu_fiesta.lugar (id_lugar)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.persona (
    id_persona             INT NOT NULL AUTO_INCREMENT,
    cedula                 VARCHAR(80) NOT NULL UNIQUE,
    p_nombre               VARCHAR(80) NOT NULL,
    s_nombre               VARCHAR(80) NULL,
    p_apellido             VARCHAR(80) NOT NULL,
    s_apellido             VARCHAR(80) NULL,
    fecha_nacimiento       DATE NOT NULL,
    sexo                   VARCHAR(80) NOT NULL,
    estado_civil           VARCHAR(80) NOT NULL,
    fk_residencia          INT NOT NULL,
    CONSTRAINT pk_persona PRIMARY KEY (id_persona),
        CONSTRAINT fk_persona_lugar FOREIGN KEY (fk_residencia) REFERENCES arma_tu_fiesta.lugar (id_lugar)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.rol (
    id_rol                 INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    CONSTRAINT pk_rol PRIMARY KEY (id_rol)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.permiso (
    id_permiso             INT NOT NULL AUTO_INCREMENT,
    descripcion                 VARCHAR(255) NOT NULL,
    CONSTRAINT pk_permiso PRIMARY KEY (id_permiso)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.usuario (
    id_usuario             INT NOT NULL AUTO_INCREMENT,
    username               VARCHAR(80) NOT NULL,
    password               VARCHAR(80) NOT NULL,
    fk_persona             INT NOT NULL,
    fk_rol                 INT NOT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY (id_usuario),
        CONSTRAINT fk_usuario_persona FOREIGN KEY (fk_persona) REFERENCES arma_tu_fiesta.persona (id_persona),
        CONSTRAINT fk_usuario_rol FOREIGN KEY (fk_rol) REFERENCES arma_tu_fiesta.rol (id_rol)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.rol_permiso (
    id_rol_permiso         INT NOT NULL AUTO_INCREMENT,
    fk_rol                 INT NOT NULL,
    fk_permiso             INT NOT NULL,
    CONSTRAINT pk_rol_permiso PRIMARY KEY (id_rol_permiso),
        CONSTRAINT fk_rol_permiso FOREIGN KEY (fk_rol) REFERENCES arma_tu_fiesta.rol (id_rol),
        CONSTRAINT fk_permiso_rol FOREIGN KEY (fk_permiso) REFERENCES arma_tu_fiesta.permiso (id_permiso)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.categoria (
    id_categoria           INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    CONSTRAINT pk_categoria PRIMARY KEY (id_categoria)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.proveedor (
    id_proveedor           INT NOT NULL AUTO_INCREMENT,
    rif                    VARCHAR(80) NOT NULL UNIQUE,
    razon_social           VARCHAR(80) NOT NULL,
    denominacion_comercial VARCHAR(80) NOT NULL,
    fk_categoria           INT NOT NULL,
    fk_ubicado             INT NOT NULL,
    CONSTRAINT pk_proveedor PRIMARY KEY (id_proveedor),
        CONSTRAINT fk_proveedor_categoria FOREIGN KEY (fk_categoria) REFERENCES arma_tu_fiesta.categoria (id_categoria),
        CONSTRAINT fk_proveedor_lugar FOREIGN KEY (fk_ubicado) REFERENCES arma_tu_fiesta.lugar (id_lugar)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.empleado (
    id_empleado            INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    apellido               VARCHAR(80) NOT NULL,
    cedula                 VARCHAR(80) NOT NULL,
    sexo                   VARCHAR(80) NOT NULL,
    cargo                  VARCHAR(80) NOT NULL,
    fk_proveedor           INT NOT NULL,
    CONSTRAINT pk_empleado PRIMARY KEY (id_empleado),
        CONSTRAINT fk_empleado_proveedor FOREIGN KEY (fk_proveedor) REFERENCES arma_tu_fiesta.proveedor (id_proveedor)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.horario (
    id_horario             INT NOT NULL AUTO_INCREMENT,
    dia                    VARCHAR(80) NOT NULL,
    turno                  VARCHAR(80) NOT NULL,
    hora_inicio            TIME NOT NULL,
    hora_termina           TIME NOT NULL,
    CONSTRAINT pk_horario PRIMARY KEY (id_horario)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.religion (
    id_religion            INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    CONSTRAINT pk_religion PRIMARY KEY (id_religion)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.coordenada (
    id_coordenada          INT NOT NULL AUTO_INCREMENT,
    latitud                VARCHAR(80) NOT NULL,
    longitud               VARCHAR(80) NOT NULL,
    fk_locacion            INT NOT NULL,
    CONSTRAINT pk_coordenada PRIMARY KEY (id_coordenada),
    CONSTRAINT fk_coordenada_locacion FOREIGN KEY (fk_locacion) REFERENCES arma_tu_fiesta.locacion (id_locacion)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.locacion (
    id_locacion            INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    tipo                   VARCHAR(80) NOT NULL,
    fk_localizacion        INT NOT NULL,
    CONSTRAINT pk_locacion PRIMARY KEY (id_locacion),
        CONSTRAINT fk_locacion_lugar FOREIGN KEY (fk_localizacion) REFERENCES arma_tu_fiesta.lugar (id_lugar)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.jefatura (
    fk_jefatura            INT NOT NULL,
    jefe_civil             VARCHAR(80) NOT NULL,
        CONSTRAINT fk_jefatura_locacion FOREIGN KEY (fk_jefatura) REFERENCES arma_tu_fiesta.locacion (id_locacion)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.notaria (
    fk_notaria            INT NOT NULL,
    nombre_notario                VARCHAR(80) NOT NULL,
        CONSTRAINT fk_notaria_locacion FOREIGN KEY (fk_notaria) REFERENCES arma_tu_fiesta.locacion (id_locacion)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.templo (
    fk_templo              INT NOT NULL,
    parroco                VARCHAR(80) NOT NULL,
    web                    VARCHAR(80) NOT NULL,
    fk_religion            INT NOT NULL,
        CONSTRAINT fk_templo_locacion FOREIGN KEY (fk_templo) REFERENCES arma_tu_fiesta.locacion (id_locacion),
        CONSTRAINT fk_templo_religion FOREIGN KEY (fk_religion) REFERENCES arma_tu_fiesta.religion (id_religion)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.templo_horario (
    id_templo_horario       INT NOT NULL AUTO_INCREMENT,
    fk_templo               INT NOT NULL,
    fk_horario              INT NOT NULL,
    CONSTRAINT pk_templo_horario PRIMARY KEY (id_templo_horario),
        CONSTRAINT fk_templo_horario FOREIGN KEY (fk_templo) REFERENCES arma_tu_fiesta.templo (fk_templo),
        CONSTRAINT fk_horario_templo FOREIGN KEY (fk_horario) REFERENCES arma_tu_fiesta.horario (id_horario)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.salon_de_fiesta (
    fk_salon               INT NOT NULL,
    descripcion            VARCHAR(255) NOT NULL,
    capacidad_personas     INT NOT NULL,
        CONSTRAINT fk_salon_locacion FOREIGN KEY (fk_salon) REFERENCES arma_tu_fiesta.locacion (id_locacion)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.punto_de_referencia (
    id_punto               INT NOT NULL AUTO_INCREMENT,
    descripcion            VARCHAR(255) NOT NULL,
    fk_salon_de_fiesta     INT NOT NULL,
    CONSTRAINT pk_punto PRIMARY KEY (id_punto),
        CONSTRAINT fk_punto_locacion FOREIGN KEY (fk_salon_de_fiesta) REFERENCES arma_tu_fiesta.salon_de_fiesta (fk_salon)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.caracteristica (
    id_caracteristica      INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    CONSTRAINT pk_caracteristica PRIMARY KEY (id_caracteristica)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.caracteristica_salon (
    id_caract_salon        INT NOT NULL AUTO_INCREMENT,
    fk_salon_de_fiesta     INT NOT NULL,
    fk_caracteristica      INT NOT NULL,
    cantidad               INT NOT NULL,
    CONSTRAINT pk_caract_salon PRIMARY KEY (id_caract_salon),
        CONSTRAINT fk_caract_salon_locacion FOREIGN KEY (fk_salon_de_fiesta) REFERENCES arma_tu_fiesta.salon_de_fiesta (fk_salon),
        CONSTRAINT fk_caract_salon_caracteristica FOREIGN KEY (fk_caracteristica) REFERENCES arma_tu_fiesta.caracteristica (id_caracteristica)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.curso (
    id_curso               INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    fk_templo              INT NOT NULL,
    CONSTRAINT pk_curso PRIMARY KEY (id_curso),
        CONSTRAINT fk_curso_templo FOREIGN KEY (fk_templo) REFERENCES arma_tu_fiesta.templo (fk_templo)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.telefono (
    id_telefono            INT NOT NULL AUTO_INCREMENT,
    numero                 VARCHAR(80) NOT NULL UNIQUE,
    fk_persona             INT NULL,
    fk_proveedor           INT NULL,
    fk_locacion            INT NULL,
    CONSTRAINT pk_telefono PRIMARY KEY (id_telefono),
        CONSTRAINT fk_telefono_persona FOREIGN KEY (fk_persona) REFERENCES arma_tu_fiesta.persona (id_persona),
        CONSTRAINT fk_telefono_proveedor FOREIGN KEY (fk_proveedor) REFERENCES arma_tu_fiesta.proveedor (id_proveedor),
        CONSTRAINT fk_telefono_locacion FOREIGN KEY (fk_locacion) REFERENCES arma_tu_fiesta.locacion (id_locacion)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.email (
    id_email               INT NOT NULL AUTO_INCREMENT,
    correo                 VARCHAR(80) NOT NULL,
    fk_persona             INT NULL,
    fk_proveedor           INT NULL,
    fk_locacion            INT NULL,
    CONSTRAINT pk_email PRIMARY KEY (id_email),
        CONSTRAINT fk_email_persona FOREIGN KEY (fk_persona) REFERENCES arma_tu_fiesta.persona (id_persona),
        CONSTRAINT fk_email_proveedor FOREIGN KEY (fk_proveedor) REFERENCES arma_tu_fiesta.proveedor (id_proveedor),
        CONSTRAINT fk_email_locacion FOREIGN KEY (fk_locacion) REFERENCES arma_tu_fiesta.locacion (id_locacion)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.tramite (
    id_tramite       INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    CONSTRAINT pk_tramite PRIMARY KEY (id_tramite)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.solicitud (
    id_solicitud           INT NOT NULL AUTO_INCREMENT,
    fk_tramite             INT NOT NULL,
    fk_usuario             INT NOT NULL,
    fk_locacion            INT NOT NULL,
    CONSTRAINT pk_solicitud PRIMARY KEY (id_solicitud),
        CONSTRAINT fk_solicitud_tramite FOREIGN KEY (fk_tramite) REFERENCES arma_tu_fiesta.tramite (id_tramite),
        CONSTRAINT fk_solicitud_usuario FOREIGN KEY (fk_usuario) REFERENCES arma_tu_fiesta.usuario (id_usuario),
        CONSTRAINT fk_solicitud_locacion FOREIGN KEY (fk_locacion) REFERENCES arma_tu_fiesta.locacion (id_locacion)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.tramite_persona (
    id_tramite_persona     INT NOT NULL AUTO_INCREMENT,
    fk_solicitud           INT NOT NULL,
    fk_persona             INT NOT NULL,
    relacion               VARCHAR(80) NOT NULL,
    CONSTRAINT pk_tramite_persona PRIMARY KEY (id_tramite_persona),
        CONSTRAINT fk_tramite_solicitud FOREIGN KEY (fk_solicitud) REFERENCES arma_tu_fiesta.solicitud (id_solicitud),
        CONSTRAINT fk_tramite_persona FOREIGN KEY (fk_persona) REFERENCES arma_tu_fiesta.persona (id_persona)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.descuento (
    id_descuento           INT NOT NULL AUTO_INCREMENT,
    razon                  VARCHAR(80),
    porcentaje             REAL NOT NULL,
    fecha_caducidad        DATE NOT NULL,
    CONSTRAINT pk_descuento PRIMARY KEY (id_descuento)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.producto (
    id_producto            INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    descripcion            VARCHAR(500) NOT NULL,
    cantidad               INT NOT NULL,
    precio                 REAL NOT NULL,
    fk_descuento           INT NULL,
    fk_categoria           INT NOT NULL,
    CONSTRAINT pk_producto PRIMARY KEY (id_producto),
        CONSTRAINT fk_producto_categoria FOREIGN KEY (fk_categoria) REFERENCES arma_tu_fiesta.categoria (id_categoria),
        CONSTRAINT fk_producto_descuento FOREIGN KEY (fk_descuento) REFERENCES arma_tu_fiesta.descuento (id_descuento)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.servicio_tercerizado (
    id_servicio            INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    descripcion            VARCHAR(500) NOT NULL,
    precio                 REAL NOT NULL,
    fk_descuento           INT NULL,
    fk_categoria           INT NOT NULL,
    fk_proveedor           INT NOT NULL,
    CONSTRAINT pk_servicio PRIMARY KEY (id_servicio),
        CONSTRAINT fk_servicio_categoria FOREIGN KEY (fk_categoria) REFERENCES arma_tu_fiesta.categoria (id_categoria),
        CONSTRAINT fk_servicio_descuento FOREIGN KEY (fk_descuento) REFERENCES arma_tu_fiesta.descuento (id_descuento),
        CONSTRAINT fk_servicio_proveedor FOREIGN KEY (fk_proveedor) REFERENCES arma_tu_fiesta.proveedor (id_proveedor)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.orden_producto (
    id_orden_producto      INT NOT NULL AUTO_INCREMENT,
    cantidad               INT NOT NULL,
    total                  REAL NOT NULL,
    fecha                  DATE NOT NULL,
    fk_proveedor           INT NOT NULL,
    fk_producto            INT NOT NULL,
    CONSTRAINT pk_orden_producto PRIMARY KEY (id_orden_producto),
        CONSTRAINT fk_orden_producto_proveedor FOREIGN KEY (fk_proveedor) REFERENCES arma_tu_fiesta.proveedor (id_proveedor),
        CONSTRAINT fk_orden_producto_producto FOREIGN KEY (fk_producto) REFERENCES arma_tu_fiesta.producto (id_producto)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.cita (
    fk_usuario             INT NOT NULL,
    fk_servicio            INT NOT NULL,
    fecha                  DATE NOT NULL,
        CONSTRAINT fk_cita_usuario FOREIGN KEY (fk_usuario) REFERENCES arma_tu_fiesta.usuario (id_usuario),
        CONSTRAINT fk_cita_servicio FOREIGN KEY (fk_servicio) REFERENCES arma_tu_fiesta.servicio_tercerizado (id_servicio)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.evento (
    id_evento              INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    tipo                   VARCHAR(80) NOT NULL,
    tema                   VARCHAR(80) NOT NULL,
    cortejo                VARCHAR(80) NULL,
    CONSTRAINT pk_evento PRIMARY KEY (id_evento)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.orden_evento (
    id_orden_evento        INT NOT NULL AUTO_INCREMENT,
    cantidad_invitados     INT NOT NULL,
    fecha_reserva          DATE NOT NULL,
    fecha_realizacion      DATE NOT NULL,
    fk_usuario             INT NOT NULL,
    fk_evento              INT NOT NULL,
    CONSTRAINT pk_orden_evento PRIMARY KEY (id_orden_evento),
        CONSTRAINT fk_orden_evento_usuario FOREIGN KEY (fk_usuario) REFERENCES arma_tu_fiesta.usuario (id_usuario),
        CONSTRAINT fk_orden_evento_evento FOREIGN KEY (fk_evento) REFERENCES arma_tu_fiesta.evento (id_evento)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.presupuesto (
    id_presupuesto         INT NOT NULL AUTO_INCREMENT,
    fecha                  DATE NOT NULL,
    total                  REAL NOT NULL,
    fk_orden_evento        INT NOT NULL,
    fk_usuario             INT NOT NULL,
    CONSTRAINT pk_presupuesto PRIMARY KEY (id_presupuesto),
        CONSTRAINT fk_presupueto_orden_evento FOREIGN KEY (fk_orden_evento) REFERENCES arma_tu_fiesta.orden_evento (id_orden_evento),
        CONSTRAINT fk_presupuesto_usuario FOREIGN KEY (fk_usuario) REFERENCES arma_tu_fiesta.usuario (id_usuario)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.detalle (
    id_detalle             INT NOT NULL AUTO_INCREMENT,
    cantidad               INT NOT NULL,
    precio_unitario        REAL NOT NULL,
    descuento              REAL NOT NULL,
    fk_presupuesto         INT NOT NULL,
    fk_producto            INT NULL,
    fk_salon               INT NULL,
    fk_servicio            INT NULL,
    CONSTRAINT pk_detalle PRIMARY KEY (id_detalle),
        CONSTRAINT fk_detalle_presupuesto FOREIGN KEY (fk_presupuesto) REFERENCES arma_tu_fiesta.presupuesto (id_presupuesto),
        CONSTRAINT fk_detalle_producto FOREIGN KEY (fk_producto) REFERENCES arma_tu_fiesta.producto (id_producto),
        CONSTRAINT fk_detalle_locacion FOREIGN KEY (fk_salon) REFERENCES arma_tu_fiesta.salon_de_fiesta (fk_salon),
        CONSTRAINT fk_detalle_servicio FOREIGN KEY (fk_servicio) REFERENCES arma_tu_fiesta.servicio_tercerizado (id_servicio)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.metodo_de_pago (
    id_metodo              INT NOT NULL AUTO_INCREMENT,
    banco                  VARCHAR(80) NOT NULL,
    CONSTRAINT pk_metodo_de_pago PRIMARY KEY (id_metodo)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.tarjeta (
    fk_pago                INT NOT NULL,
    tipo                   VARCHAR(80) NOT NULL,
    numero_cuenta          INT NOT NULL,
    fecha_caducidad        DATE NOT NULL,
    marca                  VARCHAR(80) NOT NULL,
    codigo_reverso         INT NOT NULL,
        CONSTRAINT fk_tarjeta_metodo FOREIGN KEY (fk_pago) REFERENCES arma_tu_fiesta.metodo_de_pago (id_metodo)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.transferencia (
    fk_pago                INT NOT NULL,
    numero_comprobante     INT NOT NULL,
    fecha_realizacion      DATE NOT NULL,
    concepto               VARCHAR(80) NOT NULL,
        CONSTRAINT fk_transferencia_metodo FOREIGN KEY (fk_pago) REFERENCES arma_tu_fiesta.metodo_de_pago (id_metodo)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.presupuesto_pago (
    id_presupuesto_pago    INT NOT NULL AUTO_INCREMENT,
    fecha                  DATE NOT NULL,
    monto                  REAL NOT NULL,
    fk_presupuesto         INT NOT NULL,
    fk_pago                INT NOT NULL,
    CONSTRAINT pk_presupuesto_pago PRIMARY KEY (id_presupuesto_pago),
        CONSTRAINT fk_pago_presupuesto FOREIGN KEY (fk_presupuesto) REFERENCES arma_tu_fiesta.presupuesto (id_presupuesto),
        CONSTRAINT fk_presupuesto_pago FOREIGN KEY (fk_pago) REFERENCES arma_tu_fiesta.metodo_de_pago (id_metodo)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.orden_producto_pago (
    id_orden_pago          INT NOT NULL AUTO_INCREMENT,
    fecha                  DATE NOT NULL,
    monto                  REAL NOT NULL,
    fk_orden_producto      INT NOT NULL,
    fk_pago                INT NOT NULL,
    CONSTRAINT pk_orden_producto_pago PRIMARY KEY (id_orden_pago),
        CONSTRAINT fk_orden_producto_pago FOREIGN KEY (fk_orden_producto) REFERENCES arma_tu_fiesta.orden_producto (id_orden_producto),
        CONSTRAINT fk_pago_orden_producto FOREIGN KEY (fk_pago) REFERENCES arma_tu_fiesta.metodo_de_pago (id_metodo)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.tip (
    id_tip                 INT NOT NULL AUTO_INCREMENT,
    tipo                   VARCHAR(80) NOT NULL,
    descripcion            VARCHAR(500) NOT NULL,
    CONSTRAINT pk_tip PRIMARY KEY (id_tip)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.imagen (
    id_imagen              INT NOT NULL AUTO_INCREMENT,
    fuente                 VARCHAR(80) NOT NULL,
    fk_salon               INT  NULL,
    fk_producto            INT  NULL,
    fk_servicio            INT  NULL,
    fk_evento              INT  NULL,
    CONSTRAINT pk_imagen PRIMARY KEY (id_imagen),
        CONSTRAINT fk_imagen_salon FOREIGN KEY (fk_salon) REFERENCES arma_tu_fiesta.locacion (id_locacion),
        CONSTRAINT fk_imagen_producto FOREIGN KEY (fk_producto) REFERENCES arma_tu_fiesta.producto (id_producto),
        CONSTRAINT fk_imagen_servicio FOREIGN KEY (fk_servicio) REFERENCES arma_tu_fiesta.servicio_tercerizado (id_servicio),
        CONSTRAINT fk_imagen_evento FOREIGN KEY (fk_evento) REFERENCES arma_tu_fiesta.evento (id_evento)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.estatus (
    id_estatus             INT NOT NULL AUTO_INCREMENT,
    nombre                 VARCHAR(80) NOT NULL,
    CONSTRAINT pk_estatus PRIMARY KEY (id_estatus)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.orden_producto_estatus (
    fk_orden_producto      INT NOT NULL,
    fk_estatus             INT NOT NULL,
    fecha                  DATE NOT NULL,
        CONSTRAINT fk_orden_producto_estatus FOREIGN KEY (fk_orden_producto) REFERENCES arma_tu_fiesta.orden_producto (id_orden_producto),
        CONSTRAINT fk_estatus_orden_producto FOREIGN KEY (fk_estatus) REFERENCES arma_tu_fiesta.estatus (id_estatus)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.tramite_estatus (
    fk_solicitud             INT NOT NULL,
    fk_estatus             INT NOT NULL,
    fecha                  DATE NOT NULL,
    CONSTRAINT fk_estatus_solicitud FOREIGN KEY (fk_solicitud) REFERENCES arma_tu_fiesta.solicitud (id_solicitud),
    CONSTRAINT fk_estatus_estatus FOREIGN KEY (fk_estatus) REFERENCES arma_tu_fiesta.estatus (id_estatus)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.orden_evento_estatus (
    fk_orden_evento        INT NOT NULL,
    fk_estatus             INT NOT NULL,
    fecha                  DATE NOT NULL,
    CONSTRAINT fk_orden_estatus FOREIGN KEY (fk_orden_evento) REFERENCES arma_tu_fiesta.orden_evento (id_orden_evento),
    CONSTRAINT fk_estatus_orden FOREIGN KEY (fk_estatus) REFERENCES arma_tu_fiesta.estatus (id_estatus)
);

CREATE TABLE IF NOT EXISTS arma_tu_fiesta.presupuesto_estatus (
    fk_presupuesto         INT NOT NULL,
    fk_estatus             INT NOT NULL,
    fecha                  DATE NOT NULL,
    CONSTRAINT fk_presupuesto_estatus FOREIGN KEY (fk_presupuesto) REFERENCES arma_tu_fiesta.presupuesto (id_presupuesto),
    CONSTRAINT fk_estatus_presupuesto FOREIGN KEY (fk_estatus) REFERENCES arma_tu_fiesta.estatus (id_estatus)
);