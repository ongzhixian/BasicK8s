# Metrics Server


`kubectl get deploy,svc -n kube-system | egrep metrics-server`

If metrics server is installed, you should see an output like:

```
deployment.extensions/metrics-server   1/1     1            1           3d4h
service/metrics-server   ClusterIP   198.51.100.0   <none>        443/TCP         3d4h
```


# Minikube context 

minikube addons list | grep metrics-server

minikube addons enable metrics-server
(need a minikube restart?)

kubectl get pods --namespace kube-system | grep metrics-server