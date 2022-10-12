$db_config_object = Get-Content $env:USERPROFILE\.database-config.json | ConvertFrom-Json
$node_json = kubectl get node -o json |ConvertFrom-Json
$ip_address = $node_json.items.status.addresses | Where-Object { $_.type -eq "InternalIP" } | Select-Object address
$db_config_object.financial.HOST = $ip_address.address
$db_config_object | ConvertTo-Json | Out-File $env:USERPROFILE\.database-config.json
