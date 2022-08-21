# kubectl CLI


``` CLI syntax

kubectl create configmap my-configmap --from-literal=key1=config1 --from-literal=key2=config2
```

``` CLI example
kubectl create configmap my-configmap --from-literal=SOMEKEY=SOMEVAL -o yaml --dry-run=client > my-configmap.yaml

```