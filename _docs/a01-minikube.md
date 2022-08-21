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
minikube image load mcr.microsoft.com/powershell:latest

minikube image load mcr.microsoft.com/mssql/server

minikube image load python:3.7-slim
minikube image load mysql:5.7
minikube image load nginx:1
minikube image load redis:7

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