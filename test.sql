SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM eprodavnica_skladiste.prodato_fakt;
DELETE FROM eprodavnica_skladiste.recenzije_fakt;

DELETE FROM eprodavnica_skladiste.vreme_dim;
DELETE FROM eprodavnica_skladiste.kupac_dim;
DELETE FROM eprodavnica_skladiste.prodavac_dim;
DELETE FROM eprodavnica_skladiste.artikal_dim;
DELETE FROM eprodavnica_skladiste.kategorija_dim;
DELETE FROM eprodavnica_skladiste.mesto_dim;

ALTER TABLE eprodavnica_skladiste.vreme_dim AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_skladiste.kupac_dim AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_skladiste.prodavac_dim AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_skladiste.artikal_dim AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_skladiste.kategorija_dim AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_skladiste.mesto_dim AUTO_INCREMENT = 1;

UPDATE eprodavnica_skladiste.poslednje_punjenje 
SET DatumVreme = '1970-01-01 00:00:00'
WHERE IdPunj = 1;

SET FOREIGN_KEY_CHECKS = 1;


skladiste
-------------------------------------------------------------------------------------------------
operativna


SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM eprodavnica_operativna.stavka;
DELETE FROM eprodavnica_operativna.recenzija;
DELETE FROM eprodavnica_operativna.narudzbina;
DELETE FROM eprodavnica_operativna.korpa;
DELETE FROM eprodavnica_operativna.artikal;
DELETE FROM eprodavnica_operativna.korisnik;
DELETE FROM eprodavnica_operativna.mesto;
DELETE FROM eprodavnica_operativna.kategorija;

ALTER TABLE eprodavnica_operativna.stavka AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_operativna.recenzija AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_operativna.narudzbina AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_operativna.korpa AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_operativna.artikal AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_operativna.korisnik AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_operativna.mesto AUTO_INCREMENT = 1;
ALTER TABLE eprodavnica_operativna.kategorija AUTO_INCREMENT = 1;

SET FOREIGN_KEY_CHECKS = 1;