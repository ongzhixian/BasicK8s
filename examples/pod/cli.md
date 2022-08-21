# kubectl CLI

kubectl apply -f .\nginx.yaml
kubectl apply -f .\python.yaml



XX
kubectl exec my-python -- bash
kubectl exec <pod-name> -- <command


## Port-forwarding

Create the pod as provided in the YAML. 
Forward the port 80 of the container to your localhost under port 8080. 
Access the container at: http://localhost:9090/


```Syntax
Kubectl port-forward <pod-name> <HOST:PORT>:<CONTAINER-PORT>
```

```Actual
kubectl port-forward my-nginx 9090:80
```
