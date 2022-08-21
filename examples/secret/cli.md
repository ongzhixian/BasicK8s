# kubect CLI

``` CLI syntax

kubectl create secret generic <NAME> 
    --from-literal=<KEY>=<VALUE> 
    --from-env-file=<FILE> 
    --from-file=<FILE>
```

``` CLI example
kubectl create secret generic my-secret --from-literal=SOMEKEY=SOMEVAL -o yaml --dry-run=client > my-secret.yaml

```

kubectl create configmap my-config --from-literal=key1=config1 --from-literal=key2=config2

ubectl create secret generic <NAME> --from-literal=<KEY>=<VALUE> --from-env-file=<FILE> --from-file=<FILE>
