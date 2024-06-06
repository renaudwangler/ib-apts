---
title: Windows Server - Administration de base de l'infrastructure hybride
goDeploy: true
Azure: true
labs: https://microsoftlearning.github.io/AZ-800-Administering-Windows-Server-Hybrid-Core-Infrastructure/
editDate: 06/06/2024
---
# Lien vers le stage sur MS-Learn
- [Administering Windows Server Hybrid Core Infrastructure](https://learn.microsoft.com/en-us/training/courses/az-800t00)
- [Administration de l’infrastructure principale Windows Server hybride](https://learn.microsoft.com/fr-fr/training/courses/az-800t00)
# Timing exemple
- Jour 1 : LP1 modules 1 à 6 (jeux de diapos 1 et 2)  
- Jour 2 : LP2 et LP3 modules 1 à 5 (jeux de diapos 3, 4 et 5)  
- Jour 3 : fin LP3, LP4 modules 1 à 5 (jeux de diapos 6, 7 et premier module du 8)  
- Jour 4 : fin LP4 et LP5 (jeux de diapos 8, 9 et 10)  

  >**Nota :** Le timing officiel/idéal MS indique 1550 minutes (envion 26 heures), 1450 sans "reviews" (environ 24h) ... Stage dense !  
  
# Learning Path 1 - Module 2
La diapositive N° 21 est erronnée : la fonctionnalité "Seamless SSO" n'a aucun sens avec du ADFS. Elle peut fluidifier le logon utilisateur avec le Password hasj Sync ou le Path Through Authentication.  
Les titres des Diapositives N° 21,22 et 23 devraient être "Implement Seamless SSO and PTA"  
Nota concernant la démonstration mentionnée en diapositive N° 24, elle est fonctionnelle car la connexion se fait depuis Azure Bastion. Sinon, il eut fallu se connecter en RDP depuis une machine mmebre du même Azure AD (bien plus compliqué à mettre en oeuvre).
# Learning path 5 - Module 4
Activer et configurer l'initiator iSCSI en Powershell (très utile pour les installations Core) :
```
$iscsiTargetName = sea-svr3
Set-Service -Name MSiSCSI -StartupType Automatic; Start-Service -Name MSiSCSI
New-IscsiTargetPortal -TargetPortalAddress $iscsiTargetName
Connect-IscsiTarget -NodeAddress (Get-IscsiTarget).NodeAddress -IsPersistent $true
```  

# Learning Path 5 - Module 6
Une fois de plus, MS Learning n'a malheureusement pas mis à jour la terminologie (alors que la nouvelle est bien plus pertinente). Dans le stockage Azure, on parle désormais de **Containers** au lieu de blobs et de **File Shares** au lieu de files...
# Tous les labs
Mentionner, pour les plus complétistes (impossible de réaliser un échange théorique de qualité sur les thèmes + tous les labs en 4 jours) la présence de [Simulation de tous les ateliers](https://mslabs.cloudguides.com/guides/AZ-800%20Lab%20Simulations%20-%20Administering%20Windows%20Server%20Hybrid%20Core%20Infrastructure).
