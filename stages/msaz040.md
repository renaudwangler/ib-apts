Il s'agit bien d'une formation officielle, mais qui n'a pas de certification associée. Son contenu est orienté terrain et assez pragmatique !  
Lien vers les labs officiels MS sur Github : https://github.com/MicrosoftLearning/AZ-040T00-Automating-Administration-with-PowerShell/blob/master/Instructions/Labs .
## Timing exemple
* Jour 1 : Introduction + Learning Path 1 et 2
* Jour 2 : Learning path 3 et 4
* Jour 3 : Learning path 5, 6 et 7 modules  5, modules 1, 2, 3 et 4
* Jour 4 : Fin du Learning path 7, Learning path 8
* Jour 5 : Learning path 9, 10 et 11  
## Démonstration
Exemple (a fin de démonstration, sans intérêt terrain) de renommage d'une propriété en sortie :  
  `Get-ComputerInfo | select @{l='ComputerName';e={$_.CSName}}|Get-Process`
## Tous les labs
Les ateliers sur goDeploy sont **nécessaires** pour ce stage. Cependant, le dépot gitHub contient des ateliers (LAB_XX) et les corrigés d'atelier (LAB_AK_XX).  
Le contenu proposé par goDeploy correspond bien plus aux corrigés. Certains stagiaires préfèreront donc probablement une démarche de recherche personnelle avec les ateliers avant de regarder les corrigés, s'ils ont déjà des connaissances et le temps d'assumer cette démarche.
<div id=""goDeploy></div>
 <div id="Azure"></div>