--Commune--
INSERT INTO commune (VILLE) 
VALUES 
    ('SAINT-DENIS'),
    ('MONTREUIL'),
    ('AULNAY-SOUS-BOIS'),
    ('SEVRAN');

--Catégorie_social--
INSERT INTO categorie_social (CATEGORIE_SOCIAL) 
VALUES 
    ('Scolaire'),
    ('employé'),
    ('cadre'),
    ('artisant'),
    ('commerçant'),
    ('profession libérale'),
    ('retrainté'),
    ('sans activité');


--Utilisateur--
INSERT INTO utilisateur ( NOM, PRENOM, MAIL, ID_COMMUNE, ID_CATEGORIE_SOCIAL) 
 VALUES
 ('GEORGE', 'Mukilventhan', 'mgeorge@george.fr', 1, 1),
 ('PAYEN', 'Théo', 'tpayen@tpayen.fr', 2, 3),
 ('WAZANE', 'Mohamed', 'mwazane@mwazane.fr', 3, 2),
 ('HABERMANN', 'Maxime', 'mhabermann@mhabermann.fr', 3, 4);

--type_abonnement--
INSERT INTO type_abonnement (PRIX_PAR_MOIS, NOMBRE_EMPUNT)
 VALUES 
    (5.99,10),
    (10.99,20);


--Abo--
INSERT INTO abonnement (DEBUT_ADHESION, FIN_ADHESION, ID_UTILISATEUR, ID_TYPE_ABONNEMENT) 
VALUES 
    ('2022-03-05','2022-03-05',1,1),
    ('2022-03-05','2022-03-05',2,2);
    ('2022-03-05','2022-03-05',3,1),
    ('2022-03-05','2022-03-05',4,2);
--Artiste--
INSERT INTO artiste (NOM, PRENOM) 
VALUES 
    ('Andrieu','Tarik'),
    ('Andrieu','Nabil'),
    ('William','Dmaso'),
    ('Aurelien','Orelsan'),
    ('Joseph','Kosinski'),
    ('Sam','Raimi'),
    ('Cyril','Hanouna'),
    ('Philippe','Guillard '),
    ('Agnès','Hurstel');

--Cassette--
INSERT INTO casette (TITRE_CASSETTE) 
VALUES 
    ('Avengers'),
    ('Titanic'),
    ('Star-wars'),
    ('Sonic'),
    ('Pokemon');

--disques
INSERT INTO disques (TITRES_DISQUE) 
VALUES 
    ('Deux Frére'),
    ('Le monde chico'),
    ('Dans la légende'),
    ('Que la famille'),
    ('Ensemble'),
    ('QALF infinity');

--Music--
INSERT INTO music (TITRE) 
VALUES 
    ('AU DD'),
    ('Deux Frére'),
    ('Abonné'),
    ('jusqu au dernier gramme'),
    ('DA'),
    ('ONIZUKA'),
    ('JE VIS JE VISSER'),
    ('LALA'),
    ('MANIFESTE'),
    ('SHONEN'),
    ('LIFE LIFE'),
    ('POUR L ARGENT');

--ecouter--
INSERT INTO ecouter (ID_DISQUE, ID_MUSIQUE) 
VALUES
    ('1','1'),
    ('1','2'),
    ('2','3'),
    ('2','4'),
    ('3','5'),
    ('3','6'),
    ('4','7'),
    ('4','8'),
    ('5','9'),
    ('5','10'),
    ('6','11'),
    ('6','12');

--emprunt--
INSERT INTO  emprunt (DATE_EMPRUNT, ID_ABONNEMENT) 
VALUES 
    ('2022-04-05',1),
    ('2022-05-05',2);

--film--
INSERT INTO film (TITRE)
VALUES 
    ('TOP GUN'),
    ('DOCTOR STRANGE'),
    ('LES SEGPA'),
    ('J ADORE CE QUE VOUS FAITES'),
    ('LES FOLIES FERMIÈRES'),
    ('ON SOURIT POUR LA PHOTO');

