exports.LEER_LUGARES_ESTADOS =
  "SELECT id_lugar id_estado, tipo, nombre FROM arma_tu_fiesta.lugar WHERE fk_pertenece = (SELECT fkLugar FROM(SELECT id_lugar as fkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela') as tablaLugar);"

exports.LEER_LUGARES_MUNICIPIOS =
  "SELECT id_lugar id_municipio, tipo, nombre FROM arma_tu_fiesta.lugar WHERE fk_pertenece = ?;"

exports.LEER_LUGARES_PARROQUIAS =
  "SELECT id_lugar id_parroquia, tipo, nombre FROM arma_tu_fiesta.lugar WHERE fk_pertenece = ?;"
