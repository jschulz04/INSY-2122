--Übungsaufgabe SQL Johannes Schulz 02.03.2022

--Erstellt die Tabelle auto
CREATE DATABASE autos;
USE autos;

--erstellt die Tabelle Typ laut der Angabe
CREATE TABLE typ(
    bezeichnung VARCHAR(50) PRIMARY KEY,
    marke VARCHAR(50),
    leistung INT
);

--erstellt die Tabelle Auto laut der Angabe
CREATE TABLE auto(
    kennzeichen VARCHAR(10) PRIMARY KEY,
    baujahr INT,
    bezeichnung VARCHAR(50),
    FOREIGN KEY (bezeichnung) REFERENCES typ(bezeichnung)
);

--Fügt zu Typ eine nuee Spalte hinzu
ALTER TABLE typ
ADD neupreis FLOAT;

--Ändert den Datentyp von Typ;
ALTER TABLE typ
MODIFY COLUMN neupreis
INT;

--Löscht die Spalte neupreis
ALTER TABLE typ
DROP COLUMN neupreis;

--Löscht alle Daten aus der Tabelle Auto
TRUNCATE TABLE auto;

--Löscht die Tabelle Typ
DROP TABLE auto;
DROP TABLE typ;

--Löscht die Datenbank
DROP DATABASE autos;