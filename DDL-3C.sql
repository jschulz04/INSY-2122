SHOW DATABASES;
--Erstellt die Datenbank Kino

CREATE DATABASE kino; 

--Kino auswählen
USE kino;

--Tabelle Erstellen
CREATE TABLE film(
    titel VARCHAR(100),
    jahr INT,
    untertitel VARCHAR(250),
    land CHAR(2),
    PRIMARY KEY (titel, jahr)
);

--Warnung Zeigen
SHOW WARNINGS;


--Tabelle löschen
DROP TABLE film;

