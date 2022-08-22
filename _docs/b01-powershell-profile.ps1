Function Set-Title { (Get-Host).UI.RawUI.WindowTitle = $args }
Function Get-IsAdmin { [bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544") }
Function Git-Log { git log --all --oneline }
Function Git-Status { git status --porcelain }
Function Convert-JsonToObject { @($input) | ConvertFrom-Json | % {$_} }

New-Alias -Name title -Value Set-Title
New-Alias -Name isadmin -Value Get-IsAdmin
New-Alias -Name git-log -Value Git-Log
New-Alias -Name git-status -Value Git-Status
New-Alias -Name dj -Value Convert-JsonToObject
New-Alias -Name jto -Value Convert-JsonToObject
New-Alias -Name kc -Value kubectl

$env:KUBECONFIG="C:\Users\zhixian\.kube\config;C:\Users\zhixian\k8s-training-kube-config.yaml"

# Assuming 172.25.116.157 is IP of minikube
# kubectl patch service mysql -p '{\"spec\": {\"externalIPs\": [\"172.25.116.157\"]}}'
kubectl patch service mysql -p $(ConvertTo-Json '{ "spec":{ "externalIPs": ["172.25.113.93"] } }')


cd D:\src\