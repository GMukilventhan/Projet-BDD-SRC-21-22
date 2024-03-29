
CREATE DATABASE Médiathéque;
USE Médiathéque;


CREATE TABLE `abonnement` (
	`ID_ABONNEMENT` int(11) NOT NULL,
	`DEBUT_ADHESION` date NOT NULL,
	`FIN_ADHESION` date DEFAULT NULL,
	`ID_UTILISATEUR` int(11) NOT NULL,
	`ID_TYPE_ABONNEMENT` int(11) NOT NULL
);

CREATE TABLE `artiste` (
	`ID_ARTISTE` int(11) NOT NULL,
	`NOM` varchar(30) NOT NULL,
	`PRENOM` varchar(30) NOT NULL
);

CREATE TABLE `cassette` (
	`ID_CASSETTE` int(11) NOT NULL,
	`TITRE_CASSETTE` varchar(30) NOT NULL
);

CREATE TABLE `categorie_social` (
	`ID_CATEGORIE_SOCIAL` int(11) NOT NULL,
	`CATEGORIE_SOCIAL` varchar(30) NOT NULL
);

CREATE TABLE `categoriser` (
	`ID_FILM` int(11) NOT NULL,
	`ID_GENRE` int(11) NOT NULL
);

CREATE TABLE `commune` (
	`ID_COMMUNE` int(11) NOT NULL,
	`VILLE` varchar(30) NOT NULL
);

CREATE TABLE `composer` (
	`ID_MUSIQUE` int(11) NOT NULL,
	`ID_ARTISTE` int(11) NOT NULL
);

CREATE TABLE `concevoir` (
	`ID_FILM` int(11) NOT NULL,
	`ID_ARTISTE` int(11) NOT NULL
);

CREATE TABLE `disque` (
	`ID_DISQUE` int(11) NOT NULL,
	`TITRES_DISQUE` varchar(30) NOT NULL
);

CREATE TABLE `ecouter` (
	`ID_DISQUE` int(11) NOT NULL,
	`ID_MUSIQUE` int(11) NOT NULL
);

CREATE TABLE `emprunt` (
	`ID_EMPRUNT` int(11) NOT NULL,
	`DATE_EMPRUNT` date NOT NULL,
	`ID_ABONNEMENT` int(11) NOT NULL
);

CREATE TABLE `emprunter` (
	`ID_EMPRUNT` int(11) NOT NULL,
	`ID_OBJET` int(11) NOT NULL
);

CREATE TABLE `film` (
	`ID_FILM` int(11) NOT NULL,
	`TITRE` varchar(30) NOT NULL
);

CREATE TABLE `genre` (
	`ID_GENRE` int(11) NOT NULL,
	`GENRE` varchar(30) NOT NULL
);

CREATE TABLE `interpreter` (
	`ID_MUSIQUE` int(11) NOT NULL,
	`ID_ARTISTE` int(11) NOT NULL
);

CREATE TABLE `jouer` (
	`ID_FILM` int(11) NOT NULL,
	`ID_ARTISTE` int(11) NOT NULL
);

CREATE TABLE `music` (
	`ID_MUSIQUE` int(11) NOT NULL,
	`TITRE` varchar(30) NOT NULL
);

CREATE TABLE `objet` (
	`ID_OBJET` int(11) NOT NULL,
	`NOMBRE_ARTICLE` int(11) NOT NULL,
	`PRIX_OBJET` float NOT NULL,
	`ID_PENALITE` int(11) NOT NULL,
	`ID_CASSETTE` int(11) NULL,
	`ID_DISQUE` int(11) NULL
);

CREATE TABLE `penalite` (
	`ID_PENALITE` int(11) NOT NULL,
	`TYPE_OBJET` varchar(30) NOT NULL,
	`PRIX_J_PENALITER` float NOT NULL
);

CREATE TABLE `produire` (
	`ID_MUSIQUE` int(11) NOT NULL,
	`ID_ARTISTE` int(11) NOT NULL
);

