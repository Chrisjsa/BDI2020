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