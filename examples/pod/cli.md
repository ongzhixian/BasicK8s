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


# Start a busybox pod and keep it in the foreground, don't restart it if it exits
kubectl run -i -t busybox --image=busybox --restart=Never

# Start the nginx pod using the default command, but use custom arguments (arg1 .. argN) for that command
kubectl run nginx --image=nginx -- <arg1> <arg2> ... <argN>

# Start the nginx pod using a different command and custom arguments
kubectl run nginx --image=nginx --command -- <cmd> <arg1> ... <argN>


## 
kubectl run nginx --image=nginx --command -- <cmd> <arg1> ... <argN>
kubectl run ptn --image=python:3.7-slim
kubectl exec ptn -it -- bash
kubectl exec ptn -it -- python

kubectl run ptn --image=python:3.7-slim -it
>>>quit
kubectl attach ptn -c ptn -it