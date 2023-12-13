---
title: Concevoir et mettre en oeuvre des solutions Microsoft DevOps
Azure: true
labs: https://microsoftlearning.github.io/AZ400-DesigningandImplementingMicrosoftDevOpsSolutions/
---
Les ateliers goDeploy Ne sont pas indispensables : les ateliers de ce stage peuvent être réalisés avec un compte *Azure Pass* et les instructions du dépot github.  
On pourra conseiller, aux stagiaires qui n'en n'ont pas, de se créer un compte Github en y associant le compte Microsoft créé pour activer le Pass Azure.  
Bien commencer par la procédure "Atelier 0" des instructions le plus tôt possible pour mettre en place l'environnement devops qui servira pour les différents ateliers.  
[Visual Studio](https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=BuildTools&rel=16) est à installer en complément de Visual Studio Code pour que certains labs fonctionnent (pas indiqué dans le lab)
# Timing exemple
- Jour 1 : Intro (+setup du lab) Modules 1 et 2
- Jour 2 : Module 3 et début 4
- Jour 3 : Modules 4, 5 et 6
- Jour 4 : Modules 7, 8 et 9  

>**Note : ** A date (25/07/202), la somme des durées des modules simplement indiqués sur MSLearn (sas ateliers) fait 29h35.. : 4 jours à 7h de travail ne font que 28h....  

# Ateliers
Pour réaliser les ateliers, les stagiaires pourront se créer une machine virtuelle dans leur compte Azure, en suivant par exemple la procédure ib.
# Atelier 4
Si l'agent ne peut démarrer correctement, aller dans les services Windows et passer le service correspondant (*Azure Pipeline Agent*) en connexion sous l'identité système puis le démarrer...  
Bien conserver les 2 espaces qui étaient avant le nom de la vm lorsqu'on le remplace par les 3 lignes de code indiquées dans l'Exercice 2.