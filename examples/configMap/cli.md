# kubectl CLI


``` CLI syntax

kubectl create configmap my-configmap --from-literal=key1=config1 --from-literal=key2=config2
```

``` CLI example
kubectl create configmap my-configmap --from-literal=SOMEKEY=SOMEVAL -o yaml --dry-run=client > my-configmap.yaml

```

``` CLI: Create config map from key-value pairs in files in 'sample-game-config/' directory
kubectl create configmap game-config --from-file=sample-game-config/
```

``` Create config map from file (instead of directory)
kubectl create configmap game-props --from-file=sample-game-config/game.properties
```

``` Json file:
kubectl create configmap app-props --from-file=sample-game-config/any-config.json
```

The above will create something equivalent to:
```
apiVersion: v1
data:
  any-config.json: "{\r\n    \"MYSQL\" : {\r\n        \"dev_forum\": {\r\n            \"HOST\"
    \    : \"172.26.214.38\",\r\n            \"PORT\"     : 32056,\r\n            \"DATABASE\"
    : \"somedatabase\",\r\n            \"USERNAME\" : \"someusername\",\r\n            \"PASSWORD\"
    : \"somepassword\"\r\n        }\r\n    },\r\n    \"SESSION_SECRET_KEY\": \"somesecretkey\"\r\n}"
kind: ConfigMap
```

Note: Each filename becomes a key in the configMap.
      When the configMap is mount as a volume (like below), the key gets mapped to a file in the mount directory:
      /mnt/config/any-config.json

```
apiVersion: v1
kind: Pod
metadata:
  name: my-alpine3
spec:
  restartPolicy: "Never"
  volumes:
  - name: app-props
    configMap:
      name: app-props
  containers:
  - image: alpine:3.16
    name: alpine
    command: [ 'sh', '-c', 'sleep infinite' ]
    volumeMounts:
    - name: app-props
      mountPath: /mnt/config
```