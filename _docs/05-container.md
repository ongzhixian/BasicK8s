# Container

## Container states

- Default state of a container is «Waiting» e.g.
    - Waiting for termination
    - Waiting for image to be pulled
- State «Running» is when
    - Container is executing properly
- State «Terminated» is when
    - The container is completed or failed
    - Kubernetes tracks the exit code, reason and start and finish time for this container

## Restart policies

- Containers have a default restart policy of «Always»
    - Means if the container exits it will restart anyway

## Logs

Logs on stdout/stderr can be received via kubectl


## – Run a command inside a container

kubectl exec my-pod -- whoami


## Container probes

Best Practice: Expose the application state to allow the orchestrator to handle application failures

Kubernetes supports three probes:

- Readiness Probe
    Detection if the application can receive connections/traffic
- Liveness Probe
    Detection if the application is alive
- Startup Probe
    Protect slow starting containers from failing the liveness probe

Probes can be:

    - A rest call
    - A command execution
    - TCP connection

Kubernetes assumes the pod to be instantaneous ready & live if no probes are define


## Container resources

Kubernetes distinguishes between resource requests and limits
- Requests  – an amount of CPU and memory that has to be allocated to this container.
- Limits    – an amount of CPU and memory that the container may not exceed. 
              Kubernetes kills the pod if it does so.