--GENRE--
INSERT INTO genre (GENRE) 
VALUES
    ('AVENTURE'),
    ('COMÉDIE'),
    ('POLICIER'),
    ('SCIENCE FICTION');

--penalite--
INSERT INTO penalite (TYPE_OBJET, PRIX_J_PENALITER) 
VALUES
    ('CASSETTE',3.99),
    ('DISQUE',5.99);

--categoriser--
INSERT INTO categoriser (ID_FILM, ID_GENRE) 
VALUES 
    ('1','3'),
    ('2','1'),
    ('3','2'),
    ('4','2'),
    ('5','1'),
    ('6','2');

--composer--
INSERT INTO composer (ID_MUSIQUE, ID_ARTISTE)
VALUES
    ('1','1'),
    ('2','2'),
    ('3','2'),
    ('4','1'),
    ('5','1'),
    ('6','2'),
    ('7','2'),
    ('8','1'),
    ('9','4'),
    ('10','4'),
    ('11','3'),
    ('12','3');

--concevoir--
INSERT INTO concevoir (ID_FILM, ID_ARTISTE)
VALUES
    ('1','5'),
    ('2','6'),
    ('3','7'),
    ('4','8'),
    ('5','9'),
    ('6','7');


--interpreter--
INSERT INTO INTERPRETER (ID_MUSIQUE, ID_ARTISTE)
VALUES
    ('1','6'),
    ('2','7'),
    ('3','6'),
    ('4','7'),
    ('5','6'),
    ('6','7'),
    ('7','7'),
    ('8','6'),
    ('9','9'),
    ('10','9'),
    ('11','8'),
    ('12','8');

--jouer--
INSERT INTO jouer (ID_FILM, ID_ARTISTE)
VALUES
    ('1','5'),
    ('2','6'),
    ('3','7'),
    ('4','8'),
    ('5','9'),
    ('6','7');
--produire--
INSERT INTO `produire`(`ID_MUSIQUE`, `ID_ARTISTE`)
VALUES 
    ('1','6'),
    ('2','7'),
    ('3','6'),
    ('4','7'),
    ('5','6'),
    ('6','7'),
    ('7','7'),
    ('8','6'),
    ('9','9'),
    ('10','9'),
    ('11','8'),
    ('12','8');
--objet--
INSERT INTO objet (NOMBRE_ARTICLE, PRIX_OBJET, ID_PENALITE, ID_CASSETTE, ID_DISQUE) 
VALUES 
    (5,5.5,1,1,NULL)
    (4,6.5,2,NULL,1)
    (5,5.5,1,2,NULL)
    (4,6.5,2,NULL,2)
    (5,5.5,1,3,NULL)
    (4,6.5,2,NULL,3)
    (5,5.5,1,4,NULL)    
    (4,6.5,2,NULL,4)
    (5,5.5,1,5,NULL)    
    (4,6.5,2,NULL,5)
    (5,5.5,1,6,NULL)

--retour--    
INSERT INTO retour(RETOUR_DATE_RENDU) 
VALUES 
    ('2022-05-18')
    ('2022-05-19')
    ('2022-05-20')
    ('2022-05-21')
    ('2022-05-22')

--emprunter--
INSERT INTO `emprunter`(`ID_EMPRUNT`, `ID_OBJET`)
VALUES 
    ('1','5')
    ('2','6')
    ('3','8')
    ('4','2')
    ('4','7')

--rendre--
INSERT INTO `rendre`(`ID_RETOUR`, `ID_OBJET`)
VALUES
    ('[value-1]','[value-2]')

--retourner--
INSERT INTO `retourner`(`ID_RETOUR`, `ID_EMPRUNT`)
VALUES
    ('[value-1]','[value-2]')

--visioner--
INSERT INTO `visioner`(`ID_CASSETTE`, `ID_FILM`)
VALUES
    ('[value-1]','[value-2]')