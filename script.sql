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


