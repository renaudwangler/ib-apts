---
title: Automatiser les tâches d'administration Windows avec PowerShell
labs: https://github.com/MicrosoftLearning/AZ-040T00-Automating-Administration-with-PowerShell/blob/master/Instructions/Labs
goDeploy: true
Azure: true
editDate: 24/02/2023
---
Il s'agit bien d'une formation officielle, mais qui n'a pas de certification associée. Son contenu est orienté terrain et assez pragmatique !
# Timing exemple
- Jour 1 : Introduction + Learning Path 1 et 2
- Jour 2 : Learning path 3 et 4 (les LP ne sont pas du tout équilibrés : ne pas hésiter à s'arreter/déjeuner sur le lab A du LP 3 par exemple)
- Jour 3 : Learning path 5, 6 et 7 modules 1, 2, et 3
- Jour 4 : Fin du Learning path 7, Learning path 8 (voir plus si contraintes le Vendredi)
- Jour 5 : Learning path 9, 10 et 11  

# Démonstration
Exemple (a fin de démonstration, sans intérêt terrain) de renommage d'une propriété en sortie :  
  `Get-ComputerInfo | select @{l='ComputerName';e={$_.CSName}}|Get-Process`
# Tous les labs
Les ateliers sur goDeploy sont **nécessaires** pour ce stage. Cependant, le dépot gitHub contient des ateliers (LAB_XX) et les corrigés d'atelier (LAB_AK_XX).  
Le contenu proposé par goDeploy correspond bien plus aux corrigés. Certains stagiaires préfèreront donc probablement une démarche de recherche personnelle avec les ateliers avant de regarder les corrigés, s'ils ont déjà des connaissances et le temps d'assumer cette démarche.
# Atelier 7
Il pourra être utile de redémarrer le service de ceritificats sur lon-dc1 en cas de soucis pour obtenir le certificat de signature de code :
- Dans l'outil d'administration "**Certification Authority**", clic droit sur "**Adatum CA**", "**All tasks/stop service**" puis "**All tasks/Start service**"
- ou (mieux) ```invoke-command -computerName lon-dc1 -scriptBlock {restart-service certsvc}```
