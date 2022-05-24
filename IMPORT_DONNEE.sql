
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
    ('JEAN','PHILIPS','jphililps@myges.fr',4,8),
    ('Octavius','Witt','lorem@myges.fr',2,4),
    ('Shoshana','Morales','morbi.tristique.senectus@myges.fr',4,3),
    ('Amity','Rice','tincidunt.congue.turpis@myges.fr',3,8),
    ('Malik','Barron','sed.et.libero@myges.fr',3,5),
    ('Beverly','Stewart','velit@myges.fr',1,1),
    ('Daryl','Abbott','ullamcorper.velit@myges.fr',3,1),
    ('Reese','Knight','iaculis.nec@myges.fr',4,2),
    ('Coby','Romero','magna.a@myges.fr',1,1),
    ('Pandora','Nash','eleifend.vitae.erat@myges.fr',4,6),
    ('Jared','Odonnell','mattis.semper@myges.fr',2,4),
    ('Fritz','Sims','arcu@myges.fr',2,4),
    ('Todd','Duke','nibh.quisque@myges.fr',4,4),
    ('Harper','Bullock','elementum@myges.fr',3,8),
    ('Hayley','Wheeler','a.felis.ullamcorper@myges.fr',2,6),
    ('Jaime','Pope','semper.egestas@myges.fr',2,2),
    ('Briar','Delacruz','massa.quisque@myges.fr',2,8),
    ('Callie','Olson','mauris@myges.fr',2,4),
    ('Allistair','Flores','in.sodales@myges.fr',4,5),
    ('Regan','Trujillo','adipiscing.elit@myges.fr',1,5),
    ('Yen','Ruiz','commodo.hendrerit@myges.fr',2,6),
    ('Marshall','Donaldson','lacinia@myges.fr',3,5),
    ('Kelly','Harrison','lectus.convallis.est@myges.fr',1,4),
    ('Adrienne','Cooper','massa.vestibulum@myges.fr',2,4),
    ('Norman','Vega','sed.neque.sed@myges.fr',2,5),
    ('Felix','Willis','feugiat.lorem@myges.fr',3,1),
    ('Pandora','Mclaughlin','erat.sed@myges.fr',1,3),
    ('Alika','Johnson','tempor.arcu.vestibulum@myges.fr',3,2),
    ('Michelle','Ellison','eleifend.cras@myges.fr',4,3),
    ('Cynthia','Kemp','ante.maecenas@myges.fr',3,6),
    ('Constance','Flynn','consequat.dolor@myges.fr',3,1),
    ('Charity','Hopper','scelerisque.neque@myges.fr',1,2),
    ('Isadora','Burgess','odio@myges.fr',2,8),
    ('Jesse','Duke','semper@myges.fr',1,5),
    ('Slade','Lara','egestas.fusce@myges.fr',3,3),
    ('Orli','Fletcher','molestie@myges.fr',2,1),
    ('Ann','Foster','lorem@myges.fr',2,4),
    ('Kenneth','Boyle','interdum.curabitur.dictum@myges.fr',3,5),
    ('Aline','Hyde','purus.in.molestie@myges.fr',3,6),
    ('Kamal','Morgan','donec@myges.fr',2,2),
    ('Bertha','Banks','dui@myges.fr',2,8),
    ('Hilary','Mathis','dolor.sit.amet@myges.fr',4,5),
    ('Quin','Stephenson','lobortis@myges.fr',3,8),
    ('Aimee','Rojas','dapibus.quam@myges.fr',4,5);



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
