:: Batch-Skript zur Erstellung und Ausführung eines 
:: MySQL-Servers in einem Docker-Container
:: ACHTUNG: Pfade, Imagenamen etc. sind hardgecodet, 
:: müssen daher angepasst werden
::
:: Autor: Erhard List
:: Version: 220217_1
::
:: echo off ... Ausgabe der Befehlszeile unterdrücken
:: @        ... unterdrückt die Zeile selbst
@echo off

:: Container erzeugen und Volumes verbinden
docker run --name mysql-3c -v ~/daten3c/data:/var/lib/mysql -v ~/daten3c/conf:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=geheim -d mysql

docker exec -it mysql-3c mysql -p
