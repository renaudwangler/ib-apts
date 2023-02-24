---
ref: msaz104
title: Microsoft Azure - Administration
Azure: true
---
Le stage est plutôt dense sur 4 jours et s'adresse à des stagiaires qui ont impérativement suivi le msaz900 pour connaitre les principes Cloud et Azure de base.  
Le cas échéant, renvoyer les stagiaires sur le az-900 sur MSLearn.
# En direct du [Learning Download Center](https://learningdownloadcenter.microsoft.com/)
Dans les éléments téléchargeables concernant ce stage, ne pas passer à côté de :
- Le "Course Datasheet" qui contient des relations entre le contenu du stage en salle et les liens MSLearn correspondant.
- Le fichier "Demonstrations" qui, comme son nom l'indique, contient le déroulé des diverses démonstrations utilisées dans le stage.
- Le fichier "AssessmentGuide" qui comprend des liens afin de créer des formulaires/QCM pour chaque module et de les partager aux stagiaires (particulièrement pertinent poru de l'animation distancielle).
- Un changelog très complet.
# Timing exemple
- Jour 1 : Introduction modules 1 et 2
- Jour 2 : Modules 3,4 et 5
- Jour 3 : Modules 6, 7 et 8
- Jour 4 : Modules 9, 10 et 11
# Tous les labs
Les ateliers *goDeploy* ne sont pas nécessaires (voire pénalisant pour la partie Azure AD) avec ce stage.  
Si les stagiaires ont des problèmes, par exemple pour se connecter en RDP à une machine virtuelle, on purra se référer aux [procédures de mise en place d'un environnement d'ateliers ib sur un compte Azure](https://github.com/renaudwangler/ib/blob/master/extra/ibAzureLabs.md#mise-en-place-dun-environnement-dateliers-ib-sur-un-compte-azure)  
Lien vers [les labs az-104 sur Github](https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/) (qui sont illustrés.)  
Il existe désormais une [traduction française](https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator.fr-fr/) (probablement automatique) des ateliers.  
A voir aussi : [Simulation intéractive de tous les ateliers az-104](https://mslabs.cloudguides.com/guides/AZ-104%20Exam%20Guide%20-%20Microsoft%20Azure%20Administrator).  
Expliquer la procédure de nettoyage consistant à supprimer le Resource Group, souvent plus pertinente que les commandes fournies.
# Atelier 2
Pour les stagiaires ayant utilisé la **procédures de mise en place d'un environnement d'ateliers ib sur un compte Azure**, la stratégie (AZure Policy) travaillera sur le resource group *ibLabs* qui est vérouillé : inviter à supprimer le verrou (*lock*) pour faire le ménage des stratégies.
# Atelier 5
Pour éviter les limitations du Pass Azure, conseiller les régions **eastus** et **westus** (et rappeler que les crochets **[** et **]** ne sont pas à conserver.
# Atelier 6
Il semblerait que, de manière aléatoire, le "network watcher" pose des problèmes dans certaines régions avec les limitations des Pass azure...  
Voici un code Powershell permettant de réaliser les test Network Watcher dans tous les cas :
```
$rgName = "az104-06-rg1"
echo 'getting VMs'' informations.'; $VMs=@();$tests=@();$results=@();Get-AzVM -ResourceGroupName $rgName|ForEach-Object {$vms+=[pscustomobject]@{name=$_.name;location=$_.location;id=$_.id;ip=(Get-AzNetworkInterface -ResourceId ($_.networkprofile.networkInterfaces[0].id)).IpConfigurations[0].PrivateIpAddress}}
$VMNum=$VMs.count*($VMs.count-1); $i=1; foreach ($vmSource in $VMs) {foreach ($vmDest in $VMs) {if ($vmSource.name -ne $vmDest.name) { Write-Progress -Activity "Launching tests" -Status "$($vmSource.name) to $($vmDest.name)" -PercentComplete ($i/$VMNum*100);$i++;$tests+=[pscustomobject]@{sourceVM=$vmSource.name;destinationVM=$vmDest.name;destinationIP=$vmDest.ip;job=Test-AzNetworkWatcherConnectivity -NetworkWatcher (Get-AzNetworkWatcher|Where-Object -Property Location -eq $vmSource.location) -SourceId $vmSource.id -DestinationAddress $vmDest.ip -DestinationPort 3389 -AsJob}}}}
$i=1; foreach ($test in $tests) {Write-Progress -Activity "Waiting for results" -Status "$($test.sourceVM) to $($test.destinationVM)" -PercentComplete ($i/$VMNum*100);$i++; While ($test.job.state -notlike 'completed') {Start-Sleep -s 15}; $results+=[pscustomobject]@{sourceVM=$test.sourceVM;targetVM=$test.destinationVM;targetIP=$test.destinationIP;targetPort='3389';result=$test.job.output.connectionStatus;latency=$test.job.output.avglatencyinms}}
$results|format-table
```  
S'il est impossible d'ajouter une table de routage à un subnet depuis ladite table (latence d'affichage), essayer de passer par l'édtion du dubnet...  
Voici un code Powershell pour réaliser le loadBalancer si les vNet tardent à remonter dans l'interface du portail:
```
$publicip=New-AzPublicIpAddress -Name 'az104-06-pip4' -ResourceGroupName 'az104-06-rg1' -Location (Get-AzResourceGroup -Name 'az104-06-rg1').location -Sku standard -AllocationMethod static
$frontIp = New-AzLoadBalancerFrontendIpConfig -Name 'frontEnd' -PublicIpAddress $publicIp;$bepool = New-AzLoadBalancerBackendAddressPoolConfig -Name 'az104-06-lb4-be1';$probe = New-AzLoadBalancerProbeConfig -Name 'az104-06-lb4-hp1' -Protocol tcp -Port 80 -IntervalInSeconds 5 -ProbeCount 2;$lbRule = New-AzLoadBalancerRuleConfig -Name 'az104-06-lb4-lbrule1' -Protocol tcp -FrontendPort 80 -BackendPort 80 -IdleTimeoutInMinutes 4 -FrontendIpConfiguration $frontIp -BackendAddressPool $bePool -EnableTcpReset -DisableOutboundSNAT
New-AzLoadBalancer -ResourceGroupName 'az104-06-rg1' -Name 'az104-06-lb4' -Location (Get-AzResourceGroup -Name 'az104-06-rg1').location -Sku Standard -FrontendIpConfiguration $frontIp -BackendAddressPool $bePool -LoadBalancingRule $lbRule -Probe $probe
$bepool = get-AzLoadBalancerBackendAddressPool -ResourceGroupName 'az104-06-rg1' -LoadBalancerName 'az104-06-lb4' -Name 'az104-06-lb4-be1'
$vNet = Get-AzVirtualNetwork -Name 'az104-06-vnet01' -ResourceGroupName 'az104-06-rg1';$ip0 = New-AzLoadBalancerBackendAddressConfig -IpAddress "10.60.0.4" -Name "az104-06-vm0" -VirtualNetworkid $vNet.id;$ip1 = New-AzLoadBalancerBackendAddressConfig -IpAddress "10.60.1.4" -Name "az104-06-vm1" -VirtualNetworkid $vNet.id;$bepool.LoadBalancerBackendAddresses.Add($ip0);$bepool.LoadBalancerBackendAddresses.Add($ip1);Set-AzLoadBalancerBackendAddressPool -InputObject $bepool
```
Voici un code Powershell pour réaliser l'Application Gateway si problème avec affichage des vNet dans le protail :  
```
$vNet = Get-AzVirtualNetwork -Name 'az104-06-vnet01' -ResourceGroupName 'az104-06-rg1'; $subnetConfig = Add-AzVirtualNetworkSubnetConfig -Name 'subnet-appgw' -virtualNetwork $vNet -AddressPrefix '10.60.3.224/27'; $vNet| Set-AzVirtualNetwork; $pip = New-AzPublicIpAddress -ResourceGroupName az104-06-rg1 -Location eastus -Name az104-06-pip5 -AllocationMethod Dynamic; $subNet = $vnet.Subnets|where name -eq subnet-appgw
$gipconfig = New-AzApplicationGatewayIPConfiguration -Name myAGIPConfig  -Subnet $subnet ; $fipconfig = New-AzApplicationGatewayFrontendIPConfig  -Name myAGFrontendIPConfig -PublicIPAddress $pip; $frontendport = New-AzApplicationGatewayFrontendPort -Name myFrontendPort -Port 80; $defaultPool = New-AzApplicationGatewayBackendAddressPool -Name az104-06-appgw5-be1 -BackendIPAddresses '10.62.0.4', '10.63.0.4';$poolSettings = New-AzApplicationGatewayBackendHttpSettings -Name az104-06-appgw5-http1 -Port 80 -Protocol Http -CookieBasedAffinity Enabled -RequestTimeout 20; $defaultlistener = New-AzApplicationGatewayHttpListener -Name az104-06-appgw5-rl1l1 -Protocol Http -FrontendIPConfiguration $fipconfig -FrontendPort $frontendport; $frontendRule = New-AzApplicationGatewayRequestRoutingRule -Name az104-06-appgw5-rl1  -RuleType Basic -HttpListener $defaultlistener -BackendAddressPool $defaultPool -BackendHttpSettings $poolSettings; $sku = New-AzApplicationGatewaySku -Name WAF_Medium -Tier WAF -Capacity 2
$appgw = New-AzApplicationGateway -Name az104-06-appgw5  -ResourceGroupName az104-06-rg1  -Location eastus -BackendAddressPools $defaultPool  -BackendHttpSettingsCollection $poolSettings -FrontendIpConfigurations $fipconfig -GatewayIpConfigurations $gipconfig -FrontendPorts $frontendport -HttpListeners $defaultlistener -RequestRoutingRules $frontendRule -Sku $sku
```
# Atelier 7
Dans l'exercice 1, tâche 5 on utilise le "*Run command*" de la paravirtualisation Azure pour faire un new-PSDrive en powershell. Si le nom du storage account créé précédemment *commence par un n* le binôme de caractères "**\n**" pourra être interprété comme un retour à la ligne....
# Module 9
Il pourra être pertinent de faire une double-démonstration :
  - Créer une Web-App avec un conteneur Docker "nginx" récupéré depuis le Docker Hub
  - Créer une instance de conteneur "nginx" récupérée depuis le Docker Hub  

Cela permet de bien montrer la différence entre les deux approches, la gestion applicative complète PAAS de la web-app et le '*quasi-Iaas*' de l'instance de conteneur.
# Atelier 10
A noter que si l'on crée un **Log Analytics** en "East US", le **Automation Account** derva être créé dans la région "East US 2" (et vice versa, comme indiqué dans le document pointé par la petite note de l'atelier).