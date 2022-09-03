# Overview

## tldr;

```
helm create hello-world
helm lint

helm install helloworld my-local-repo/hello-world

helm install hello-world ./hello-world
helm upgrade hello-world ./hello-world
helm rollback hello-world 1
helm uninstall hello-world

helm package .


helm ls --all
helm template ./hello-world

 helm history hello-world

python -m http.server 9000
helm repo index .\helm-repository\ http://localhost:9000

helm repo add my-repo 
helm repo add my-local-repo http://localhost:9000


helm repo index .\helm-repository\ --url http://localhost:9000

helm search repo

helm install helloworld my-local-repo/hello-world
```

Files created:

Chart.yaml:     main file; contains description chart
values.yaml:    file containing default values for chart
templates:      directory where Kubernetes resources are defined as templates
charts:         optional directory for sub-charts
.helmignore:    filepath patterns to ignore when packaging (similar in concept to .gitignore)



