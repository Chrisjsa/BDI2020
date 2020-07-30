exports.LEER_LUGARES_ESTADOS =
  "SELECT id_lugar ID, tipo Tipo, nombre Nombre FROM arma_tu_fiesta.lugar WHERE fk_pertenece = (SELECT fkLugar FROM(SELECT id_lugar as fkLugar FROM arma_tu_fiesta.lugar WHERE tipo = 'Pais' AND nombre = 'Venezuela') as tablaLugar);"

exports.LEER_LUGARES_MUNICIPIOS =
  "SELECT id_lugar ID, tipo Tipo, nombre Nombre FROM arma_tu_fiesta.lugar WHERE fk_pertenece = 'ID_estado';"

exports.LEER_LUGARES_PARROQUIAS =
  "SELECT id_lugar ID, tipo Tipo, nombre Nombre FROM arma_tu_fiesta.lugar WHERE fk_pertenece = 'ID_municipio';"
