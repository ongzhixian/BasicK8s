# Pod

## Pod states

- Pending   Pod is waiting to be scheduled on a node
- Running   Containers inside the pod run
- Failed    One or more container terminated
- Succeeded All containers inside the pod exited with code 0
- Unknown   Node is unreachable – no update possible


## – Run a command inside a container

kubectl exec my-pod -- whoami


## Configure port with environmental variables

```yaml
```

