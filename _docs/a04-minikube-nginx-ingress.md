# Minikube Ingress (using Minikube)



# Enable addon
minikube addons enable ingress

# Check that ingress is running
kubectl get pods -n ingress-nginx


kubectl create deployment web --image=gcr.io/google-samples/hello-app:1.0
kubectl expose deployment web --type=NodePort --port=8080
kubectl get service web

kubectl create deployment web2 --image=gcr.io/google-samples/hello-app:2.0
kubectl expose deployment web2 --port=8080 --type=NodePort

minikube service web --url

kubectl get ingress


# Static IP

for anyone interested, i worked around this with a simple static ip. Disadvantage is, its not returned with "minikube ip". But since i can configure it thats not a big problem..
minikube ssh "sudo ifconfig eth0:0 192.168.99.200"

https://github.com/kubernetes/minikube/issues/951


sudo ifconfig eth0 down
sudo ifconfig eth0 192.168.1.242
sudo ifconfig eth0 up

See also: https://superuser.com/questions/564797/change-ip-address-permanently-with-ifconfig-in-debian

# Reference

https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/
https://github.com/kubernetes/ingress-nginx/blob/main/docs/user-guide/exposing-tcp-udp-services.md
https://docs.nginx.com/nginx-ingress-controller/
https://github.com/kubernetes/ingress-nginx

https://kubernetes.github.io/ingress-nginx/user-guide/exposing-tcp-udp-services/

https://www.ibm.com/support/pages/expose-nginx-ingress-controller-another-port-0

https://docs.k0sproject.io/v1.23.6+k0s.2/examples/nginx-ingress/