CREATE TABLE `rendre` (
	`ID_RETOUR` int(11) NOT NULL,
	`ID_OBJET` int(11) NOT NULL
);

CREATE TABLE `retour` (
	`ID_RETOUR` int(11) NOT NULL,
	`RETOUR_DATE_RENDU` date NOT NULL
);

CREATE TABLE `retourner` (
	`ID_RETOUR` int(11) NOT NULL,
	`ID_EMPRUNT` int(11) NOT NULL
);

CREATE TABLE `type_abonnement` (
	`ID_TYPE_ABONNEMENT` int(11) NOT NULL,
	`PRIX_PAR_MOIS` float NOT NULL,
	`NOMBRE_EMPUNT` int(11) NOT NULL
);

CREATE TABLE `utilisateur` (
	`ID_UTILISATEUR` int(11) NOT NULL,
	`NOM` varchar(30) NOT NULL,
	`PRENOM` varchar(30) NOT NULL,
	`MAIL` text NOT NULL,
	`ID_COMMUNE` int(11) NOT NULL,
	`ID_CATEGORIE_SOCIAL` int(11) NOT NULL
);

CREATE TABLE `visioner` (
	`ID_CASSETTE` int(11) NOT NULL,
	`ID_FILM` int(11) NOT NULL
);

--
-- Indexes for dumped tables
--

ALTER TABLE `abonnement`
	ADD PRIMARY KEY (`ID_ABONNEMENT`),
	ADD KEY `user_id_user_foreign` (`ID_Utilisateur`),
	ADD KEY `type_abonnement_id_type_abonnement_foreign` (`ID_TYPE_ABONNEMENT`);

ALTER TABLE `artiste`
	ADD PRIMARY KEY (`ID_ARTISTE`);

ALTER TABLE `cassette`
	ADD PRIMARY KEY (`ID_CASSETTE`);

ALTER TABLE `categorie_social`
	ADD PRIMARY KEY (`ID_CATEGORIE_SOCIAL`);

ALTER TABLE `categoriser`
	ADD PRIMARY KEY (`ID_FILM`,`ID_GENRE`);

ALTER TABLE `commune`
	ADD PRIMARY KEY (`ID_COMMUNE`);

ALTER TABLE `composer`
	ADD PRIMARY KEY (`ID_MUSIQUE`,`ID_ARTISTE`);

ALTER TABLE `concevoir`
	ADD PRIMARY KEY (`ID_FILM`,`ID_ARTISTE`);

ALTER TABLE `disque`
	ADD PRIMARY KEY (`ID_DISQUE`);

ALTER TABLE `ecouter`
	ADD PRIMARY KEY (`ID_MUSIQUE`,`ID_DISQUE`);

ALTER TABLE `emprunt`
	ADD PRIMARY KEY (`ID_EMPRUNT`),
	ADD KEY `abo_id_abo_foreign` (`ID_ABONNEMENT`);

ALTER TABLE `emprunter`
	ADD PRIMARY KEY (`ID_EMPRUNT`,`ID_OBJET`);

ALTER TABLE `film`
	ADD PRIMARY KEY (`ID_FILM`);

ALTER TABLE `genre`
	ADD PRIMARY KEY (`ID_GENRE`);

ALTER TABLE `interpreter`
	ADD PRIMARY KEY (`ID_MUSIQUE`,`ID_ARTISTE`);

ALTER TABLE `jouer`
	ADD PRIMARY KEY (`ID_FILM`,`ID_ARTISTE`);

ALTER TABLE `music`
	ADD PRIMARY KEY (`ID_MUSIQUE`);

ALTER TABLE `objet`
	ADD PRIMARY KEY (`ID_OBJET`),
	ADD KEY `penalite_id_penalite_foreign` (`ID_PENALITE`),
	ADD KEY `disque_id_disque_foreign`(`ID_DISQUE`),
	ADD KEY `cassette_id_cassette_foreign` (`ID_CASSETTE`);

