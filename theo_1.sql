-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 21, 2022 at 10:01 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theo`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonnement`
--

CREATE TABLE `abonnement` (
  `ID_ABONNEMENT` int(11) NOT NULL,
  `DEBUT_ADHESION` date NOT NULL,
  `FIN_ADHESION` date DEFAULT NULL,
  `ID_UTILISATEUR` int(11) NOT NULL,
  `ID_TYPE_ABONNEMENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `artiste`
--

CREATE TABLE `artiste` (
  `ID_ARTISTE` int(11) NOT NULL,
  `NOM` varchar(30) NOT NULL,
  `PRENOM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `casette`
--

CREATE TABLE `casette` (
  `ID_CASSETTE` int(11) NOT NULL,
  `TITRE_CASSETTE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categorie_social`
--

CREATE TABLE `categorie_social` (
  `ID_CATEGORIE_SOCIAL` int(11) NOT NULL,
  `CATEGORIE_SOCIAL` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categoriser`
--

CREATE TABLE `categoriser` (
  `ID_FILM` int(11) NOT NULL,
  `ID_GENRE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `commune`
--

CREATE TABLE `commune` (
  `ID_COMMUNE` int(11) NOT NULL,
  `VILLE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `composer`
--

CREATE TABLE `composer` (
  `ID_MUSIQUE` int(11) NOT NULL,
  `ID_ARTISTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `concevoir`
--

CREATE TABLE `concevoir` (
  `ID_FILM` int(11) NOT NULL,
  `ID_ARTISTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `disques`
--

CREATE TABLE `disques` (
  `ID_DISQUE` int(11) NOT NULL,
  `TITRES_DISQUE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ecouter`
--

CREATE TABLE `ecouter` (
  `ID_DISQUE` int(11) NOT NULL,
  `ID_MUSIQUE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emprunt`
--

CREATE TABLE `emprunt` (
  `ID_EMPRUNT` int(11) NOT NULL,
  `DATE_EMPRUNT` date NOT NULL,
  `ID_ABONNEMENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emprunter`
--

CREATE TABLE `emprunter` (
  `ID_EMPRUNT` int(11) NOT NULL,
  `ID_OBJET` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `ID_FILM` int(11) NOT NULL,
  `TITRE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `ID_GENRE` int(11) NOT NULL,
  `GENRE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `interpreter`
--

CREATE TABLE `interpreter` (
  `ID_MUSIQUE` int(11) NOT NULL,
  `ID_ARTISTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jouer`
--

CREATE TABLE `jouer` (
  `ID_FILM` int(11) NOT NULL,
  `ID_ARTISTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `ID_MUSIQUE` int(11) NOT NULL,
  `TITRE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `objet`
--

CREATE TABLE `objet` (
  `ID_OBJET` int(11) NOT NULL,
  `NOMBRE_ARTICLE` int(11) NOT NULL,
  `PRIX_OBJET` float NOT NULL,
  `ID_PENALITE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `penalite`
--

CREATE TABLE `penalite` (
  `ID_PENALITE` int(11) NOT NULL,
  `TYPE_OBJET` varchar(30) NOT NULL,
  `PRIX_J_PENALITER` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `produire`
--

CREATE TABLE `produire` (
  `ID_MUSIQUE` int(11) NOT NULL,
  `ID_ARTISTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rendre`
--

CREATE TABLE `rendre` (
  `ID_RETOUR` int(11) NOT NULL,
  `ID_OBJET` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `retour`
--

CREATE TABLE `retour` (
  `ID_RETOUR` int(11) NOT NULL,
  `RETOUR_DATE_RENDU` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `retourner`
--

CREATE TABLE `retourner` (
  `ID_RETOUR` int(11) NOT NULL,
  `ID_EMPRUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `type_abonnement`
--

CREATE TABLE `type_abonnement` (
  `ID_TYPE_ABONNEMENT` int(11) NOT NULL,
  `PRIX_PAR_MOIS` float NOT NULL,
  `NOMBRE_EMPUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID_UTILISATEUR` int(11) NOT NULL,
  `NOM` varchar(3) NOT NULL,
  `PRENOM` varchar(30) NOT NULL,
  `MAIL` text NOT NULL,
  `ID_COMMUNE` int(11) NOT NULL,
  `ID_CATEGORIE_SOCIAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visioner`
--

CREATE TABLE `visioner` (
  `ID_CASSETTE` int(11) NOT NULL,
  `ID_FILM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`ID_ABONNEMENT`),
  ADD KEY `user_id_user_foreign` (`ID_Utilisateur`),
  ADD KEY `type_abonnement_id_type_abonnement_foreign` (`ID_TYPE_ABONNEMENT`);


--
-- Indexes for table `artiste`
--
ALTER TABLE `artiste`
  ADD PRIMARY KEY (`ID_ARTISTE`);

--
-- Indexes for table `casette`
--
ALTER TABLE `casette`
  ADD PRIMARY KEY (`ID_CASSETTE`);

--
-- Indexes for table `categorie_social`
--
ALTER TABLE `categorie_social`
  ADD PRIMARY KEY (`ID_CATEGORIE_SOCIAL`);

--
-- Indexes for table `categoriser`
--
ALTER TABLE `categoriser`
  ADD PRIMARY KEY (`ID_FILM`,`ID_GENRE`);

--
-- Indexes for table `commune`
--
ALTER TABLE `commune`
  ADD PRIMARY KEY (`ID_COMMUNE`);

--
-- Indexes for table `composer`
--
ALTER TABLE `composer`
  ADD PRIMARY KEY (`ID_MUSIQUE`,`ID_ARTISTE`);

--
-- Indexes for table `concevoir`
--
ALTER TABLE `concevoir`
  ADD PRIMARY KEY (`ID_FILM`,`ID_ARTISTE`);

--
-- Indexes for table `disques`
--
ALTER TABLE `disques`
  ADD PRIMARY KEY (`ID_DISQUE`);

--
-- Indexes for table `ecouter`
--
ALTER TABLE `ecouter`
  ADD PRIMARY KEY (`ID_MUSIQUE`,`ID_DISQUE`);

--
-- Indexes for table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`ID_EMPRUNT`),
  ADD KEY `abo_id_abo_foreign` (`ID_ABONNEMENT`);

--
-- Indexes for table `emprunter`
--
ALTER TABLE `emprunter`
  ADD PRIMARY KEY (`ID_EMPRUNT`,`ID_OBJET`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`ID_FILM`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`ID_GENRE`);

--
-- Indexes for table `interpreter`
--
ALTER TABLE `interpreter`
  ADD PRIMARY KEY (`ID_MUSIQUE`,`ID_ARTISTE`);

--
-- Indexes for table `jouer`
--
ALTER TABLE `jouer`
  ADD PRIMARY KEY (`ID_FILM`,`ID_ARTISTE`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`ID_MUSIQUE`);

--
-- Indexes for table `objet`
--
ALTER TABLE `objet`
  ADD PRIMARY KEY (`ID_OBJET`),
    ADD KEY `penalite_id_penalite_foreign` (`ID_PENALITE`);

--
-- Indexes for table `penalite`
--
ALTER TABLE `penalite`
  ADD PRIMARY KEY (`ID_PENALITE`);

--
-- Indexes for table `produire`
--
ALTER TABLE `produire`
  ADD PRIMARY KEY (`ID_MUSIQUE`,`ID_ARTISTE`);

--
-- Indexes for table `rendre`
--
ALTER TABLE `rendre`
  ADD PRIMARY KEY (`ID_RETOUR`,`ID_OBJET`);

--
-- Indexes for table `retour`
--
ALTER TABLE `retour`
  ADD PRIMARY KEY (`ID_RETOUR`);

--
-- Indexes for table `retourner`
--
ALTER TABLE `retourner`
  ADD PRIMARY KEY (`ID_RETOUR`,`ID_EMPRUNT`);

--
-- Indexes for table `type_abonnement`
--
ALTER TABLE `type_abonnement`
  ADD PRIMARY KEY (`ID_TYPE_ABONNEMENT`);
  

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID_UTILISATEUR`),
  ADD KEY `commune_id_commune_foreign` (`ID_COMMUNE`),
  ADD KEY `categorie_social_id_categorie_social_foreign` (`ID_CATEGORIE_SOCIAL`);

--
-- Indexes for table `visioner`
--
ALTER TABLE `visioner`
  ADD PRIMARY KEY (`ID_CASSETTE`,`ID_FILM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abonnement`
--
ALTER TABLE `abonnement`
  MODIFY `ID_ABONNEMENT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artiste`
--
ALTER TABLE `artiste`
  MODIFY `ID_ARTISTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casette`
--
ALTER TABLE `casette`
  MODIFY `ID_CASSETTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorie_social`
--
ALTER TABLE `categorie_social`
  MODIFY `ID_CATEGORIE_SOCIAL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commune`
--
ALTER TABLE `commune`
  MODIFY `ID_COMMUNE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disques`
--
ALTER TABLE `disques`
  MODIFY `ID_DISQUE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `ID_EMPRUNT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `ID_FILM` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `ID_GENRE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `ID_MUSIQUE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `objet`
--
ALTER TABLE `objet`
  MODIFY `ID_OBJET` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penalite`
--
ALTER TABLE `penalite`
  MODIFY `ID_PENALITE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `retour`
--
ALTER TABLE `retour`
  MODIFY `ID_RETOUR` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_abonnement`
--
ALTER TABLE `type_abonnement`
  MODIFY `ID_TYPE_ABONNEMENT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `ID_UTILISATEUR` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `categorie_social_id_categorie_social_foreign` FOREIGN KEY (`ID_CATEGORIE_SOCIAL`) REFERENCES `categorie_social` (`ID_CATEGORIE_SOCIAL`),
  ADD CONSTRAINT `commune_id_commune_foreign` FOREIGN KEY (`ID_COMMUNE`) REFERENCES `commune` (`ID_COMMUNE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
