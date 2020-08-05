-- READ TIP

SELECT * FROM arma_tu_fiesta.tip;

-- CREATE TIP

INSERT INTO arma_tu_fiesta.tip (tipo, descripcion) VALUES ('TIPO', 'DESCRIPCION'); --  En tipo va solo Tip, Idea, Recomendacion

-- DELETE TIP

SET @tip = (ID_tip);
DELETE FROM arma_tu_fiesta.tip WHERE id_tip = @tip;

-- UPDATE TIP

SET @tip = (ID_tip);
UPDATE arma_tu_fiesta.tip SET descripcion = 'DESCRIPCION' WHERE id_tip = @tip;