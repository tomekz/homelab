# Cluster design

- deployed locally on Dell OptiPlex servers using [kubeadm](https://kubernetes.io/docs/reference/setup-tools/kubeadm/)
- consists of three nodes, one master and two worker nodes.
- etcd, kube-apiserver, kube-controller-manager, kube-scheduler, and kube-proxy are running on the same master node.

## High availability

- there is no redundancy built into the cluster, so if the master node fails, the cluster will be unavailable.
- the HA setup can be achieved by adding additional master node where:
    - Kube API server is load balanced
    - Controller Manager and Scheduler are running in active-passive mode (achieved with leader elect process)
    - etcd is running in a separate cluster consiting of minimal 3 nodes for the quorum to work

