# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.25)
# Datenbank: it_tool
# Erstellt am: 2016-05-24 06:59:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle bestellpositionen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bestellpositionen`;

CREATE TABLE `bestellpositionen` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bestellungid` int(11) DEFAULT NULL,
  `produktid` int(11) DEFAULT NULL,
  `anzahl` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle bestellung
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bestellung`;

CREATE TABLE `bestellung` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kundenid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0=eingegangen; 1=in bearbeitung; 2=versand; 3=beim Kunden; 4=beschwerde; 5=wahre zurück',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle bewertung
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bewertung`;

CREATE TABLE `bewertung` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `produktid` int(11) DEFAULT NULL,
  `sterne` int(11) DEFAULT NULL,
  `text` text,
  `author` varchar(255) DEFAULT NULL,
  `authorEmail` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle kunde
# ------------------------------------------------------------

DROP TABLE IF EXISTS `kunde`;

CREATE TABLE `kunde` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vorname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `strasse` varchar(255) DEFAULT NULL,
  `plz` int(5) DEFAULT NULL,
  `ort` varchar(255) DEFAULT NULL,
  `passwort` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Export von Tabelle produkte
# ------------------------------------------------------------

DROP TABLE IF EXISTS `produkte`;

CREATE TABLE `produkte` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `produktname` varchar(255) DEFAULT NULL,
  `produktbeschreibung` text,
  `produktfeatures` text,
  `lagerbestand` int(11) DEFAULT NULL,
  `preis` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
