---
title: Microsoft Azure - Technologies de sécurité
goDeploy: true
Azure: true
labs: https://microsoftlearning.github.io/AZ500-AzureSecurityTechnologies/
---
[Support de stage en Français](https://docs.microsoft.com/fr-fr/training/courses/AZ-500T00?WT.mc_id=ilt_partner_webpage_wwl&ocid=IB1090206#study-guide)  
[Support de stage en Anglais](https://docs.microsoft.com/en-us/training/courses/AZ-500T00?WT.mc_id=ilt_partner_webpage_wwl&ocid=IB1090206#study-guide)  
A date (09/2022) les diapositives françaises proposées en téléchargement sont d'une qualité tout à fait médiocre... A éviter donc...  
Indiquer aux stagiaires que les **éléments d'introduction des ateliers** (schémas) se retrouvent désormais en introduction des ateliers (github/goDeploy).
# En direct du [Learning Download Center](https://learningdownloadcenter.microsoft.com/)
Dans les éléments téléchargeables concernant ce stage, ne pas passer à côté du fichier "AssessmentGuide" qui comprend des liens afin de créer des formulaires/QCM pour chaque module et de les partager aux stagiaires (aprticulièrement pertinent poru de l'animation distancielle).
# Timing exemple
- Jour 1 (identité): Module 1 + Ateliers 1, 2, 3, 4 ,5 et 6 (l'ateliers 5 dépend du 4)
- Jour 2 (Sécurité des resources Azure): Module 2 + Ateliers 7, 8 et 9
- Jour 3 (Sécurité des données et applications): Module 3 + Atelier 10, 11 et 12
- Jour 4 (Sécurisation opérationnelle): Module 4 + Ateliers 13, 14 et 15  

# Timing Exemple sur 5 jours
(contenu léger pour 5 jours...)
- Jour 1: Module 0 (présentation) et Module 1, thèmes 1 et 2; Lab 6
- Jour 2: Module 1, thèmes 3 à 5, Labs 1 à 5; Module 2, thèmes 1 et 2 Labs 7 et 8 (lab en plus si goDeploy : 102 et 103)
- Jour 3: Module 2, thèmes 4 et 5, Lab 9 ( (lab en plus si goDeploy : 104 à 107); Module 3, thèmes 1 et 2, Lab 10
- Jour 4: Module 3, thèmes 3 et 4, labs 11 et 12; Module 4, thème 1 et 2
- Jour 5: Module 4, thème 3, Labs 13, 14 et 15  

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
# Ateliers
Pour plusieurs ateliers, il faudra s'assurer de la bonne synchronisation de l'heure de la machine (virtuelle) cliente...  
Par exemple, les journaux (logs) sont filtrés pour affichage en se basant sur l'horaire de la VM.
# Atelier 13
S'il est impossible d'ajouter (de voir) la VM depuis le workspace Log Analytics, procéder à l'onboard depuis le menu "Logs" de la VM...
# Ateliers goDeploy
Limitation de 5 lancements des ateliers "Cloud Shared" de cette formation.
# Accompagnement Ateliers
Au vu du timing de la session (on a le temps de le faire), il sera **très pertinent** que l'animateur/trice fasse une revue de détail du contenu des labs (quelle commande Powershell sert à quoi) si besoin **après** la réalisation autonome des ateliers.
