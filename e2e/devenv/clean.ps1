kubectl delete -f .\fileshare-5gi-pv.yaml
kubectl delete -f .\database-5gi-pv.yaml
kubectl apply -f .\namespace.yaml
# kubectl create secret generic my-secret3 --from-file=$env:USERPROFILE/.pythonanywhere.json
