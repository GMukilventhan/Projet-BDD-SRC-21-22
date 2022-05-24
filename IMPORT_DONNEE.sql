INSERT INTO commune (VILLE) 
VALUES 
    ('SAINT-DENIS'),
    ('MONTREUIL'),
    ('AULNAY-SOUS-BOIS'),
    ('SEVRAN');


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



INSERT INTO utilisateur ( NOM, PRENOM, MAIL, ID_COMMUNE, ID_CATEGORIE_SOCIAL) 
 VALUES
    ('GEORGE', 'Mukilventhan', 'mgeorge@george.fr', 1, 1),
    ('PAYEN', 'Théo', 'tpayen@tpayen.fr', 2, 3),
    ('WAZANE', 'Mohamed', 'mwazane@mwazane.fr', 3, 2),
    ('HABERMANN', 'Maxime', 'mhabermann@mhabermann.fr', 3, 4),
    ('JEAN','PHILIPS','jphililps@myges.fr',4,8);



INSERT INTO type_abonnement (PRIX_PAR_MOIS, NOMBRE_EMPUNT)
 VALUES 
    (5.99,10),
    (10.99,20);


INSERT INTO abonnement (DEBUT_ADHESION, FIN_ADHESION, ID_UTILISATEUR, ID_TYPE_ABONNEMENT) 
VALUES 
    ('2022-03-05','2023-03-05',1,1),
    ('2022-04-05','2023-04-05',2,2),
    ('2022-03-05','2023-03-05',3,1),
    ('2022-06-05','2023-06-05',4,2);


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


INSERT INTO cassette (TITRE_CASSETTE) 
VALUES 
    ('Avengers'),
    ('Titanic'),
    ('Star-wars'),
    ('Sonic'),
    ('Pokemon');


INSERT INTO disque (TITRES_DISQUE) 
VALUES 
    ('Deux Frére'),
    ('Le monde chico'),
    ('Dans la légende'),
    ('Que la famille'),
    ('Ensemble'),
    ('QALF infinity');


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

INSERT INTO  emprunt (DATE_EMPRUNT, ID_ABONNEMENT) 
VALUES 
    ('2022-04-05',1),
    ('2022-05-05',2);


INSERT INTO film (TITRE)
VALUES 
    ('TOP GUN'),
    ('DOCTOR STRANGE'),
    ('LES SEGPA'),
    ('J ADORE CE QUE VOUS FAITES'),
    ('LES FOLIES FERMIÈRES'),
    ('ON SOURIT POUR LA PHOTO'),
    ('Avengers: l eres d Ultron'),
    ('Avengers:  Infinity War'),
    ('Avengers: Endgame');



INSERT INTO genre (GENRE) 
VALUES
    ('AVENTURE'),
    ('COMÉDIE'),
    ('POLICIER'),
    ('SCIENCE FICTION');


INSERT INTO penalite (TYPE_OBJET, PRIX_J_PENALITER) 
VALUES
    ('CASSETTE',3.99),
    ('DISQUE',5.99);


INSERT INTO categoriser (ID_FILM, ID_GENRE) 
VALUES 
    ('1','3'),
    ('2','1'),
    ('3','2'),
    ('4','2'),
    ('5','1'),
    ('6','2'),
    ('7','1'),
    ('8','1'),
    ('9','1');


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


INSERT INTO concevoir (ID_FILM, ID_ARTISTE)
VALUES
    ('1','5'),
    ('2','6'),
    ('3','7'),
    ('4','8'),
    ('5','9'),
    ('6','7');


INSERT INTO interpreter (ID_MUSIQUE, ID_ARTISTE)
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

INSERT INTO jouer (ID_FILM, ID_ARTISTE)
VALUES
    ('1','5'),
    ('2','6'),
    ('3','7'),
    ('4','8'),
    ('5','9'),
    ('6','7');

INSERT INTO produire (ID_MUSIQUE, ID_ARTISTE)
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

INSERT INTO objet (NOMBRE_ARTICLE, PRIX_OBJET, ID_PENALITE, ID_CASSETTE, ID_DISQUE) 
VALUES 
    (5,5.5,1,1,NULL),
    (4,6.5,2,NULL,1),
    (5,5.5,1,2,NULL),
    (4,6.5,2,NULL,2);


INSERT INTO retour(RETOUR_DATE_RENDU) 
VALUES 
    ('2022-05-18'),
    ('2022-05-19'),
    ('2022-05-20'),
    ('2022-05-21'),
    ('2022-05-22');


INSERT INTO emprunter(ID_EMPRUNT, ID_OBJET)
VALUES 
    ('1','5'),
    ('2','6'),
    ('3','8'),
    ('4','2'),
    ('4','7');


INSERT INTO rendre(ID_RETOUR, ID_OBJET)
VALUES
    ('1','56'),
    ('2','57'),
    ('3','67'),
    ('4','68'),
    ('5','69');


INSERT INTO retourner(ID_RETOUR, ID_EMPRUNT)
VALUES
    ('1','1'),
    ('2','2');


INSERT INTO visioner(ID_CASSETTE, ID_FILM)
VALUES
    ('1','1'),
    ('2','2'),
    ('3','3'),
    ('4','4'),
    ('5','5'),
    ('3','6'),
    ('1','7'),
    ('1','8'),
    ('1','9');