ALTER TABLE `penalite`
	ADD PRIMARY KEY (`ID_PENALITE`);

ALTER TABLE `produire`
	ADD PRIMARY KEY (`ID_MUSIQUE`,`ID_ARTISTE`);

ALTER TABLE `rendre`
	ADD PRIMARY KEY (`ID_RETOUR`,`ID_OBJET`);

ALTER TABLE `retour`
	ADD PRIMARY KEY (`ID_RETOUR`);

ALTER TABLE `retourner`
	ADD PRIMARY KEY (`ID_RETOUR`,`ID_EMPRUNT`);

ALTER TABLE `type_abonnement`
	ADD PRIMARY KEY (`ID_TYPE_ABONNEMENT`);
	

ALTER TABLE `utilisateur`
	ADD PRIMARY KEY (`ID_UTILISATEUR`),
	ADD KEY `commune_id_commune_foreign` (`ID_COMMUNE`),
	ADD KEY `categorie_social_id_categorie_social_foreign` (`ID_CATEGORIE_SOCIAL`);

ALTER TABLE `visioner`
	ADD PRIMARY KEY (`ID_CASSETTE`,`ID_FILM`);


-- AUTO_INCREMENT  ID TAB

ALTER TABLE `abonnement`
	MODIFY `ID_ABONNEMENT` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `artiste`
	MODIFY `ID_ARTISTE` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `cassette`
	MODIFY `ID_CASSETTE` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `categorie_social`
	MODIFY `ID_CATEGORIE_SOCIAL` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `commune`
	MODIFY `ID_COMMUNE` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `disque`
	MODIFY `ID_DISQUE` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `emprunt`
	MODIFY `ID_EMPRUNT` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `film`
	MODIFY `ID_FILM` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `genre`
	MODIFY `ID_GENRE` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `music`
	MODIFY `ID_MUSIQUE` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `objet`
	MODIFY `ID_OBJET` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `penalite`
	MODIFY `ID_PENALITE` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `retour`
	MODIFY `ID_RETOUR` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `type_abonnement`
	MODIFY `ID_TYPE_ABONNEMENT` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `utilisateur`
	MODIFY `ID_UTILISATEUR` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

ALTER TABLE `utilisateur`
	ADD CONSTRAINT `categorie_social_id_categorie_social_foreign` FOREIGN KEY (`ID_CATEGORIE_SOCIAL`) REFERENCES `categorie_social` (`ID_CATEGORIE_SOCIAL`),
	ADD CONSTRAINT `commune_id_commune_foreign` FOREIGN KEY (`ID_COMMUNE`) REFERENCES `commune` (`ID_COMMUNE`);

ALTER TABLE `emprunt`
	ADD CONSTRAINT `abo_id_abo_foreign` FOREIGN KEY (`ID_ABONNEMENT`) REFERENCES `abonnement` (`ID_ABONNEMENT`);

ALTER TABLE `objet`
	ADD CONSTRAINT `penalite_id_penalite_foreign` FOREIGN KEY (`ID_PENALITE`) REFERENCES `penalite` (`ID_PENALITE`),
	ADD CONSTRAINT `disque_id_disque_foreign` FOREIGN KEY (`ID_DISQUE`) REFERENCES `disque` (`ID_DISQUE`),
	ADD CONSTRAINT `cassette_id_cassette_foreign` FOREIGN KEY (`ID_CASSETTE`) REFERENCES `cassette` (`ID_CASSETTE`);
	
ALTER TABLE `abonnement`
	ADD CONSTRAINT `user_id_user_foreign` FOREIGN KEY (`ID_Utilisateur`) REFERENCES `utilisateur` (`ID_Utilisateur`),
	ADD CONSTRAINT `type_abonnement_id_type_abonnement_foreign` FOREIGN KEY (`ID_TYPE_ABONNEMENT`) REFERENCES `type_abonnement` (`ID_TYPE_ABONNEMENT`);



COMMIT;

