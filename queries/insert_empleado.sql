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