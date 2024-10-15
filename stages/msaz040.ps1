#Nettoyage du réseau si lançé depuis le DC
if ((Get-CimInstance -ClassName Win32_OperatingSystem).ProductType -eq 2) {
  #La machine est un contrôleur de domaine.
  $ADdomain = Get-ADDomain -Current LocalComputer
  if ((Get-NetConnectionProfile).NetworkCategory -ne 'DomainAuthenticated') {
    Write-Host "Nettoyage du réseau local." -ForegroundColor Yellow
    Get-NetAdapter|Restart-NetAdapter
    while((Get-NetConnectionProfile).NetworkCategory -ne 'DomainAuthenticated') { Start-Sleep -Seconds 1 }}
  Get-ADComputer -Filter * | Where DNSHostName -NotLike "$($ENV:ComputerName)*" | ForEach-Object {
    try { 
        Restart-Computer -ComputerName $_.DNSHostName -Force -ErrorAction Stop
        Write-Host "Redémarrage de $($_.DNSHostName)." -ForegroundColor Green }
    Catch { 
        Write-Host "Impossible de redémarrer $($_.DNSHostName)." -ForegroundColor Red
        Write-Host "  ($($_.Exception.Message))." -ForegroundColor Magenta }}}

#Résolution 1600*900 pour la VM goDeploy
set-displayResolution -width 1600 -height 900 -Force

#Paramètrage plus lisible à distance pour l'ISE Windows Powershell
$psISE.Options.Zoom = 150
$psISE.CurrentPowerShellTab.ExpandedScript = $false
$psISE.CurrentPowerShellTab.ShowCommands = $false

#Passage de la fenêtre Windows Powershell ISE en plein écran
$type = Add-Type -MemberDefinition '[DllImport("user32.dll")] public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);[DllImport("user32.dll")] public static extern int SetForegroundWindow(IntPtr hwnd);' -Name WindowAPI -PassThru
$null = $type::ShowWindowAsync((get-process powershell_ise).MainWindowHandle,3)
clear-host