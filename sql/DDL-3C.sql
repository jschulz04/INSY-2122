SHOW DATABASES;

-- Erstellt die Datenbank Kino

-- Für Testskripte
DROP DATABASE IF EXISTS kino 
CREATE DATABASE kino; 
-- Für Produktivsysteme
CREATE DATABASE IF NOT EXISTS kino;

-- Kino auswählen
USE kino;

-- Tabellen Erstellen
CREATE TABLE film(
    titel VARCHAR(100),
    jahr INT,
    untertitel VARCHAR(250),
    land CHAR(2),
    PRIMARY KEY (titel, jahr)
);

CREATE TABLE person(
    id INT PRIMARY KEY,
    kuenstlername VARCHAR(250),
    nachname VARCHAR(250),
    herkunftsland CHAR(2),
    kundennr INT,
    geburtsdatum INT

);

CREATE TABLE land(
    code CHAR(2) PRIMARY KEY,
    name VARCHAR(250)

);

-- Warnung Zeigen
SHOW WARNINGS;


-- Tabelle löschen
DROP TABLE film;

