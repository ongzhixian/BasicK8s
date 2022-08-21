# persistentVolume

## Provisioning type

1.  statically or 
1.  dynamically

Static 
    A cluster administrator creates a number of PVs. 
    They carry the details of the real storage, which is available for use by cluster users. 
    They exist in the Kubernetes API and are available for consumption

Dynamic
    When none of the static PVs the administrator created match a user's PersistentVolumeClaim, 
    the cluster may try to dynamically provision a volume specially for the PVC. 
    This provisioning is based on StorageClasses: 
    the PVC must request a storage class and the administrator must have created and configured that class for dynamic provisioning to occur. 
    Claims that request the class "" effectively disable dynamic provisioning for themselves.

To enable dynamic storage provisioning based on storage class, 
the cluster administrator needs to enable the DefaultStorageClass admission controller on the API server. 
This can be done, for example, by ensuring that DefaultStorageClass is among the comma-delimited, ordered list of values for the --enable-admission-plugins flag of the API server component. 
For more information on API server command-line flags, check kube-apiserver documentation


## Access modes:

- ReadWriteOnce (RWO): 
    the volume can be mounted as read-write by a single node. 
    ReadWriteOnce access mode still can allow multiple pods to access the volume 
    when the pods are running on the same node.
    A single pod can mount this volume, and can read and write data to it.

- ReadOnlyMany  (ROX): 
    the volume can be mounted as read-only by many nodes.
    Many pods can mount this volume, but only read data from it.

- ReadWriteMany (RWX):
    the volume can be mounted as read-write by many nodes.
    Many pods can mount this volume and read and write data to it

- ReadWriteOncePod (RWOP):
    the volume can be mounted as read-write by a single Pod. 
    Use ReadWriteOncePod access mode if you want to ensure that only one pod across whole cluster can read that PVC or write to it. 
    This is only supported for CSI volumes and Kubernetes version 1.22+.
