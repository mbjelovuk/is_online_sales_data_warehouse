INSERT INTO KORISNIK (Ime, Prezime, Mobilni, Email, Godiste, Pol, IdMes) VALUES
('Aleksandar', 'Kovačević', '0634567890', 'aleksandar.k@primer.rs', 1988, 'M', 3),
('Marija', 'Lazić', '0645678901', 'marija.l@primer.rs', 1993, 'Ž', 4);

INSERT INTO ARTIKAL (Naziv, Opis, Cena, Popust, Kolicina, IdKor, IdKat) VALUES
('Gaming miš', 'Brži od reakcije na ispitno pitanje', 3500, 5, 25, 3, 7),
('Yoga prostirka', 'Za fleksibilnost tela i rokova', 2200, 0, 18, 6, 5),
('Stona lampa', 'Svetli čak i kad motivacija ne', 4100, 10, 9, 8, 9),
('Pametni sat', 'Pametan skoro kao vlasnik', 12000, 5, 14, 1, 1);

INSERT INTO NARUDZBINA (IdKor, Datum, Vreme, Iznos) VALUES
(2, '2025-04-02', '13:10:00', 3325),
(5, '2025-04-05', '21:05:00', 2200),
(7, '2025-04-07', '10:45:00', 3690),
(3, '2025-04-10', '15:25:00', 11400),
(11, '2025-04-12', '16:35:00', 4100),
(12, '2025-04-15', '09:55:00', 3500),
(9, '2024-04-12', '16:34:00', 4200),
(12, '2023-04-15', '08:55:00', 3800);

INSERT INTO STAVKA (IdNar, IdArt, Kolicina, Iznos) VALUES
(11, 11, 1, 3325),
(12, 12, 1, 2200),
(13, 13, 1, 3690),
(14, 14, 1, 11400),
(15, 13, 1, 4100),
(16, 11, 1, 3500),
(17, 13, 2, 8400),
(18, 11, 2, 7600);

INSERT INTO RECENZIJA (IdKor, IdArt, Ocena, Opis, Datum, Vreme) VALUES
(2, 11, 5, 'Klik precizan, ego porastao', '2025-04-03', '18:20:00'),
(5, 12, 4, 'Vežbam… ponekad. Prostirka ne osuđuje.', '2025-04-06', '07:50:00'),
(7, 13, 5, 'Konačno vidim tastaturu noću', '2025-04-08', '23:15:00'),
(3, 14, 4, 'Motiviše me da hodam… makar do frižidera', '2025-04-11', '09:05:00'),
(11, 13, 4, 'Svetli super, ali boja malo bleda', '2025-04-13', '20:45:00'),
(12, 11, 5, 'Brz miš, idealan za multitasking', '2025-04-16', '12:15:00'),
(1, 11, 5, 'Najbolji miš ikad, kupujem još', '2025-04-18', '14:30:00'),
(3, 14, 2, 'Sat je OK, ali baterija traje 2 dana', '2025-04-19', '09:10:00'),
(7, 13, 4, 'Lampa super, samo što je malo bučna', '2025-04-20', '22:45:00'),
(11, 13, 3, 'Lampa svetli, ali dizajn je staromodan', '2025-04-21', '17:55:00'),
(2, 12, 5, 'Prostirka top, vežbam svaki dan sad', '2025-04-22', '08:20:00'),
(5, 12, 3, 'Dobra prostirka, ali klizi po podu', '2025-04-23', '19:40:00'),
(6, 11, 4, 'Miš je brz, ali dugme malo škripi', '2024-04-24', '11:15:00'),
(12, 11, 5, 'Super miš, preporučujem svima', '2024-04-25', '16:05:00'),
(5, 1, 3, 'Solidan laptop, ali spor HD', '2025-05-01', '10:00:00'),
(8, 2, 5, 'Slušalice su vrh!', '2025-05-02', '11:00:00'),
(2, 2, 2, 'Pukla plastika posle 2 dana', '2025-05-03', '12:00:00'),
(10, 8, 4, 'Tastatura je ok', '2025-05-04', '13:00:00'),
(4, 11, 2, 'Miš se kvari često', '2025-05-05', '14:00:00'),
(1, 6, 5, 'Traka je profi', '2025-05-06', '15:00:00'),
(9, 12, 1, 'Prostirka se kruni', '2025-05-07', '16:00:00');

