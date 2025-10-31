---
title: Automatiser les tâches d'administration Windows avec PowerShell
labs: https://github.com/MicrosoftLearning/AZ-040T00-Automating-Administration-with-PowerShell/blob/master/Instructions/Labs
goDeploy: true
Azure: true
editDate: 06/03/2024
---
Il s'agit bien d'une formation officielle, mais qui n'a pas de certification associée. Son contenu est orienté terrain et assez pragmatique !
# Timing exemple
- Jour 1 : Introduction + Learning Path 1 et 2
- Jour 2 : Learning path 3 et 4 (les LP ne sont pas du tout équilibrés : ne pas hésiter à s'arreter/déjeuner sur le lab A du LP 3 par exemple)
- Jour 3 : Learning path 5, 6 et 7 modules 1, 2, et 3
- Jour 4 : Fin du Learning path 7, Learning path 8 (voir plus si contraintes le Vendredi)
- Jour 5 : Learning path 9, 10 et 11  

# Démonstration
Pour améliorer la visibilité des déponstration, lancer la commande suivante dans un **Windows Powershell ISE** :  
```Invoke-Command -ScriptBlock ([Scriptblock]::Create((Invoke-WebRequest 'https://raw.githubusercontent.com/renaudwangler/ib-apts/master/stages/msaz040.ps1' -useBasicParsing).Content))```  

Fournir aux stagiaires la liste brute de toutes les commandes utilisées (dans une session Powershell) pendant les démonstration :  
```(get-history).CommandLine|out-File -filePath "$env:ALLUSERSPROFILE\desktop\$(get-date -format 'yyyyMMdd-HH').ps1";start msedge```

Exemple (a fin de démonstration, sans intérêt terrain) de renommage d'une propriété en sortie :  
  ```Get-ComputerInfo | select @{l='ComputerName';e={$_.CSName}}|Get-Process```  

# Tous les labs
Pour *nettoyer* le démarrage des ateliers, utiliser la commande suivante :
```Invoke-Command -ScriptBlock ([Scriptblock]::Create((Invoke-WebRequest 'https://raw.githubusercontent.com/renaudwangler/ib-labs/master/dcNetStart/doItAll.ps1' -useBasicParsing).Content))```  
(Dans ce stage, lon-svr1 ne redémarre pas correctement : le redémarrer *à la main*)  

Les ateliers sur goDeploy sont **nécessaires** pour ce stage. Cependant, le dépot gitHub contient des ateliers (LAB_XX) et les corrigés d'atelier (LAB_AK_XX).  
Le contenu proposé par goDeploy correspond bien plus aux corrigés. Certains stagiaires préfèreront donc probablement une démarche de recherche personnelle avec les ateliers avant de regarder les corrigés, s'ils ont déjà des connaissances et le temps d'assumer cette démarche.
# Module 6 
A date, la version de l'ISE Windows Powershell dans les machines virtuelles goDeploy semble avoir un problème avec le type **ArrayList** (pas de problème dans l'invite PowerShell)
## EX 1 - Task 2 . Exemples alternatifs de concaténation: 
```$logFile = "" + $today.Year + "-" + $today.Month + "-" + $today.Day + "-" + $today.Hour + "-" + $today.Minute + ".txt"```  
```$logFile = "$($today.Year)-$($today.Month)-$($today.Day)-$($today.Hour)-$($today.Minute).txt"```  
```$logFile = "{0:yyyy-MM-dd-hh-mm}.txt" -f $today```  

# Module 7
Process items by using If statements :  
```get-content services.txt|get-service|Where status -ne 'Running'|start-service```  
Create user acounts based on a CSV File :  
```
import-csv E:\MOD08\labfiles\users.csv |select @{n="GivenName" ; e={$_.First} }, 
@{n="Surname" ; e={$_.Last} }, 
@{n="Name" ; e={$_.First + " " + $_.Last} }, 
@{n="DisplayName" ; e={$_.First + " " + $_.Last} }, 
@{n="SamAccountName" ; e={$_.UserID} }, 
@{n="UserPrincipalName" ; e={$_.UserID + "@adatum.com"} }, 
@{n="Path" ; e={"OU=" + $_.Department + ",DC=Adatum,DC=com"} }, 
Department | New-ADUser -whatif 
```  

```
$users = Import-CSV E:\mod08\Labfiles\users.csv 
ForEach ($u in $users) { 
   $param= @{ 
      "GivenName" = $u.First 
      "Surname" = $u.Last 
      "Name" = $u.First + " " + $u.Last 
      "DisplayName" = $u.First + " " + $u.Last 
      "SamAccountName" = $u.UserID 
      "UserPrincipalName" = $u.UserID + "@adatum.com" 
      "Path" = "OU=" + $u.Department + ",DC=Adatum,DC=com" 
      "Department" = $u.Department 
   } 
   Write-Host "Creating $($u.UserId) in $($user.Department)" 
   New-ADUser @param -WhatIf 
}
```  

# Atelier 7
Il pourra être utile de redémarrer le service de ceritificats sur lon-dc1 en cas de soucis pour obtenir le certificat de signature de code :
- Dans l'outil d'administration "**Certification Authority**", clic droit sur "**Adatum CA**", "**All tasks/stop service**" puis "**All tasks/Start service**"
- ou (mieux) ```invoke-command -computerName lon-dc1 -scriptBlock {restart-service certsvc}```  

