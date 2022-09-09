param (
    [string] $task='do-nothing'
)

function Install-NewK8s {
    param (
        # OptionalParameters
    )
    kubectl apply -f .\ns-devenv.yaml
    
    kubectl apply -f .\pv-mysql-1gi.yaml
    kubectl apply -f .\pv-generic-fileshare.yaml
    kubectl create secret generic mysql-secret --from-literal=PASSWORD=$((Get-Content "$env:USERPROFILE/.pythonanywhere.json" -Raw | ConvertFrom-Json).MYSQL.dev_forum.PASSWORD) -o yaml --dry-run=client > secret-mysql.yaml
    kubectl apply -f .\secret-mysql.yaml
    kubectl apply -f .\app-mysql.yaml
    kubectl apply -f .\svc-mysql.yaml


    kubectl apply -f .\app-redis.yaml
    kubectl apply -f .\svc-redis.yaml
    
}

function Sync-Secrets {

    kubectl create secret generic mysql-secret --from-literal=PASSWORD=$((Get-Content "$env:USERPROFILE/.pythonanywhere.json" -Raw | ConvertFrom-Json).MYSQL.dev_forum.PASSWORD) -o yaml --dry-run=client > secret-mysql.yaml
    kubectl apply -f .\secret-mysql.yaml

    kubectl create secret generic cloud-amqp-secret --from-file=$env:USERPROFILE/.cloudampq.json -o yaml --dry-run=client > secret-cloud-amqp.yaml
    kubectl apply -f .\secret-cloud-amqp.yaml

    kubectl create secret generic mysql-settings-secret --from-file=$env:USERPROFILE/.pythonanywhere.json -o yaml --dry-run=client > secret-mysql-settings.yaml
    kubectl apply -f .\secret-mysql-settings.yaml
    
    kubectl create secret generic database-config-secret --from-file=$env:USERPROFILE/.database-config.json -o yaml --dry-run=client > secret-database-config.yaml
    kubectl apply -f .\secret-database-config.yaml

}

switch ($task) {
    'do-nothing' {
        exit 0
    }
    'install' {
        Install-NewK8s
    }
    'clean' {
        Write-Host "Todo"
        exit 0
    }
    'sync-secrets' {
        Sync-Secrets
    }
    Default {
        exit 1
    }
}



# Overview of things to setup
# Namespace
# Volumes and claims
# Secrets
# Config Maps
# Cron jobs
# StatefulSets / Deployments
# Services

# How to debug
#  > pod > job > cronjob

function Examples {
    # param (
    #     OptionalParameters
    # )
    ########################################
    ## Namespace

    kubectl apply -f .\namespace.yaml

    ########################################
    ## Volumes and claims

    kubectl apply -f .\database-5gi-pv.yaml
    kubectl apply -f .\fileshare-5gi-pv.yaml

    ########################################
    ## Secrets (ConvertFrom-Base64)

    # kubectl create secret generic my-secret3 --from-file=$env:USERPROFILE/.pythonanywhere.json
    # kubectl create secret generic mysql-secret --from-literal=PASSWORD=pass1234 -o yaml --dry-run=client > secret-mysql.yaml
    # kubectl create secret generic cloud-amqp-secret --from-literal=CLOUD_AMQP_URL=$((Get-Content "$env:USERPROFILE/.cloudampq.json" -Raw | ConvertFrom-Json).cloud_amqp.armadillo.url) -o yaml --dry-run=client > secret-cloudamqp.yaml

    Sync-Secrets
    

    ########################################
    ## Config Maps

    # kubectl create config cloud_amqp --from-file=$env:USERPROFILE/.cloudampq.json
    # kubectl apply -f .\config-maps.yaml

    ########################################
    ## Cron jobs

    # kubectl apply -f .\cron-jobs.yaml

    ########################################
    ## StatefulSets / Deployments (applications)

    # kubectl apply -f .\nginx.yaml
    kubectl apply -f .\app-mysql.yaml


    ########################################
    ## Services

    kubectl apply -f .\service.yaml

    
}
