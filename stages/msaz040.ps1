#Résolution 1600*900 pour la VM goDeploy
install-packageProvider Nuget -Force|Out-Null
install-module displaySettings -force -allowClobber|Out-Null
import-module displaySettings
set-displayResolution -width 1600 -height 900 -force

#Paramètrage plus lisible à distance pour l'ISE Windows Powershell
$psISE.Options.Zoom = 150
$psISE.CurrentPowerShellTab.ExpandedScript = $false
$psISE.CurrentPowerShellTab.ShowCommands = $false

#Passage de la fenêtre Windows Powershell ISE en plein écran
$type = Add-Type -MemberDefinition '[DllImport("user32.dll")] public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);[DllImport("user32.dll")] public static extern int SetForegroundWindow(IntPtr hwnd);' -Name WindowAPI -PassThru
$null = $type::ShowWindowAsync((get-process powershell_ise).MainWindowHandle,3)
clear-host