generate = open("lista_lugares")
salida = open('script_insert_lugar.sql','a')
estado = ""
municipio = ""
parroquia = ""
e=0
m=0
p=0

for linea in generate:
    desglose = linea.split()
    tipo = desglose[0]
    desglose.pop(0)
    #valor = ""
    valor = ' '.join(desglose)
    if tipo == "Estado":
        estado = valor
        e+=1
        salida.write("SET @tipo = \'"+tipo+"\';\n")
        salida.write("SET @pertenece = (SELECT pkLugar FROM\n\t(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = \'Pais\' AND nombre = \'Venezuela\')\n\tas tablaLugar);\n")
        salida.write("INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES (\'" + valor + "\', @tipo, @pertenece);\n\n")
    elif tipo == "Municipio":
        m+=1
        municipio = valor
        salida.write("SET @tipo = \'"+tipo+"\';\n")
        salida.write("SET @pertenece = (SELECT pkLugar FROM\n\t(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = \'Estado\' AND nombre = \'" +estado+ "\')\n\tas tablaLugar);\n")
        salida.write("INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES (\'" + valor + "\', @tipo, @pertenece);\n\n")
    elif tipo == "Parroquia":
        p+=1
        salida.write("SET @tipo = \'"+tipo+"\';\n")
        salida.write("SET @pertenece = (SELECT pkLugar FROM\n\t(SELECT id_lugar as pkLugar FROM arma_tu_fiesta.lugar WHERE tipo = \'Municipio\' AND nombre = \'" +municipio+ "\')\n\tas tablaLugar);\n")
        salida.write("INSERT INTO arma_tu_fiesta.lugar (nombre, tipo, fk_pertenece) VALUES (\'" + valor + "\', @tipo, @pertenece);\n\n")

salida.close()
print(e)
print(m)
print(p)


