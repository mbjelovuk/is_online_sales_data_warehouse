INSERT INTO MESTO (Mesto) VALUES
('Beograd'),
('Novi Sad'),
('Niš'),
('Kragujevac'),
('Subotica'),
('Čačak'),
('Užice'),
('Zrenjanin'),
('Pančevo'),
('Sombor');

INSERT INTO KORISNIK (Ime, Prezime, Mobilni, Email, Godiste, Pol, IdMes) VALUES
('Marko', 'Marković', '061111111', 'marko@primer.rs', 1995, 'M', 1),
('Jelena', 'Jovanović', '062222222', 'jelena@primer.rs', 1998, 'Ž', 2),
('Nikola', 'Petrović', '063333333', 'nikola@primer.rs', 1987, 'M', 1),
('Ana', 'Ilić', '064444444', 'ana@primer.rs', 2000, 'Ž', 3),
('Stefan', 'Milošević', '065555555', 'stefan@primer.rs', 1992, 'M', 4),
('Milica', 'Pantić', '066666666', 'milica@primer.rs', 1999, 'Ž', 5),
('Lazar', 'Đorđević', '067777777', 'lazar@primer.rs', 1985, 'M', 6),
('Ivana', 'Stojanović', '068888888', 'ivana@primer.rs', 1996, 'Ž', 7),
('Nemanja', 'Simić', '069999999', 'nemanja@primer.rs', 1990, 'M', 8),
('Katarina', 'Obradović', '060000000', 'katarina@primer.rs', 2001, 'Ž', 9);

INSERT INTO KATEGORIJA (Naziv) VALUES
('Elektronika'),
('Knjige'),
('Odeća'),
('Kućni aparati'),
('Sport i rekreacija'),
('Igračke'),
('Računarska oprema'),
('Muzika'),
('Kancelarijski materijal'),
('Zdravlje i lepota');

INSERT INTO ARTIKAL (Naziv, Opis, Cena, Popust, Kolicina, IdKor, IdKat) VALUES
('Laptop Lenovo', 'Pouzdan kao jutarnja kafa', 85000, 10, 5, 1, 1),
('Bežične slušalice', 'Nema kablova, nema drame', 4500, 0, 20, 3, 1),
('Roman domaćeg autora', 'Čita se lakše nego skripte', 1200, 5, 30, 2, 2),
('Zimska jakna', 'Topla i kad grejanje odustane', 9000, 15, 10, 5, 3),
('Aparat za kafu', 'Jer jutro bez kafe nije jutro', 15000, 20, 7, 4, 4),
('Traka za trčanje', 'Motivacija se prodaje posebno', 38000, 10, 3, 6, 5),
('Lego set', 'Za decu i odrasle koji to kriju', 7200, 0, 12, 7, 6),
('Mehanička tastatura', 'Klikće glasnije od misli', 9800, 5, 8, 8, 7),
('Vinil ploča', 'Zvuk koji ima dušu', 3000, 0, 6, 9, 8),
('Ergonomska stolica', 'Leđa kažu hvala', 27000, 10, 4, 10, 9);

INSERT INTO NARUDZBINA (IdKor, Datum, Vreme, Iznos) VALUES
(2, '2025-01-10', '10:15:00', 89500),
(4, '2025-01-12', '18:45:00', 1140),
(6, '2025-02-01', '12:30:00', 12000),
(1, '2025-02-05', '09:10:00', 4500),
(3, '2025-02-20', '20:00:00', 27000),
(5, '2025-03-01', '14:40:00', 8100),
(7, '2025-03-03', '16:00:00', 9800),
(8, '2025-03-05', '11:20:00', 3000),
(9, '2025-03-10', '19:30:00', 15000),
(10, '2025-03-15', '08:50:00', 38000);

INSERT INTO STAVKA (IdNar, IdArt, Kolicina, Iznos) VALUES
(1, 1, 1, 76500),
(1, 2, 1, 4500),
(2, 3, 1, 1140),
(3, 5, 1, 12000),
(4, 2, 1, 4500),
(5, 10, 1, 24300),
(6, 4, 1, 7650),
(7, 8, 1, 9310),
(8, 9, 1, 3000),
(10, 6, 1, 34200);

INSERT INTO KORPA (IdKor, IdArt, Kolicina) VALUES
(1, 3, 1),
(2, 4, 1),
(3, 5, 1),
(4, 6, 1),
(5, 7, 2),
(6, 8, 1),
(7, 9, 1),
(8, 10, 1),
(9, 1, 1),
(10, 2, 2);

INSERT INTO RECENZIJA (IdKor, IdArt, Ocena, Opis, Datum, Vreme) VALUES
(2, 1, 5, 'Radi brzo, nema filozofije', '2025-01-15', '14:00:00'),
(4, 3, 4, 'Idealno uz čaj i ćebe', '2025-01-20', '09:30:00'),
(6, 5, 5, 'Spašava jutra', '2025-02-03', '08:00:00'),
(1, 2, 4, 'Zvuk solidan, komšije nisu oduševljene', '2025-02-06', '22:10:00'),
(3, 10, 5, 'Leđa mi slave', '2025-02-22', '17:45:00'),
(5, 4, 3, 'Topla, ali rukavi kratki', '2025-03-02', '12:00:00'),
(7, 8, 5, 'Klik-klik terapija', '2025-03-04', '18:30:00'),
(8, 9, 4, 'Zvuk kao nekad', '2025-03-06', '21:00:00'),
(9, 6, 4, 'Trčim… ponekad', '2025-03-11', '07:15:00'),
(10, 7, 5, 'Dete oduševljeno, ja isto', '2025-03-16', '19:50:00');
