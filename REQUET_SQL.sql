--Afficher les noms et prénoms des personnes ayant un prénom composé de minimum 10 caracteres
select nom,prenom from utilisateur where  length(prenom)>=10;
--Afficher les noms et prénoms des personnes ayant un nom compose de minimum 5 caracteres
select nom,prenom from utilisateur where  length(nom)>=5;
--Quel est le nom et prÈnom de la personne ayant le nom le plus long ? 
select nom, prenom from utilisateur where length(nom) = (SELECT MAX(length(nom)) from utilisateur);
--Ecrire une requete permettant de recuperer le nom de domaine de chacune des adresses email presentes dans la table
select substr(mail,INSTR(mail,'@')+1) from utilisateur;

 --Selection 2 tables commune et mail 
select Id_commune, mail from  utilisateur;

select count(ID_DISQUE) from DISQUE;

SELECT CURRENT_DATE() > FIN_ADHESION, ID_UTILISATEUR FROM abonnement;

SELECT NOM, TITRE FROM ARTISTE, music;

1. Récupéré les articles loué par un utilisateur

SELECT   prenom, nom, DATE_EMPRUNT, ID_DISQUE, ID_CASSETTE FROM utilisateur INNER JOIN emprunt, ID_OBJET ON ID_UTILISATEUR = emprunt.ID_EMPRUNT=objet.ID_OBJET;

SELECT  DISTINCT prenom, nom, DATE_EMPRUNT, TITRE_CASSETTE from utilisateur  inner join emprunt on ID_UTILISATEUR = emprunt.ID_EMPRUNT  inner join  cassette on ID_CASSETTE = cassette.ID_CASSETTE;




2. Afficher les filme dans un disque

3. Afficher la liste le prix de la pénalité d'un objet
select * from penalite inner join objet on penalite.id_penalite = objet.id_penalite;


select nom, prenom,  from emprunt inner join abonnement on emprunt.ID_ABONNEMENT = abonnement.ID_ABONNEMENT inner join utilisateur on abonnement.ID_UTILISATEUR = utilisateur.ID_UTILISATEUR;