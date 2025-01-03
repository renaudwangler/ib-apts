---
title: Microsoft Azure - Technologies de sécurité
goDeploy: true
Azure: true
labs: https://microsoftlearning.github.io/AZ500-AzureSecurityTechnologies/
editDate: 23/12/2024
---
[Support de stage en Français](https://docs.microsoft.com/fr-fr/training/courses/AZ-500T00?WT.mc_id=ilt_partner_webpage_wwl&ocid=IB1090206#study-guide)  
[Support de stage en Anglais](https://docs.microsoft.com/en-us/training/courses/AZ-500T00?WT.mc_id=ilt_partner_webpage_wwl&ocid=IB1090206#study-guide)  
A dernière consultation (09/2022) les diapositives françaises proposées en téléchargement sont d'une qualité tout à fait médiocre... A éviter donc...  
# En direct du [Learning Download Center] :
Dans les éléments téléchargeables concernant ce stage, le fichier "AssessmentGuide" qui comprend des QCM pour chaque module manque cruellement de mise à jour (Azure AD etc...).
# Timing exemple
- Jour 1 (identité): Introdution + Learning Path 1 (Atelier 1)
- Jour 2 (Sécurité du réseau): Learning Path 2 (Ateliers 2 et 3) + si possible Learning path 3 (Module 1 et 2)
- Jour 3 (Sécurité des données et applications): Learning Path 3 (Ateliers 4, 5 et 6 ) + Learnoing Path 4 (Module 1)
- Jour 4 (Sécurité opérationnelle): Learning Path 4

#Remarques globales
- Les *Knowledge Check* ne sont pas tous très pertinents...
- Les **blueprints** qui ont toujours été en *preview* depuis des années seront dépréciés en Juillet 2026 : leur pré&férer les **Template specs** et les **Deployment stacks**
- Il faudra s'assurer de la bonne synchronisation de l'heure de la machine (virtuelle) cliente...  

# Learning Path2 - Module 2 Plan and implement virtual network Service Endpoints
Le schéma de la diapositive est erroné puisqu'il parle d'accès d'une VM à une autre : le schéma sur Learn est correct.

# Atelier 1 
- A date (12/2024) la description synthètique de l'atelier go Deploy est incorrecte (inclut PIM) mais le contenu, lui, est correct.
- Dommage que la manipulation Entra Id en Powershell soit faite avec le module AzureAD et non avec le module Microsoft Graph

# Atelier 2
- Bien veiller à ce que les stagiaires ne sélectionnent pas les modèles *Classic* des diverses resources (remarque valable sur l'ensemble des ateliers)

# Atelier 5
- Exercice 1, tâche 2, point 7 : lors de mes tests, toujours pas d'informations affichées après plus de trente minutes d'attente....

# Atelier 7
- Cet atelier est très long....
- Dans cet atelier le double passage en redp pose problème : préférer le coller dans un notepad de la vm d'atelier puis copier/coller vers la VM créée (même si pénible)
- Exercice 3, Tâche 5, point 6 : lorsque   J'ai cliqué pour coller l'url, le **?** a été remplaçé par un **/**
- Il semble que le SQL server management studio soit installé dans le template
 
# Ateliers 8, 9 et 10
- Ces trois ateliers sont regroupés dans le même lab goDeploy, avec un petit menu en haut à gauche des instructions permettant de sélectionner chacun des trois.

# Atelier 9
- Exercice 1, tâche 1, point 5 : Les *Defender for Cloud* étant déjà activés sur l'abonnement goDeploy, cliquer simplement sur **Cancel**
- Exercice 1, Tâche 1, point 7 : dans notre contexte, il suffira d'activer **Foundational CSPM** et **SQL Server on machines**

# Atelier 10
- Comme indiqué en tête de cet atelier, il ne peut être pleinment réalisé dans le contexte de l'abonnement partagé fourni par goDeploy. Cependant, suivre les étapes mentionnées dans cet atelier sera possible sur un compte de test *personnel*. Le contenu de cet atelier est en fait jouable jusqu'à la tâche 4 incluse.
- Exercice 1, Tâche 4, les points 11 à 16 devront être remplaçés par l'édition de l'*API Connection* présente dans le resource group. En se rendant dans **General/edit API connection**, en cliquant sur **Authorize** puis sur **Save**.