# Astuces et rappels
## Formattage :
- Les guillemets **"** et apostrophes **'** servent à délimiter les chaînes de caractères (Module 6).  
- Les accolades **{}** délimitent un bloc de code pour certaines cmdlets (Module 3 et 10) ou dans les structures de programmation (Module7).  
- Les crochets **[]** sont utilisés pour accéder aux éléments d'un tableau ou d'une table de hashage (Module 6).  
- Les parenthèses **()** sont utilisées pour le passage de paramètres aux méthodes d'objet ou pour définir une forme de priorité d'exécution.  
## Fichiers de profile
Où mettre le fichier de profile: 
- All users: ```$pshome``` (C:\Windows\System32\WindowsPowerShell\v1.0)  
- Current user: ```$home\Documents\WindowsPowerShell```

Quel nom lui donner:  
- All hosts: ```Profile.ps1```
- Console: ```Microsoft.PowerShell_profile.ps1```
- Windows PowerShell ISE: ```Microsoft.PowerShellISE_profile.ps1```
## -like
- Recherche de plage: ```"ma chaîne" -like "[m-o]*"``` (commence par m, n ou o)  
- Recherche par caractère: ```"ma chaîne" -like "[mst]a*"``` (commence par ma, sa ou ta)  
- Permet ainsi de  
  - Rechercher ? et *: ```"ça va?" -like "*[?]*"```
  - Recherche [ : ```-like "*[[]*"``` (il faut encadrer le crochet ouvrant par des crochets) 
  - Recherche ] : ```-like "*]*"``` (on recherche le crochet fermant comme n'importe quel caractère)
## ConvertTo et Export
Attention le Out-File génère un fichier encodé en ASCII (ce qui peut provoquer une mauvaise interprétation du CSV par Excel), alors que Export-CSV génère un fichier en UTF-8.  
Il faut utiliser le paramètre Encoding sur Out-File pour changer l'encodage (ar exemple en indiquant la valeur utf8: ```|out-file .\fichierExport.csv -encoding utf8```).
## WMI et Associations
De façon à obtenir les objets associés:  
- avec Get-WMIObject:
  - ```(Get-wmiobject –Query “SELECT * FROM Win32_NetworkAdapter where deviceid=1").getrelated()```
  - ```(Get-wmiobject –Query “SELECT * FROM Win32_NetworkAdapter where deviceid=1").getrelated("win32_networkadapterconfiguration")```  
- avec Get-CimInstance:
  - ```Get-ciminstance –Query “SELECT * FROM Win32_NetworkAdapter where deviceid=1"|Get-CimAssociatedInstance```
  - ```Get-ciminstance –Query “SELECT * FROM Win32_NetworkAdapter where deviceid=1"|Get-CimAssociatedInstance -ResultClassName Win32_NetWorkAdapterConfiguration```
- Tables de hashage
```
$PSDefaultParameterValues=@{"get-ciminstance:computername"="lon-dc1"}
$PSDefaultParameterValues.Add("get-ciminstance:classname","win32_BIOS")
get-ciminstance -ClassName win32_operatingsystem`
$PSDefaultParameterValues=@{}
$param=@{"class"="win32_bios";"comp"="lon-dc1"} 
$param
#splatting 
Get-CimInstance @param 
get-wmiobject @param
```  

## Comparaison de tableaux
```Get-Process | Export-CliXML data_t1.xml```  

... Puis, plus tard  

```ompare-Object (Import-CliXML data_t1.xml) (Get-Process) -Property Name```
## Retour de Fonctions
```
function Get-Retour{ 
   "chaîne"  
   write-host "host" # écrit directement sur l'hôte 
   write "write" # alias de write-output 
   write-Output "output" 
   return "return" # impose de sortir 
   "fin" # non atteignable 
}
```  

## Multi-Hop Remoting
[Autre alternative](https://docs.microsoft.com/fr-fr/archive/blogs/sergey_babkins_blog/another-solution-to-multi-hop-powershell-remoting) (Forcer une connexion via un login de l'ordinateur intermédiaire.)  
```Set-ADComputer -Identity LON-SVR2 -PrincipalsAllowedToDelegateToAccount LON-SVR3``` : 
C'est l'inverse, à savoir on donne à la destination le nom du serveur qui aura le droit de lui déléguer un compte (donc identity doit être le 3ème serveur, et le PrincipalsAllowed... le serveur intermédiaire).  
Test effectué avec l'environnement de formation, en exécutant ```Set-ADComputer LON-DC1 -PrincipalsAllowedToDelegateToAccount LON-SVR1``` puis ```klist purge``` depuis LON-SVR1: le rebond fonctionne (invoke-command et Get-ADUser) seulement en ajoutant un credential...
## Divers
- Convertir une chine en décimal : ```$valeur='10';$valeur+1;[decimal]$valeur+1```
- Pédagogiquement, il est pertinent de construire des exemples et d'éviter les $variable et autres $test (le point précédent est un excellent contre-exemple)...
- **Update-Help** : En fait, il interroge par rapport à la culture de l'utilisateur. Or il n'existe pas forcément de traduction. Il faut donc forcer la langue anglaise: ```Update-Help -UICulture 'en-us'```  
- Alternative à For : ```1..10 | ForEach { Write-Host “Creating User $_” }```   
- [Documentation utile sur les credentiels](https://www.it-connect.fr/powershell-gerer-ses-credentials-avec-le-module-secret-management/)
- [Get MFA Status of Office 365 users with PowerShell](https://lazyadmin.nl/powershell/list-office365-mfa-status-powershell/)
