# minikube (on PowerShell)

# tldr; commonly used 


minikube stop ; minikube start
minikube status
minikube ip
minikube service list




# Commands

minikube stop 

minikube start

minikube node add 
minikube node delete <node> 
minikube node list


minikube build         Build a container image in minikube
minikube load          Load an image into minikube
minikube ls            List images
minikube pull          Pull images
minikube push          Push images
minikube rm            Remove one or more images
minikube save          Save a image from minikube
minikube tag           Tag images

# Useful

1.  Cleanup docker image build artifacts

Remove 'docker.io/library/<none>:<none>'

``` ps
minikube image ls --format=json | ConvertFrom-Json | Where-Object { $_.repoTags.Contains("docker.io/library/<none>:<none>") } | ForEach-Object { minikube image rm $_.id }
```

# Minikube default container images

k8s.gcr.io/pause:3.7
k8s.gcr.io/pause:3.6
k8s.gcr.io/kube-scheduler:v1.24.3
k8s.gcr.io/kube-proxy:v1.24.3
k8s.gcr.io/kube-controller-manager:v1.24.3
k8s.gcr.io/kube-apiserver:v1.24.3
k8s.gcr.io/etcd:3.5.3-0
k8s.gcr.io/coredns/coredns:v1.8.6
gcr.io/k8s-minikube/storage-provisioner:v5

# Developer images

minikube image load mcr.microsoft.com/dotnet/sdk:6.0
minikube image load mcr.microsoft.com/dotnet/aspnet:6.0

minikube image load mcr.microsoft.com/dotnet/sdk:6.0-focal
minikube image load mcr.microsoft.com/dotnet/aspnet:6.0-focal
minikube image load mcr.microsoft.com/dotnet/runtime:6.0-focal

minikube image load mcr.microsoft.com/powershell:latest

minikube image load mcr.microsoft.com/mssql/server

minikube image load python:3.7-slim
minikube image load mysql:5.7
minikube image load nginx:1.22
minikube image load redis:6.2.7
minikube image load rabbitmq:3.10-management

minikube image load alpine:3.16
minikube image load ubuntu:jammy
minikube image load debian:bullseye-slim


docker.io/zhixian/alpine-lftp:latest
docker.io/library/alpine:latest
docker.io/library/ubuntu:latest
docker.io/library/debian:latest

docker.io/library/simple-mvc:1
docker.io/library/sgx-isin:v1
docker.io/library/basic-mvc:4
docker.io/library/basic-mvc:1


docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Password_123' -e 'MSSQL_PID=Express' -p 1433:1433 --name sqlserver mcr.microsoft.com/mssql/server

---
MYSQL

docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:5.7

minikube kubectl -- create deployment mysql-minikube --image=mysql:5.7
minikube kubectl -- set env deployment/mysql-minikube MYSQL_ROOT_PASSWORD=pass1234
minikube kubectl -- expose deployment mysql-minikube --type=NodePort --port=3306

---
RABBIT MQ

docker run -d --hostname my-rabbit --name some-rabbit rabbitmq:3


minikube kubectl -- create deployment rabbitmq-minikube --image=rabbitmq:3.10-management

minikube kubectl -- expose deployment rabbitmq-minikube --type=NodePort --port=15672,5672
-- OR --
minikube kubectl -- expose deployment rabbitmq-mgmt --type=NodePort --port=15672
minikube kubectl -- expose deployment rabbitmq-port --type=NodePort --port=5672


# Upgrade k8s

minikube start --kubernetes-version=v1.24.3

# When `kubectl top node|pod` is not working
1. Ensure that the respective pod is running
minikube start --extra-config=kubelet.housekeeping-interval=10s
(no need? by default already set)


# need to check this in more detail:
# https://medium.com/@kyralak/accessing-kubernetes-services-without-ingress-nodeport-or-loadbalancer-de6061b42d72