-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 19. Feb 2019 um 16:57
-- Server-Version: 10.1.37-MariaDB
-- PHP-Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `test1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `anmeldung`
--

CREATE TABLE `anmeldung` (
  `Name` varchar(200) NOT NULL,
  `Passwort` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `anmeldung`
--

INSERT INTO `anmeldung` (`Name`, `Passwort`) VALUES
('root', 'root123!'),
('Internetuser', 'test234'),
('Museum', 'museum');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `konsole`
--

CREATE TABLE `konsole` (
  `ID` int(11) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `Preis` varchar(80) NOT NULL,
  `Marke` varchar(80) NOT NULL,
  `Art` varchar(80) NOT NULL,
  `Unterstuetzte_Medien` varchar(80) NOT NULL,
  `Hardware_Architektur` varchar(80) NOT NULL,
  `Aufloesung` varchar(80) NOT NULL,
  `Erscheinungsjahr` varchar(50) NOT NULL,
  `Vorgaenger` varchar(80) NOT NULL,
  `Nachfolger` varchar(80) NOT NULL,
  `Farbe` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `konsole`
--

INSERT INTO `konsole` (`ID`, `Name`, `Preis`, `Marke`, `Art`, `Unterstuetzte_Medien`, `Hardware_Architektur`, `Aufloesung`, 
`Erscheinungsjahr`, `Vorgaenger`, `Nachfolger`, `Farbe`) VALUES
(1, 'Switch', '299$', 'Nintendo', 'Hybrid', 'Game Card, microSDXC-Karte', 'Tegra', '1920x1080', '2017', 'Wii', '/', 'Grau'),
(2, 'PlayStation 4', '399$', 'Sony', 'Heimkonsole', 'Blu-Ray', 'x86', '1920x1080', '2013', 'PlayStation 3', '/', 'Schwarz'),
(3, 'XBox One', '499$', 'Microsoft', 'Heimkonsole', 'Blu-Ray', 'x86', '192x1080', '2013', 'XBox 360', '/', 'Schwarz'),
(4, 'DS', '149$', 'Nintendo', 'Handheld', 'Memory Card', 'ARM', '256x192', '2004', 'Game Boy', '3DS', 'Weiß'),
(5, 'PSP', '249$', 'Sony', 'Handheld', 'Universal Media Disc', 'Proprietär', '480x272', '2005', '/', 'PSVita', 'Schwarz Silber');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `konsole`
--
ALTER TABLE `konsole`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `konsole`
--
ALTER TABLE `konsole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
