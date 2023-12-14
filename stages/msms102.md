---
title: Microsoft 365 - Administrateur Microsoft 365
goDeploy: true
m365: true
labs: https://github.com/MicrosoftLearning/MS-102T00-Microsoft-365-Administrator-Essentials/tree/master/Instructions/Labs
editDate: 14/12/2023
---
Il s'agit d'un stage qui prépare les apprenant à assumer les clients Microsoft 365, surtout d'un point de vue sécurité : 
Il peut être considéré comme un stage d'introduction à Microsoft Defender, mais il exige des prérequis non négligeables.
Au vu des différences pédagogiques entre les US et l'Europe, il pourra être pertinent de parler des *Check your knowledge* lors de l'apparition de la première diapositive puis de masquer les autres (Les diapositives "discussions" pourront également être remplaçées/masquées).
Ce stage a remplacé (en en prenant des modules, mis à jour) les stages ms-100 et ms-101 mais ne porte pas du tout sur intune et la gestion MDM/MAM
# Timing suggéré
- Lundi : Introdution, Learning Path 1 et 2 (modules 1 et 2)
- Mardi : Fin du learning path 1, Learning path 3 et 4
- Mercredi : Fin des labs du LP 4, Learning path 5 et 6 (modules 1 et 2)
- Jeudi : Fin du Learning path 6, ateliers et Learning path 7
- Vendredi : Learning path 8 et 9
# Module 6
- [Demo Defender for Cloud Apps](https://mslearn.cloudguides.com/en-us/guides/Protect%20and%20control%20information%20with%20Microsoft%20Cloud%20App%20Security)
- [Demo Defender for Endpoint](https://mslearn.cloudguides.com/guides/Investigate%20and%20remediate%20threats%20with%20Microsoft%20Defender%20for%20Endpoint)
# Module 7
- OME a été remplaçé par Purview Message Encryption ([comparaison](https://docs.microsoft.com/en-us/microsoft-365/compliance/ome-version-comparison?view=o365-worldwide#side-by-side-comparison-of-message-encryption-features-and-capabilities))  
- A noter : [Pas de révocation possible si message non consommé par le biais d'un lien](https://docs.microsoft.com/en-us/microsoft-365/compliance/revoke-ome-encrypted-mail?view=o365-worldwide#encrypted-emails-that-you-can-revoke)...  
# Module 8
Il est possible de créer une nouvelle [Info sensible](https://docs.microsoft.com/en-us/microsoft-365/compliance/create-a-custom-sensitive-information-type?view=o365-worldwide#create-a-custom-sensitive-information-type)  
# Atelier 1
- Exercice 2, tâche 4 : remplacer les commandes Powershell des points 7 et 8 par les suivantes :
  ```pwsh
  $deletedGroup = get-mgDirectoryDeletedItem -DirectoryObjectId (get-mgDirectoryDeletedGroup|where displayName -eq 'Inside Sales').id  
  restore-MgDirectoryDeletedItem -DirectoryObjectId $deletedGroup.Id
  ```  

# Atelier 2
- Exercice 2 : points 14 & 22 : le retour de message non délivré cocernera probablement plutôt le fait que les domaines ***.onmicrosoft.com sont désormais considérés comme spam par défaut pour lutter contre le Spam des comptes gratuits
# Atelier 3
- Exercice 1 : Contrairement aux notes présentes, le module powershell historique "msOnline" n'est pas( (plus) utile pour cet atelier
- Exercice 1, Tâche 4 : En fait, avec Edge, ces précautions ne sont pas utiles.
# Atelier 6
- Exercice 1 : l'interface d'ajout de membres au rôle sécurité a été largement simplifiée
- Exercice 2 : Le mot de passe de **LynneR** est le même que celui de Holly
- Exercice 2 : Il est possible que le retour de message non délivré cocerne le fait que les domaines ***.onmicrosoft.com sont désormais considérés comme spam par défaut pour lutter contre le Spam des comptes gratuits...
- Exercice 5 : pour accéder à la MFA par utilisateurs cliquer sur "legacy per-user MFA" dans la note grise...
# Atelier 9
- Exercice 1, Tâche 1 : l'installation du client des labels unifié est unutile : la fonctionnalité est désormais intégrée dans les versions actuelles de Office.
- Ne pas hésiter à réaliser la tâche 2 en avance (création/publication du label) pour pouvoir tester le résultat le dernier jour.
- Tâche 3, point 21 : Cliquer sur l'engrenage pour pouvoir customiser le comportement du partage.