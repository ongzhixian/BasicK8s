# Node

Kubernetes node is made of three major components:

1.  a kubelet
    - registers the node with the cluster and watches the API server for changes.
    - instantiates pods and responds to the master with the operation status.
1.  a container engine (ex. Docker or rkt)
    - responsible for creating containers from images 
    - starting or stopping containers
1.  a proxy
    - helps load-balance traffic coming to pods that are part of a service

