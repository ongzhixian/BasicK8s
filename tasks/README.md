# Tasks

1: Install Tools
    1.1: Install and Set Up kubectl on Linux
    1.2: Install and Set Up kubectl on macOS
    1.3: Install and Set Up kubectl on Windows
    1.4: Tools Included
        1.4.1: bash auto-completion on Linux
        1.4.2: bash auto-completion on macOS
        1.4.3: fish auto-completion
        1.4.4: kubectl-convert overview
        1.4.5: PowerShell auto-completion
        1.4.6: verify kubectl install
        1.4.7: What's next?
        1.4.8: zsh auto-completion
2: Administer a Cluster
    2.1: Administration with kubeadm
        2.1.1: Certificate Management with kubeadm
        2.1.2: Configuring a cgroup driver
        2.1.3: Reconfiguring a kubeadm cluster
        2.1.4: Upgrading kubeadm clusters
        2.1.5: Upgrading Windows nodes
    2.2: Migrating from dockershim
        2.2.1: Changing the Container Runtime on a Node from Docker Engine to containerd
        2.2.2: Migrate Docker Engine nodes from dockershim to cri-dockerd
        2.2.3: Find Out What Container Runtime is Used on a Node
        2.2.4: Troubleshooting CNI plugin-related errors
        2.2.5: Check whether dockershim removal affects you
        2.2.6: Migrating telemetry and security agents from dockershim
    2.3: Generate Certificates Manually
        2.4: Manage Memory, CPU, and API Resources
        2.4.1: Configure Default Memory Requests and Limits for a Namespace
        2.4.2: Configure Default CPU Requests and Limits for a Namespace
        2.4.3: Configure Minimum and Maximum Memory Constraints for a Namespace
        2.4.4: Configure Minimum and Maximum CPU Constraints for a Namespace
        2.4.5: Configure Memory and CPU Quotas for a Namespace
        2.4.6: Configure a Pod Quota for a Namespace
    2.5: Install a Network Policy Provider
        2.5.1: Use Antrea for NetworkPolicy
        2.5.2: Use Calico for NetworkPolicy
        2.5.3: Use Cilium for NetworkPolicy
        2.5.4: Use Kube-router for NetworkPolicy
        2.5.5: Romana for NetworkPolicy
        2.5.6: Weave Net for NetworkPolicy
    2.6: Access Clusters Using the Kubernetes API
    2.7: Advertise Extended Resources for a Node
    2.8: Autoscale the DNS Service in a Cluster
    2.9: Change the default StorageClass
    2.10: Change the Reclaim Policy of a PersistentVolume
    2.11: Cloud Controller Manager Administration
    2.12: Configure Quotas for API Objects
    2.13: Control CPU Management Policies on the Node
    2.14: Control Topology Management Policies on a node
    2.15: Customizing DNS Service
    2.16: Debugging DNS Resolution
    2.17: Declare Network Policy
    2.18: Developing Cloud Controller Manager
    2.19: Enable Or Disable A Kubernetes API
    2.20: Enabling Service Topology
    2.21: Encrypting Secret Data at Rest
    2.22: Guaranteed Scheduling For Critical Add-On Pods
    2.23: IP Masquerade Agent User Guide
    2.24: Limit Storage Consumption
    2.25: Migrate Replicated Control Plane To Use Cloud Controller Manager
    2.26: Namespaces Walkthrough
    2.27: Operating etcd clusters for Kubernetes
    2.28: Reconfigure a Node's Kubelet in a Live Cluster
    2.29: Reserve Compute Resources for System Daemons
    2.30: Running Kubernetes Node Components as a Non-root User
    2.31: Safely Drain a Node
    2.32: Securing a Cluster
    2.33: Set Kubelet parameters via a config file
    2.34: Share a Cluster with Namespaces
    2.35: Upgrade A Cluster
    2.36: Use Cascading Deletion in a Cluster
    2.37: Using a KMS provider for data encryption
    2.38: Using CoreDNS for Service Discovery
    2.39: Using NodeLocal DNSCache in Kubernetes Clusters
    2.40: Using sysctls in a Kubernetes Cluster
    2.41: Utilizing the NUMA-aware Memory Manager
    2.42: Verify Signed Container Images
3: Configure Pods and Containers
    3.1: Assign Memory Resources to Containers and Pods
    3.2: Assign CPU Resources to Containers and Pods
    3.3: Configure GMSA for Windows Pods and containers
    3.4: Configure RunAsUserName for Windows pods and containers
    3.5: Create a Windows HostProcess Pod
    3.6: Configure Quality of Service for Pods
    3.7: Assign Extended Resources to a Container
    3.8: Configure a Pod to Use a Volume for Storage
    3.9: Configure a Pod to Use a PersistentVolume for Storage
    3.10: Configure a Pod to Use a Projected Volume for Storage
    3.11: Configure a Security Context for a Pod or Container
    3.12: Configure Service Accounts for Pods
    3.13: Pull an Image from a Private Registry
    3.14: Configure Liveness, Readiness and Startup Probes
    3.15: Assign Pods to Nodes
    3.16: Assign Pods to Nodes using Node Affinity
    3.17: Configure Pod Initialization
    3.18: Attach Handlers to Container Lifecycle Events
    3.19: Configure a Pod to Use a ConfigMap
    3.20: Share Process Namespace between Containers in a Pod
    3.21: Create static Pods
    3.22: Translate a Docker Compose File to Kubernetes Resources
    3.23: Enforce Pod Security Standards by Configuring the Built-in Admission Controller
    3.24: Enforce Pod Security Standards with Namespace Labels
    3.25: Migrate from PodSecurityPolicy to the Built-In PodSecurity Admission Controller
