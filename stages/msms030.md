---
title: Microsoft 365 - Administration
goDeploy: true
m365: true
lastEdit: 07/12/2023
---
Il s'agit d'un stage ib, repris d'un ancien stage officiel qui n'est plus à l'offre MS.
Son contenu est pertinent et a été largement mis à jour par ib :
- Jeu de diapositives complet mise à jour
- Ateliers mis à jour 

Globalement, le contenu de ce stage est intéressant et pragmatique : préparer un admin terrain...
# Déroulé des ateliers
Pour animer ces ateliers, on s'appuie sur l'environnement fourni par goDeploy pour le stage MS-102.  
Le déroulé des ateliers a été complètement révisé. Cette version révisée remplace celle incluse dans la plateforme goDeploy.  
Elle peut être trouvée [A l'adresse suivante](https://renaudwangler.github.io/ib-labs/msms030fr) à communiquer aux stagiaires.

# Astuce
Le code suivant permet de *nettoyer* Entra Id de tous les utilisateurs synchonisés après avoir enlevé la synchonisation :  

```
#Nettoyage des utilisateurs synchonisés
Connect-MgGraph -scopes User.ReadWrite.All
while ((Get-MgUser -All -Filter "OnpremisesSyncEnabled eq true" | Measure-Object).count) {
  Get-MgUser -All -Filter "OnpremisesSyncEnabled eq true" | ForEach-Object {Remove-mguser -UserId $_.id}}
get-mgGroup -All -Filter "OnpremisesSyncEnabled eq true" | ForEach-Object {Remove-MgGroup -GroupId $_.id}
while ((Get-MgDirectoryDeletedItemAsUser).count -gt 0) {
  Get-MgDirectoryDeletedItemAsUser|ForEach-Object {Remove-MgDirectoryDeletedItem -DirectoryObjectId $_.Id}}
```
