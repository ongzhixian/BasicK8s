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

kubectl create secret generic <NAME> --from-literal=<KEY>=<VALUE> --from-env-file=<FILE> --from-file=<FILE>


kubectl create secret generic my-secret --from-literal=username=someUsername --from-literal=password=somepassword -o yaml --dry-run=client > my-secret-credential.yaml

The above when mounted will render each key as a file (it looks like the below):

```
/mnt/secret # ls
password  username
/mnt/secret # cat username
someUsername
```

Hence, it is perhaps better to create them some a file like so:

kubectl create secret generic my-secret --from-file=sample-secrets/some-credential.json

```
/mnt/secret # ls some-credential.json
some-credential.json
/mnt/secret # cat some-credential.json
{
    "username": "myusername",
    "password": "mypassword"
}
```


OR from some directory like so:

kubectl create secret generic my-secret --from-file=sample-secrets/

```
/mnt # cd secret
/mnt/secret # ls
some-app-secret.json  some-credential.json
/mnt/secret # cat some-app-secret.json
{
    "appsecret": "myappsecret",
    "url": "myurl"
}
```

kubectl create secret generic my-secret2 --from-file=C:/Users/zhixian/.pythonanywhere.json