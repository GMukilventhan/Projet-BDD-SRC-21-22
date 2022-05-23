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
