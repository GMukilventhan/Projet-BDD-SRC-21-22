--Commune--
INSERT INTO commune(ID_COMMUNE, VILLE) 
VALUES 
    (1,'SAINT-DENIS'),
    (2,'MONTREUIL'),
    (3,'AULNAY-SOUS-BOIS'),
    (4,'SEVRAN');

--Catégorie_social--
INSERT INTO categorie_social(ID_CATEGORIE_SOCIAL, CATEGORIE_SOCIAL) 
VALUES 
    (1,'Scolaire'),
    (2,'employé'),
    (3,'cadre'),
    (4,'artisant'),
    (5,'commerçant'),
    (6,'profession libérale'),
    (7,'retrainté'),
    (8,'sans activité');


--Utilisateur--
INSERT INTO utilisateur ( NOM, PRENOM, MAIL, ID_COMMUNE, ID_CATEGORIE_SOCIAL) 
 VALUES
 ('GEORGE', 'Mukilventhan', 'mgeorge@george.fr', 1, 1),
 ('PAYEN', 'Théo', 'tpayen@tpayen.fr', 2, 3),
 ('WAZANE', 'Mohamed', 'mwazane@mwazane.fr', 3, 2),
 ('HABERMANN', 'Maxime', 'mhabermann@mhabermann.fr', 3, 4);

