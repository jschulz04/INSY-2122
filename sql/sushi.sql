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

-- Erstellt die Tabelle mit den benötigten Spalten
CREATE TABLE speiseart (
    code INT PRIMARY KEY,
    speiseart VARCHAR(50)
);

-- Erstellt die Tabelle mit den benötigten Spalten
CREATE TABLE speise (
    speisenr INT AUTO_INCREMENT PRIMARY KEY,
    bezeichnung VARCHAR(50),
    speisecode INT REFERENCES speiseart(code),
    preis FLOAT,
    FOREIGN KEY (speisecode) REFERENCES speiseart(code)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

INSERT INTO speiseart VALUES (1, "Vorspeise"),
    (2, "Hauptspeise"),
    (3, "Dessert");
INSERT INTO speise VALUES (DEFAULT, "California Rolls 8 Stk.", 1, 8.99),
    (DEFAULT, "Sushi 6 Stk.", 1, 4.99),
    (DEFAULT, "Sushi 12 Stk.", 1, 8.99);

SELECT * FROM speise;
SELECT * FROM speiseart WHERE code = 1;


-- Befüllt die Tabelle mit Inhalt
INSERT INTO gast (gastnr, name, strasse, plz, ort) VALUES (1,"Meier", "Wexstrasse 187", 1160, "Wien");
INSERT INTO gast (gastnr, name, strasse, plz, ort) VALUES (DEFAULT, "Huber", "Wexstrasse 187", 1160, "Wien");
INSERT INTO gast (gastnr, plz, ort) VALUES (DEFAULT, DEFAULT, DEFAULT);
DESCRIBE gast;

-- Alle anderen Datensätze werden auf null gesetzt
INSERT INTO gast (name) VALUES ('Neumann');

-- Alle Datensätze ab 4 werden gelöscht
DELETE FROM gast WHERE gastnr >= 4;

-- Im Datensatz 2 wird der Name aktualisiert
UPDATE gast SET name='Mueller', strasse="Hauptstrasse 2" WHERE gastnr = 3;

UPDATE speise SET speisecode = 2 WHERE speisenr>=2;