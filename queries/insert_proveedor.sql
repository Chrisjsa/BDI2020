INSERT INTO `arma_tu_fiesta`.`proveedor` (`rif`,`razon_social`,`rubro`,`fk_ubicado`)
    VALUES
    ('J-20202706','Kami Productions','Fotografia y video',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'El Recreo') as tablaLugar)),
    ('J-20201309','Ambrosia','Catering ',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'El Cafetal') as tablaLugar)),
    ('J-7456987','Fondo Blanco','Bebidas',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'Petare') as tablaLugar)),
    ('J-9378192','Contigo','Mobiliario',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'La Dolorita') as tablaLugar)),
    ('J-8741963','Yutu','Entretenimiento',
        (SELECT pkLugar FROM (SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE nombre = 'San Pedro') as tablaLugar))
;