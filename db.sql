CREATE DATABASE Sprava_Trestu;

USE Sprava_Trestu;

CREATE TABLE
    Recidivista(
        idR INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        Jmeno VARCHAR(30) NOT NULL,
        Prijmeni VARCHAR(40) NOT NULL,
        Rc VARCHAR(11) NOT NULL,
        Pohlavi BOOLEAN NOT NULL,
        idV INT NOT NULL
    );

CREATE TABLE
    Trest(
        idT INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        Nazev VARCHAR(50) NOT NULL,
        Zacatek_trestu DATE NOT NULL,
        Konec_trestu DATE NOT NULL,
        Podminka BOOLEAN NOT NULL,
        idR INT NOT NULL,
        idTC INT NOT NULL
    );

CREATE TABLE
    Trestny_cin(
        idTC INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        Nazev VARCHAR(50) NOT NULL,
        RozmeziDH INT NOT NULL,
        RozmeziHH INT NOT NULL
    );

CREATE TABLE
    Veznice(
        idV INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        Nazev VARCHAR(50) NOT NULL,
        Adresa VARCHAR(50) NOT NULL,
        Mesto VARCHAR(30) NOT NULL,
        Telefon INT(9) NOT NULL,
        Email VARCHAR(30) NOT NULL
    );

ALTER TABLE Trest
ADD
    CONSTRAINT fk_trest_trestny_cin FOREIGN KEY(idTC) REFERENCES Trestny_cin(idTC);

ALTER TABLE Trest
ADD
    CONSTRAINT fk_trest_recidivista FOREIGN KEY(idR) REFERENCES Recidivista(idR);

ALTER TABLE Recidivista
ADD
    CONSTRAINT fk_recidivista_veznice FOREIGN KEY(idV) REFERENCES Veznice(idV);

INSERT INTO
    Veznice(
        Nazev,
        Adresa,
        Mesto,
        Telefon,
        Email
    )
VALUES (
        "Věznice Heřmanice",
        "Orlovská 670/35",
        "Ostrava",
        595220111,
        "e-podatelna@grvs.justice.cz"
    );

INSERT INTO
    Veznice(
        Nazev,
        Adresa,
        Mesto,
        Telefon,
        Email
    )
VALUES (
        "Věznice Mírov",
        "Mírov 27",
        "Mírov",
        583488111,
        "e-podatelna@grvs.justice.cz"
    );

INSERT INTO
    Veznice(
        Nazev,
        Adresa,
        Mesto,
        Telefon,
        Email
    )
VALUES (
        "Věznice Karviná",
        "Fryštátská 178",
        "Karviná",
        596308111,
        "e-podatelna@grvs.justice.cz"
    );

INSERT INTO
    Veznice(
        Nazev,
        Adresa,
        Mesto,
        Telefon,
        Email
    )
VALUES (
        "Věznice Karviná",
        "Fryštátská 178",
        "Karviná",
        596308111,
        "e-podatelna@grvs.justice.cz"
    );

INSERT INTO
    Veznice(
        Nazev,
        Adresa,
        Mesto,
        Telefon,
        Email
    )
VALUES (
        "Věznice Valdice",
        "nám. Míru 55",
        "Valdice",
        493507111,
        "e-podatelna@grvs.justice.cz"
    );

INSERT INTO
    Trestny_cin(Nazev, RozmeziDH, RozmeziHH)
VALUES("Vražda", 60, 144);

INSERT INTO
    Trestny_cin(Nazev, RozmeziDH, RozmeziHH)
VALUES("Krádež", 24, 72);

INSERT INTO
    Trestny_cin(Nazev, RozmeziDH, RozmeziHH)
VALUES ("Loupežné přepadení", 6, 24);

INSERT INTO
    Trestny_cin(Nazev, RozmeziDH, RozmeziHH)
VALUES("Zneužití", 36, 60);

INSERT INTO
    Trestny_cin(Nazev, RozmeziDH, RozmeziHH)
VALUES("Pedofilie", 84, 144);

INSERT INTO
    Recidivista(
        Jmeno,
        Prijmeni,
        Rc,
        Pohlavi,
        idV
    )
VALUES (
        "Jonáš",
        "Wittek",
        "050806/6548",
        0,
        1
    );

INSERT INTO
    Recidivista(
        Jmeno,
        Prijmeni,
        Rc,
        Pohlavi,
        idV
    )
VALUES (
        "Adam",
        "Remeš",
        "040624/5461",
        0,
        2
    );

INSERT INTO
    Recidivista(
        Jmeno,
        Prijmeni,
        Rc,
        Pohlavi,
        idV
    )
VALUES (
        "Jakub",
        "Sikora",
        "030614/5541",
        0,
        1
    );

INSERT INTO
    Recidivista(
        Jmeno,
        Prijmeni,
        Rc,
        Pohlavi,
        idV
    )
VALUES (
        "Václav",
        "Maňásek",
        "051206/4771",
        0,
        2
    );

INSERT INTO
    Recidivista(
        Jmeno,
        Prijmeni,
        Rc,
        Pohlavi,
        idV
    )
VALUES (
        "Julie",
        "Pořízková",
        "045518/0361",
        1,
        1
    );

INSERT INTO
    Trest(
        Nazev,
        Zacatek_trestu,
        Konec_trestu,
        Podminka,
        idR,
        idTC
    )
VALUES (
        "Vražda",
        '2019-7-04',
        '2028-7-04',
        0,
        1,
        1
    );

INSERT INTO
    Trest(
        Nazev,
        Zacatek_trestu,
        Konec_trestu,
        Podminka,
        idR,
        idTC
    )
VALUES (
        "Zneužití",
        '2021-6-24',
        '2023-6-24',
        1,
        1,
        2
    );

SELECT * FROM Recidivista WHERE Pohlavi = 0;

SELECT * FROM Recidivista WHERE Pohlavi = 1;