---
title: Microsoft 365 - Endpoint administrator
goDeploy: true
m365: true
labs: https://github.com/MicrosoftLearning/MD-102T00-Microsoft-365-Endpoint-Administrator/tree/master/Instructions/Labs
---
Il ne s'agit pas d'un stage d'introduction ou de *premier niveau* : Comme il prépare l'apprenant au métier d'administrateur Microsoft 365, il exige des prérequis non négligeables.
Au vu des différences pédagigues entre les US et l'Europe, il pourra être pertinent de parler des *Check your knowledge* lors de l'apparition de la première diapositive puis de masquer les autres (Les diapositives "discussions" pourront également être remplaçées).
Ce stage remplace (en en prenant des modules, parfois mis à jour) les stages md-100 et md-101 (surtout).
# Ateliers en général
De nombreux points de latence importante sont présents : Prévenir les stagiaires en avance concernant la latence d'installation des application via Intue et conseiller de tirer parti du fait que les labs se suivent en testant les fonctionnalités qui ne marchent pas immédiatement la (demi)journée suivante.  
# Lab 3
Il semblerait que l'inventaire des applications fonctionne de manière aléatoire (pas chez tout le monde) dans l'environnement de l'atelier.
# lab 4 - Exercice 1
- Au lieu du site web utilisé (https://portal.manage.microsoft.com) qui lance ensuite l'appli store, on peut aussi bien (et plus efficacement) utiliser l'appli company portal après l'avoir installée (intéressant notamment si l'appli store est bloquée)
- Tâche 5 résultat lent à apparaître (parfois plusieurs heures/jours)... faire la suite et vérifier plus tard
# Lab 5
Exercice 2, tâche 3 : Contrairement à ce qui est indiqué à date, c'est la fonctionnalité de Password Writeback qui est testée et non SSPR...
Exercice 2, tâche 4 : cette tâche est complètement inutile, au vu du mode de fonctionnement (agent = synchrone) du Password Writeback qui n'a, au final, rien à voir avec la synchronisation Entra Id connect.
Exercice 3, tâche 2 , point 9 : Par contre le même compte peut accéder à onedrive.com, site non concerné par l'interdiction
# Lab 7
Il sera important que l'environnement ait "proprement" démarré (DC puis toutes autres machines avec carte réseau en domaine) pour que cet atelier fonctionne comme attendu...  
# Timing suggéré
- Lundi : Introdution, Learning Path 1 et 2
- Mardi : Learning path 3 et 4
- Mercredi : Learning path 5 et 6
- Jeudi : Learning path 7 et 8
- Vendredi : Learning path 9
