---
title: Microsoft Azure - Conception d'architectures
Azure: true
---
(Ce stage remplace le stage AZ-304)  
[Lien vers les études de cas stagiaires](https://microsoftlearning.github.io/AZ-305-DesigningMicrosoftAzureInfrastructureSolutions/)  
[Mise en oeuvre applicative équivalente aux labs](ttps://github.com/microsoft/TailwindTraders) godeploy (complément au contenu).
# Timing exemple
- Jour 1 : Présentation du stage + Modules 1 (+ étude de cas) et 2 (+ études de cas 2 pour passer au jour 2)
- Jour 2 : modules 3 (+ étude de cas), 4 et 5 (étud de cas 3 en fin de journée)
- Jour 3 : Modules 6 (+ étude de cas), 7 et 8 (étude de cas 7)
- Jour 4 : Débrief étude de cas 8 Fabrikam optionnelle, Modules 9 (+ étude de cas), 10 et 11 (sans études de cas)  
# Module 7
La diapositive N° 14 parle de l'IOT hub qui n'est pas repris dans Learn
[Jeu d'icônes pour design Azure](https://docs.microsoft.com/en-us/azure/architecture/icons/)
# Ateliers goDeploy
Les ateliers goDeploy sont à considérer comme un complément au stage (pour les participants les plus motivés).  
Le stage de 4 jours est taillé pour échanger autour des études de cas uniquement.  
Les ateliers goDeploy sont qualitatifs mais (très) longs (Particulièrement les ateliers 1, 2 et 6).  
## Atelier 1
### Exercice 1
L'exercice commence par la création d'une VM de travail. En fait, dans la plateforme goDeploy, on utilisera directement la VM SEA-DEV fournie.  
Pour coller du code applicatif, il est préférable de passer par un collage dans un ficheir texte pour ne pas se faire avoir par les assistances à la complétion dans le portail/visual studio....  
### Exercice 3
Tâche 1, point 5 : "Command like arguments" est remplaçé par "application arguments"
### Exercice 5
Tâche 1, point 12 : Choisir "outlook.com" et non "Office 365 - Outlook" si un compte live/outlook est utilisé.
## Atelier 2
### Exercice 3
Si l'assistant de migration n'est pas correctement installé sur le serveur SQL, lancer son installation depuis c:\datamigrationassistant.msi.  
### Exercice 4
Tâche 3, point 6: Vérifier que le profil de publication ne contient plus la chaine "{your_password}" mais le mot de passe de la base "Pawword.1!!" à la place...
## Atelier 6
  Exercice 7, Tâche 2, point 3 : utiliser 192.168.1.0/27 comme espace d'adresses pour le sous-réseau de passerelle (il faudrea également modifier la taille de masque du réseau de passerelle de WGVnet1).