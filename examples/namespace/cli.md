# kubetl CLI

## kubectl namespace CLI

kubectl get namespaces

## dry-runs

kubectl create namespace my-namespace -o yaml --dry-run=client > my-namespace.yaml

kubectl create namespace financial-instrument -o yaml --dry-run=client > financial-instrument.yaml

# namespace names

financial-instrument
