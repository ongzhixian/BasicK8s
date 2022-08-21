# K8s components

K8s = Cluster(s)
Cluster = set of nodes (worker machines)
node = host of pods (which are free instance of container images)


K8s mainly divided into 2:
1.  Master node(s) (aka control plane)
1.  Worker nodes

## Possible cluster setups

- Single node; master and worker node on same machine
  (like minikube) for development
- Single master, multi worker
- Multi master, multi worker

## Control plane components

API Server                  The brain of K8s
                            Stateless REST API (works with kubectl)
Scheduler                   Responsible for scheduling pods to nodes
etcd                        The persistent storage of the API Server
Controller Manager          Control unit for K8s resources
Cloud Controller Manager    Control unit for Cloud Provider specific implementations

## Worker node components

Kubelet Agent               responsible to run containers on the node
Kube-proxy Agent            to configure the default K8s network

# Reference

Kubernetes Components
https://kubernetes.io/docs/concepts/overview/components/
