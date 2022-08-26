# Overview of things to setup
# Namespace
# Volumes and claims
# Secrets
# Config Maps
# Cron jobs
# StatefulSets / Deployments

########################################
## Namespace

# kubectl apply -f .\namespace.yaml

########################################
## Volumes and claims

kubectl apply -f .\database-5gi-pv.yaml
kubectl apply -f .\fileshare-5gi-pv.yaml

########################################
## Secrets

# Function ConvertFrom-Base64 { [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($args)) }
# kubectl create secret generic my-secret3 --from-file=$env:USERPROFILE/.pythonanywhere.json
# kubectl create secret generic my-secret3 --from-file=$env:USERPROFILE/.pythonanywhere.json
kubectl create secret generic mysql-secret --from-literal=PASSWORD=pass1234 -o yaml --dry-run=client > secret-mysql.yaml

kubectl create secret generic mysql-secret --from-literal=PASSWORD=$((Get-Content "$env:USERPROFILE/.pythonanywhere.json" -Raw | ConvertFrom-Json).MYSQL.dev_forum.PASSWORD) -o yaml --dry-run=client > secret-mysql.yaml


########################################
## Config Maps

kubectl apply -f .\config-maps.yaml

########################################
## Cron jobs

kubectl apply -f .\cron-jobs.yaml

########################################
## StatefulSets / Deployments (applications)

kubectl apply -f .\nginx.yaml