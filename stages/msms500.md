---
title: 365 - Security Administration
goDeploy: true
m365: true
Afinir: true
---
Attention à la gestion du temps : il s'agit d'un stage de 4 jours, avec des petits modules unitaires sur la seconde moitié de la semaine....
# Module 3
Le lien de la vidéo sur Azure AD Connect Seamless SSO est faux et amène à une vidéo expliquant le SSO applicatif. Préférer le lien suivant : https://www.youtube.com/watch?v=PyeAC85Gm7w (Microsoft Mechanics).  
Ceci étant, vu le thème du module, il serait bien plus pertinent de parler à ce moment du SSO (et pas du "Seamless" SSO).
# Module 10
OME a été remplçé par Purview Message Encryption ([comparaison](https://docs.microsoft.com/en-us/microsoft-365/compliance/ome-version-comparison?view=o365-worldwide#side-by-side-comparison-of-message-encryption-features-and-capabilities))  
A noter : [Pas de révocation possible si message non consommé par le biais d'un lien](https://docs.microsoft.com/en-us/microsoft-365/compliance/revoke-ome-encrypted-mail?view=o365-worldwide#encrypted-emails-that-you-can-revoke)...  
# Exemple de Timing (5 jours)
- Jour 1 : Intro + modules 1 et 2
- Jour 2 : Lab 2 + modules 3, 4 et 5
- Jour 3 : Modules 6, 7 (sans lab) et 8
- Jour 4 : Modules 9, 10 et 11
- Jour 5 : Module 12 (sans lab), 13 et 14  

# Exemple de Timing (4 jours)
  Le contenu est beaucoup trop riche pour être intégralement traité en 4 jours, il faudra faires des choix entre la théories/les échanges/les labs...
- Jour 1 : Intro + modules 1 et 2
- Jour 2 : modules 3, 4, 5 et 6
- Jour 3 : 7 (sans lab),8, 9 et 10
- Jour 4 : Modules 11, 12 (sans lab), 13 et 14  

# Transition de terminologie
|Ancien|Nouveau|Objet|
|--|--|--|
|Defender ATP|Defender for Endpoint|Cloud + Windows 10|
|Office ATP|Defender For Office|Safe Links, Safe Attachements, ZAP etc...|
|Azure ATP|Defender for Identity|Analyse hybride|
|Azure ATA|Aucun|Fin de support => Transition vers Defender for Identity|
 
Créer une nouvelle [Info sensible](https://docs.microsoft.com/en-us/microsoft-365/compliance/create-a-custom-sensitive-information-type?view=o365-worldwide#create-a-custom-sensitive-information-type)  
  
[Android Enterprise & Intune](https://docs.microsoft.com/en-us/mem/intune/enrollment/android-dedicated-devices-fully-managed-enroll)
  
[Synthèse licenses business](https://query.prod.cms.rt.microsoft.com/cms/api/am/binary/RE4VuQA)
  
[Comparaison fonctionnelle (non officielle) licenses](https://m365maps.com/matrix.htm#000000000000000000000)
  
[MDM for 365](https://docs.microsoft.com/en-us/microsoft-365/admin/basic-mobility-security/set-up?redirectSourcePath=%252fen-us%252farticle%252fManage-mobile-devices-in-Office-365-dd892318-bc44-4eb1-af00-9db5430be3cd&view=o365-worldwide) (Basic MDM)