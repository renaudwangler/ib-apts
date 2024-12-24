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

# Learning Path2 - Module 2 Plan and implement virtual network Service Endpoints
Le schéma de la diapositive est erroné puisqu'il parle d'accès d'une VM à une autre : le schéma sur Learn est correct.

# Atelier 1 
- A date (12/2024) la description synthètique de l'atelier go Deploy est incorrecte (inclut PIM) mais le contenu, lui, est correct.
- Dommage que la manipulation Entra Id en Powershell soit faite avec le module AzureAD et non avec le module Microsoft Graph

# Atelier 2
- Bien veiller à ce que les stagiaires ne sélectionnent pas les modèles *Classic* des diverses resources.

# Atelier 4
- Il est possible d'utiliser un numéro de mobile pour recevoir un texto pour la MFA.
Sinon, il est possible d'utiliser une application de vérification sur smartphone ou sur le poste de travail.
- Il faudra également pouvoir se connecter en RDP sur la vm Azure. Sinon, mettre en place (10/15 minutes) d'un bastion.
- **Attention** : Pas de nettoyage à l'issue de cet atelier, simple arrêt de la VM.  

# Atelier 5
La supression de l'Azure AD auquel est associé le test de licence Azure AD Premium ne pourra se faire dans le délai de la formation.
# Atelier 10
Bien utiliser (installer si nécessaire) le framework .Net 4.7.2 (et pas 5.0)
# Atelier 11
Dans l'environnement goDeploy, Defender for SQL étant déjà activé au préalable au niveau de l'abonnement, il est possible et probable qu'aucune recommandation n'apparaisse quant au statut des bases de données, même en attendant plus que le temps conseillé.
# Atelier 6 (sur goDeploy)
La mise en place de la haute disponibilité de la PTA telle que décrite dans le lab goDeploy n'est absolument pas pertinente : la seconde installation de "Azure AD Connect" désactive la première.  
La bonne manière de faire est d'installer et connecter uniquement un second connecteur PTA ([voir documentation](https://learn.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-pta-quick-start#step-4-ensure-high-availability)).  


# Ateliers en général
Pour plusieurs ateliers, il faudra s'assurer de la bonne synchronisation de l'heure de la machine (virtuelle) cliente...  
Par exemple, les journaux (logs) sont filtrés pour affichage en se basant sur l'horaire de la VM.

# Atelier 13
S'il est impossible d'ajouter (de voir) la VM depuis le workspace Log Analytics, procéder à l'onboard depuis le menu "Logs" de la VM...
