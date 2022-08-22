# Applications

8.1: Run a Stateless Application Using a Deployment
    stateless nginx deployment

    kubectl run -it --rm --image=nginx:1.22 --restart=Never nginx-client -- bash

8.2: Run a Single-Instance Stateful Application
    stateful mysql   deployment

    kubectl run -it --rm --image=mysql:5.7 --restart=Never mysql-client -- mysql -h mysql -ppassword

    kubectl run -it --rm --image=mysql:5.7 --restart=Never mysql-client -- bash

    

8.3: Run a Replicated Stateful Application

- ConfigMap

    This ConfigMap provides my.cnf overrides that let you independently control configuration on the primary MySQL server and its replicas. 
    In this case, you want the primary server to be able to serve replication logs to replicas and you want replicas to reject any writes that don't come via replication.

    There's nothing special about the ConfigMap itself that causes different portions to apply to different Pods. 
    Each Pod decides which portion to look at as it's initializing, based on information provided by the StatefulSet controller.

- Service

    The headless Service provides a home for the DNS entries that the StatefulSet controllers creates for each Pod that's part of the set. Because the headless Service is named mysql, the Pods are accessible by resolving <pod-name>.mysql from within any other Pod in the same Kubernetes cluster and namespace.

    The client Service, called mysql-read, is a normal Service with its own cluster IP that distributes connections across all MySQL Pods that report being Ready. The set of potential endpoints includes the primary MySQL server and all replicas.

    Note that only read queries can use the load-balanced client Service. 
    Because there is only one primary MySQL server, clients should connect directly to the primary MySQL Pod 
    (through its DNS entry within the headless Service) to execute writes

Understanding stateful pod initialization

Before starting any of the containers in the Pod spec, the Pod first runs any init containers (initContainers) in the order defined.

The first init container, named init-mysql, generates special MySQL config files based on the ordinal index.

The script determines its own ordinal index by extracting it from the end of the Pod name, which is returned by the hostname command. 
Then it saves the ordinal (with a numeric offset to avoid reserved values) into a file called server-id.cnf in the MySQL conf.d directory. 
This translates the unique, stable identity provided by the StatefulSet into the domain of MySQL server IDs, which require the same properties.

The script in the init-mysql container also applies either primary.cnf or replica.cnf from the ConfigMap by copying the contents into conf.d. Because the example topology consists of a single primary MySQL server and any number of replicas, the script assigns ordinal 0 to be the primary server, and everyone else to be replicas. Combined with the StatefulSet controller's deployment order guarantee, this ensures the primary MySQL server is Ready before creating replicas, so they can begin replicating.


8.4: Scale a StatefulSet
8.5: Delete a StatefulSet
8.6: Force Delete StatefulSet Pods
8.7: Horizontal Pod Autoscaling
8.8: HorizontalPodAutoscaler Walkthrough
8.9: Specifying a Disruption Budget for your Application
8.10: Accessing the Kubernetes API from a Pod