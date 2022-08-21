# Port-forward

Forward a port that the container is listening* on to your device

```Syntax
Kubectl port-forward <pod-name> <HOST:PORT>:<CONTAINER-PORT>
```

```Actual
kubectl port-forward my-nginx 9090:80
--OR--
$ kubectl port-forward my-pod –p 9090:80
```


Create the pod as provided in the YAML. 
Forward the port 80 of the container to your localhost under port 8080. 
Access the container on your machine at: http://localhost:9090/
