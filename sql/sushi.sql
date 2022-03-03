--Übungsaufgabe SQL 
--Autor Johannes Schulz, 03.03.2022

-- Erstellt die Datenbank nur wenn sie noch nicht existiert
CREATE DATABASE IF NOT EXISTS sushi;
USE sushi;

-- Erstellt die Tabelle mit den benötigten Spalten
CREATE TABLE gast (
    gastnr INT AUTO_INCREMENT,
    name VARCHAR(50),
    strasse VARCHAR(50),
    plz INT DEFAULT 3400,
    ort VARCHAR(50) DEFAULT "Klosterneuburg",
    PRIMARY KEY (gastnr)
);

-- Befüllt die Tabelle mit Inhalt
DESCRIBE gast;
INSERT INTO gast (gastnr, name, strasse, plz, ort) VALUES (1,"Meier", "Wexstrasse 187", 1160, "Wien");
INSERT INTO gast (gastnr, name, strasse, plz, ort) VALUES (DEFAULT, "Huber", "Wexstrasse 187", 1160, "Wien");
INSERT INTO gast (gastnr, plz, ort) VALUES (DEFAULT, DEFAULT, DEFAULT);


-- Alle anderen Datensätze werden auf null gesetzt
INSERT INTO gast (name) VALUES ('Neumann');

-- Alle Datensätze ab 4 werden gelöscht
DELETE FROM gast WHERE gastnr >= 4;

-- Im Datensatz 2 wird der Name aktualisiert
UPDATE gast SET name='Mueller', strasse="Hauptstrasse" WHERE gastnr = 3;






