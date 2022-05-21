----==================================================================================
-------------------------------------PROJET BDD SRC-----------------------------------
------------------------------------GROUPE 5 3SRC1-----------------------------------
----------------------------------SUJET:Médiathéque-----------------------------------
----==================================================================================  


---- Création table MEMBRE ----
CREATE TABLE UTILISATEUR
(
    UTILISATEUR_ID INT NOT NULL,
    UTILISATEUR_nom VARCHAR(50) NOT NULL,
    UTILISATEUR_prenom VARCHAR(50) NOT NULL,
    UTILISATEUR__mail TEXT NOT NULL
);

---- Création table COMMUNE ----
CREATE TABLE COMMUNE
(
    COMMUNE_ID INT NOT NULL,
    VILLE_nom VARCHAR(50) NOT NULL
);

---- Création table CATEGORIE SOCIAL ----
CREATE TABLE CATEGORIE_SOCIAL
(
    CATEGORIE_SOCIAL_id INT NOT NULL,
    CATEGORIE_SOCIAL_nom VARCHAR(50) NOT NULL
);

---- Création table ABONNEMENT ----
CREATE TABLE ABONNEMENT
(
    ABONNEMENT_id INT NOT NULL,
    ABONNEMENT_date_adhesion DATE NOT NULL,
    ABONNEMENT_fin_adhesion DATE NOT NULL
);

---- Création table TYPE ABONNEMENT ----
CREATE TABLE TYPE_ABONNEMENT
(
    TYPE_ABONNEMENT_id INT NOT NULL,
    TYPE_ABONNEMENT_PRIX_PAR_MOIS DATE NOT NULL,
    TYPE_ABONNEMENT_NOMBRE_EMPUNT NOT NULL
);


---- Création table EMPRUNT   ----
CREATE TABLE TYPE_EMRUNT
(
    EMPRUNT_id INT NOT NULL,
    EMPRUNT_DATE DATE NOT NULL
);

---- Création table RETOUR   ----
CREATE TABLE TYPE_RETOUR
(
    RETOUR_id INT NOT NULL,
    RETOUR_DATE_RENDU DATE NOT NULL
);


---- Création table OBJET   ----
CREATE TABLE TYPE_RETOUR
(
    OBJET_id INT NOT NULL,
    OBJET_NOMBRE_ARTICLE  DATE NOT NULL
);


