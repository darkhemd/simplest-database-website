-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 17. Feb 2019 um 13:01
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
-- Datenbank: `spielestation`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `farbe`
--

CREATE TABLE `farbe` (
  `Farb_ID` int(11) NOT NULL,
  `Farbe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `farbe`
--

INSERT INTO `farbe` (`Farb_ID`, `Farbe`) VALUES
(1, 'Schwarz'),
(2, 'Weiß'),
(3, 'Grau'),
(4, 'Blau'),
(5, 'Grün'),
(6, 'Rot'),
(7, 'Türkis'),
(8, 'Durchsichtig'),
(9, 'Gelb'),
(10, 'Rosa'),
(11, 'Pink'),
(12, 'Lila'),
(13, 'Orange');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `farbvariante`
--

CREATE TABLE `farbvariante` (
  `Farb_ID` int(11) NOT NULL,
  `Konsole_ID` int(11) NOT NULL,
  `Fv_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `generation`
--

CREATE TABLE `generation` (
  `Gen_ID` int(11) NOT NULL,
  `Erscheinungsjahr` varchar(50) NOT NULL,
  `Vorgänger` varchar(80) NOT NULL,
  `Nachfolger` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `generation`
--

INSERT INTO `generation` (`Gen_ID`, `Erscheinungsjahr`, `Vorgänger`, `Nachfolger`) VALUES
(1, '1972', 'Nicht verfügbar', 'Odyssey 100'),
(2, '1975', 'Nicht verfügbar', 'Nicht verfügbar'),
(3, '1980', 'Atari Home Pong', 'Atari 5200'),
(4, '1982', 'Atari 2600', 'Atari 7800'),
(5, '1985', 'SG-1000', 'Sega Mega Drive'),
(6, '1983', 'Nintendo Color TV Game 15', 'SNES'),
(7, '1982', 'Commodore VC20', 'Commodore 128'),
(8, '1988', 'Sega Master System', 'Sega Saturn'),
(9, '1990', 'NES', 'Nintendo 64'),
(10, '1989', 'Game & Watch', 'Game Boy Color'),
(11, '1990', 'Nicht Verfügbar', 'Nicht Verfügbar'),
(12, '1994', 'Atari 7800', 'Atari Jaguar 2 (Studie)'),
(13, '1994', 'Nicht Verfügbar', 'PlayStation 2'),
(14, '1996', 'Nicht Verfügbar', 'Nicht Verfügbar'),
(15, '1998', 'Nicht Verfügbar', 'Neo Geo Pocket Color'),
(16, '1996', 'SNES', 'Nintendo GameCube'),
(17, '1994', 'Sega Mega Drive', 'Sega Dreamcast'),
(18, '1998', 'Sega Saturn', 'Nicht Verfügbar'),
(19, '2000', 'PlayStation', 'PlayStation 3'),
(20, '2002', 'Nicht Verfügbar', 'Xbox 360'),
(21, '2001', 'Game Boy', 'Nintendo DS'),
(22, '2001', 'Nintendo 64', 'Nintendo Wii'),
(23, '2004', 'VTech Socrates', 'V.Flash'),
(24, '2004', 'Game Boy Advance', 'Nintendo 3DS'),
(25, '2006', 'PlayStation 2', 'PlayStation 4'),
(26, '2004', 'Nicht Verfügbar', 'PlayStation Vita'),
(27, '2006', 'GameCube', 'Wii U'),
(28, '2005', 'XBox', 'XBox One'),
(29, '2011', 'Nintendo DS', 'Nintendo 2DS'),
(30, '2011', 'PSP', 'Nicht Verfügbar'),
(31, '2012', 'Wii', 'Nintendo Switch'),
(32, '2013', 'Nicht Verfügbar', 'Nicht Verfügbar'),
(33, '2013', 'PlayStation 3', 'Nicht Verfügbar'),
(34, '2013', 'XBox 360', 'Nicht Verfügbar'),
(35, '2014', 'Nicht Verfügbar', 'Fire TV 2nd Gen'),
(36, '2017', 'Wii U', 'Nicht Verfügbar'),
(37, '1998', 'Game Boy', 'Nintendo DS'),
(38, '1996', 'Nicht Verfügbar', 'Nicht Verfügbar');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hersteller`
--

CREATE TABLE `hersteller` (
  `Marken_ID` int(11) NOT NULL,
  `Konsole_ID` int(11) NOT NULL,
  `H_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `konsole`
--

CREATE TABLE `konsole` (
  `Konsole_ID` int(11) NOT NULL,
  `Preis` varchar(80) NOT NULL,
  `Name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `konsole`
--

INSERT INTO `konsole` (`Konsole_ID`, `Preis`, `Name`) VALUES
(1, 'Nicht verfügbar', '2000K/3000H'),
(2, '50-99$', 'Odyssey'),
(3, '199$', '2600'),
(4, '269$', '5200'),
(5, '200$', 'Master System'),
(6, '199$', 'Nintendo Entertainment System'),
(7, '595$', 'C64'),
(8, '190£', 'Mega Drive'),
(9, '199$', 'Super Nintendo Entertainment System'),
(10, '89$', 'Game Boy'),
(11, '69$', 'Game Boy Color'),
(12, '179$', 'Lynx'),
(13, '249$', 'Jaguar'),
(14, '299$', 'Playstation'),
(15, '599$', 'Pippin'),
(16, '649$', 'Neo Geo'),
(17, '69$', 'Neo Geo Pocket'),
(18, '199$', 'Nintendo 64'),
(19, '399$', 'Saturn'),
(20, '199$', 'Dreamcast'),
(21, '299$', 'Playstation 2'),
(22, '299$', 'Xbox'),
(23, '99$', 'Game Boy Advance'),
(24, '199$', 'Gamecube'),
(25, 'Nicht verfügbar', 'V.Smile'),
(26, '149$', 'DS'),
(27, '499$', 'Playstation 3'),
(28, '249$', 'Playstation Portable'),
(29, '249$', 'Wii'),
(30, '299$', 'Xbox 360'),
(31, '249$', '3DS'),
(32, '249$', 'Playstation Vita'),
(33, '349$', 'Wii U'),
(34, '299$', 'Shield Portable'),
(35, '299$', 'Shield TV'),
(36, '299$', 'Shield Tablet'),
(37, '399$', 'Playstation 4'),
(38, '499$', 'Xbox One'),
(39, '99$', 'Fire TV'),
(40, '299$', 'Switch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `konsolen_art`
--

CREATE TABLE `konsolen_art` (
  `Art_ID` int(11) NOT NULL,
  `Art` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `konsolen_art`
--

INSERT INTO `konsolen_art` (`Art_ID`, `Art`) VALUES
(1, 'Handheld'),
(2, 'Hybrid'),
(3, 'Heimkonsole');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `konsolen_gen`
--

CREATE TABLE `konsolen_gen` (
  `Konsole_ID` int(11) NOT NULL,
  `Gen_ID` int(11) NOT NULL,
  `KN_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `konsolen_technik`
--

CREATE TABLE `konsolen_technik` (
  `Konsole ID` int(11) NOT NULL,
  `Technik_ID` int(11) NOT NULL,
  `KTech_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `konsolen_typ`
--

CREATE TABLE `konsolen_typ` (
  `Konsole_ID` int(11) NOT NULL,
  `Art_ID` int(11) NOT NULL,
  `KT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `marke`
--

CREATE TABLE `marke` (
  `Marken_ID` int(11) NOT NULL,
  `Herstellername` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `marke`
--

INSERT INTO `marke` (`Marken_ID`, `Herstellername`) VALUES
(1, 'Sony'),
(2, 'Microsoft'),
(3, 'Nintendo'),
(4, 'Sega'),
(5, 'Atari'),
(6, 'Apple'),
(7, 'Amazon'),
(8, 'Nvidia'),
(9, 'VTech'),
(10, 'Commodore'),
(12, 'Magnavox'),
(13, 'SNK');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `technik`
--

CREATE TABLE `technik` (
  `Technik_ID` int(11) NOT NULL,
  `Unterstützte_Medien` varchar(80) NOT NULL,
  `Hardware_Architektur` varchar(80) NOT NULL,
  `Auflösung` varchar(80) NOT NULL,
  `Internetfähig` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `technik`
--

INSERT INTO `technik` (`Technik_ID`, `Unterstützte_Medien`, `Hardware_Architektur`, `Auflösung`, `Internetfähig`) VALUES
(1, 'Drehscheibe', 'Custom-Chip', 'unbekannt', 0),
(2, 'Karten', 'Dioden-Transistor-Logik-Schaltungen', 'unbekannt', 0),
(3, 'Spielekasseten', 'Mos Technologies 6507', 'Fernseher bedingt', 0),
(4, 'Spielekasetten', '6502C Sally', '320x200', 0),
(5, 'Spielekasetten', '8 Bit', '256x192', 0),
(6, 'Kasetten', '8 Bit', '256x224', 0),
(7, '170-KB-Disketten', '8 Bit', '320x200', 0),
(8, 'Mega-CD/CD-Rom', '16-Bit', '320x224', 0),
(9, 'SNES-Module', '16 Bit', '512xZeilen', 0),
(10, 'Gameboy Steckmodule', '8 Bit', '160x144', 0),
(11, 'Rom cartridge', '8 Bit', '160x144', 0),
(12, 'Cartridges', '8 Bit', '160x102', 0),
(13, 'JaguarCD', '64 Bit', '?', 0),
(14, 'CD', '32 Bit', '640x480', 0),
(15, 'CD', '?', '?', 0),
(16, 'SNK Module, CD', '16 Bit', '320x240', 0),
(17, 'Module', '32 Bit', '256x156', 0),
(18, 'Steckmodule', '64 Bit', '768x576', 0),
(19, 'Module, CD-ROM', '32 Bit', '704x480', 0),
(20, 'GD-ROM, CD', '32 Bit', '1600x1200', 1),
(21, 'DVD, CD', '32 Bit', '1280x1024', 1),
(22, 'DVD, CD, HDD', '32 Bit', '1080i', 1),
(23, 'cartridges', '32 Bit', '160x240', 1),
(24, 'MiniDVD', '32 Bit', '720x576', 0),
(25, 'ROM cartridges', '?', '?', 0),
(26, 'DS Module', 'ARM946E-S', '256x192', 0),
(27, 'CD, DVD', '32 BIT', '1920x1080', 1),
(28, 'UMDs, Memory Stick Pro Duo, Memory Stick Micro', '32 BIT', '480x272', 1),
(29, 'CD', '32 BIT', '852x480', 1),
(30, 'microSD', '32 Bit', '1280x720', 1),
(31, 'MicroSD, USB', '32 Bit ', '1920x1080', 1),
(32, 'MicroSD', '32 Bit', '1920x1200', 1),
(33, 'CD, DVD, Blu-ray', '32 Bit', '3840x2160', 1),
(34, 'CD, DVD, Blu-ray', '64 Bit', '1920x1080', 1),
(35, 'keine', '32 Bit', '1920x1080', 1),
(36, 'Game Card, microSDXC-Karte', 'Tegra', '1920x1080', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `farbe`
--
ALTER TABLE `farbe`
  ADD PRIMARY KEY (`Farb_ID`);

--
-- Indizes für die Tabelle `farbvariante`
--
ALTER TABLE `farbvariante`
  ADD PRIMARY KEY (`Farb_ID`,`Konsole_ID`),
  ADD KEY `Konsole_ID` (`Konsole_ID`);

--
-- Indizes für die Tabelle `generation`
--
ALTER TABLE `generation`
  ADD PRIMARY KEY (`Gen_ID`);

--
-- Indizes für die Tabelle `hersteller`
--
ALTER TABLE `hersteller`
  ADD PRIMARY KEY (`Marken_ID`,`Konsole_ID`),
  ADD KEY `Konsole_ID` (`Konsole_ID`);

--
-- Indizes für die Tabelle `konsole`
--
ALTER TABLE `konsole`
  ADD PRIMARY KEY (`Konsole_ID`);

--
-- Indizes für die Tabelle `konsolen_art`
--
ALTER TABLE `konsolen_art`
  ADD PRIMARY KEY (`Art_ID`);

--
-- Indizes für die Tabelle `konsolen_gen`
--
ALTER TABLE `konsolen_gen`
  ADD PRIMARY KEY (`Konsole_ID`,`Gen_ID`),
  ADD KEY `Gen_ID` (`Gen_ID`);

--
-- Indizes für die Tabelle `konsolen_technik`
--
ALTER TABLE `konsolen_technik`
  ADD PRIMARY KEY (`Konsole ID`,`Technik_ID`),
  ADD KEY `Technik_ID` (`Technik_ID`);

--
-- Indizes für die Tabelle `konsolen_typ`
--
ALTER TABLE `konsolen_typ`
  ADD PRIMARY KEY (`Konsole_ID`,`Art_ID`),
  ADD KEY `Art_ID` (`Art_ID`);

--
-- Indizes für die Tabelle `marke`
--
ALTER TABLE `marke`
  ADD PRIMARY KEY (`Marken_ID`);

--
-- Indizes für die Tabelle `technik`
--
ALTER TABLE `technik`
  ADD PRIMARY KEY (`Technik_ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `farbe`
--
ALTER TABLE `farbe`
  MODIFY `Farb_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `generation`
--
ALTER TABLE `generation`
  MODIFY `Gen_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT für Tabelle `konsole`
--
ALTER TABLE `konsole`
  MODIFY `Konsole_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT für Tabelle `konsolen_art`
--
ALTER TABLE `konsolen_art`
  MODIFY `Art_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `marke`
--
ALTER TABLE `marke`
  MODIFY `Marken_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `technik`
--
ALTER TABLE `technik`
  MODIFY `Technik_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `farbvariante`
--
ALTER TABLE `farbvariante`
  ADD CONSTRAINT `farbvariante_ibfk_1` FOREIGN KEY (`Farb_ID`) REFERENCES `farbe` (`Farb_ID`),
  ADD CONSTRAINT `farbvariante_ibfk_2` FOREIGN KEY (`Konsole_ID`) REFERENCES `konsole` (`Konsole_ID`);

--
-- Constraints der Tabelle `hersteller`
--
ALTER TABLE `hersteller`
  ADD CONSTRAINT `hersteller_ibfk_1` FOREIGN KEY (`Marken_ID`) REFERENCES `marke` (`Marken_ID`),
  ADD CONSTRAINT `hersteller_ibfk_2` FOREIGN KEY (`Konsole_ID`) REFERENCES `konsole` (`Konsole_ID`);

--
-- Constraints der Tabelle `konsolen_gen`
--
ALTER TABLE `konsolen_gen`
  ADD CONSTRAINT `konsolen_gen_ibfk_1` FOREIGN KEY (`Gen_ID`) REFERENCES `generation` (`Gen_ID`),
  ADD CONSTRAINT `konsolen_gen_ibfk_2` FOREIGN KEY (`Konsole_ID`) REFERENCES `konsole` (`Konsole_ID`);

--
-- Constraints der Tabelle `konsolen_technik`
--
ALTER TABLE `konsolen_technik`
  ADD CONSTRAINT `konsolen_technik_ibfk_1` FOREIGN KEY (`Technik_ID`) REFERENCES `technik` (`Technik_ID`),
  ADD CONSTRAINT `konsolen_technik_ibfk_2` FOREIGN KEY (`Konsole ID`) REFERENCES `konsole` (`Konsole_ID`);

--
-- Constraints der Tabelle `konsolen_typ`
--
ALTER TABLE `konsolen_typ`
  ADD CONSTRAINT `konsolen_typ_ibfk_1` FOREIGN KEY (`Art_ID`) REFERENCES `konsolen_art` (`Art_ID`),
  ADD CONSTRAINT `konsolen_typ_ibfk_2` FOREIGN KEY (`Konsole_ID`) REFERENCES `konsole` (`Konsole_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