4: Monitoring, Logging, and Debugging
    4.1: Troubleshooting Applications
        4.1.1: Debug Pods
        4.1.2: Debug Services
        4.1.3: Debug a StatefulSet
        4.1.4: Debug Init Containers
        4.1.5: Debug Running Pods
        4.1.6: Determine the Reason for Pod Failure
        4.1.7: Get a Shell to a Running Container
    4.2: Troubleshooting Clusters
        4.2.1: Resource metrics pipeline
        4.2.2: Tools for Monitoring Resources
        4.2.3: Monitor Node Health
        4.2.4: Debugging Kubernetes nodes with crictl
        4.2.5: Auditing
        4.2.6: Developing and debugging services locally using telepresence
        4.2.7: Windows debugging tips
5: Manage Kubernetes Objects
    5.1: Declarative Management of Kubernetes Objects Using Configuration Files
    5.2: Declarative Management of Kubernetes Objects Using Kustomize
    5.3: Managing Kubernetes Objects Using Imperative Commands
    5.4: Imperative Management of Kubernetes Objects Using Configuration Files
    5.5: Update API Objects in Place Using kubectl patch
6: Managing Secrets
    6.1: Managing Secrets using kubectl
    6.2: Managing Secrets using Configuration File
    6.3: Managing Secrets using Kustomize
7: Inject Data Into Applications
    7.1: Define a Command and Arguments for a Container
    7.2: Define Dependent Environment Variables
    7.3: Define Environment Variables for a Container
    7.4: Expose Pod Information to Containers Through Environment Variables
    7.5: Expose Pod Information to Containers Through Files
    7.6: Distribute Credentials Securely Using Secrets
8: Run Applications
    8.1: Run a Stateless Application Using a Deployment
    8.2: Run a Single-Instance Stateful Application
    8.3: Run a Replicated Stateful Application
    8.4: Scale a StatefulSet
    8.5: Delete a StatefulSet
    8.6: Force Delete StatefulSet Pods
    8.7: Horizontal Pod Autoscaling
    8.8: HorizontalPodAutoscaler Walkthrough
    8.9: Specifying a Disruption Budget for your Application
    8.10: Accessing the Kubernetes API from a Pod
9: Run Jobs
    9.1: Running Automated Tasks with a CronJob
    9.2: Coarse Parallel Processing Using a Work Queue
    9.3: Fine Parallel Processing Using a Work Queue
    9.4: Indexed Job for Parallel Processing with Static Work Assignment
    9.5: Parallel Processing using Expansions
10: Access Applications in a Cluster
    10.1: Deploy and Access the Kubernetes Dashboard
    10.2: Accessing Clusters
    10.3: Configure Access to Multiple Clusters
    10.4: Use Port Forwarding to Access Applications in a Cluster
    10.5: Use a Service to Access an Application in a Cluster
    10.6: Connect a Frontend to a Backend Using Services
    10.7: Create an External Load Balancer
    10.8: List All Container Images Running in a Cluster
    10.9: Set up Ingress on Minikube with the NGINX Ingress Controller
    10.10: Communicate Between Containers in the Same Pod Using a Shared Volume
    10.11: Configure DNS for a Cluster
    10.12: Access Services Running on Clusters
11: Extend Kubernetes
    11.1: Configure the Aggregation Layer
    11.2: Use Custom Resources
    11.2.1: Extend the Kubernetes API with CustomResourceDefinitions
    11.2.2: Versions in CustomResourceDefinitions
    11.3: Set up an Extension API Server
    11.4: Configure Multiple Schedulers
    11.5: Use an HTTP Proxy to Access the Kubernetes API
    11.6: Use a SOCKS5 Proxy to Access the Kubernetes API
    11.7: Set up Konnectivity service
12: TLS
    12.1: Configure Certificate Rotation for the Kubelet
    12.2: Manage TLS Certificates in a Cluster
    12.3: Manual Rotation of CA Certificates
13: Manage Cluster Daemons
    13.1: Perform a Rolling Update on a DaemonSet
    13.2: Perform a Rollback on a DaemonSet
14: Networking
    14.1: Adding entries to Pod /etc/hosts with HostAliases
    14.2: Validate IPv4/IPv6 dual-stack
15: Configure a kubelet image credential provider
16: Extend kubectl with plugins
17: Manage HugePages
18: Schedule GPUs


# References
https://kubernetes.io/docs/tasks/_print/