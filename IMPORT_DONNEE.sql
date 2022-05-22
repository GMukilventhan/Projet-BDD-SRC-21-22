--Commune--
INSERT INTO commune(VILLE) 
VALUES 
    ('SAINT-DENIS'),
    ('MONTREUIL'),
    ('AULNAY-SOUS-BOIS'),
    ('SEVRAN');

--Catégorie_social--
INSERT INTO categorie_social(CATEGORIE_SOCIAL) 
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
INSERT INTO type_abonnement(PRIX_PAR_MOIS, NOMBRE_EMPUNT)
 VALUES 
    (5.99,10),
    (10.99,20);


