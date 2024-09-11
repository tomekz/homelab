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

## Prerequisites:

### prepare cluster nodes

#### network configuration
- [x] enable IPv4 packet forwarding
```sh
# sysctl params required by setup, params persist across reboots
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.ipv4.ip_forward = 1
EOF

# Apply sysctl params without reboot
sudo sysctl --system
```
- [x] use `systemd` as your control group (cgroup) driver
- [x] install container runtime ([containerd](https://github.com/containerd/containerd/blob/main/docs/getting-started.md))
    - follow the instructions on this [page](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
- [x] use `systemd` as your control group (cgroup) driver
- To use the systemd cgroup driver in /etc/containerd/config.toml with runc, set
```
[plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc]
  [plugins."io.containerd.grpc.v1.cri".containerd.runtimes.runc.options]
    SystemdCgroup = true
```
- [ ] install kubeadm on all the nodes
    - follow the instructions on this [page](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/)

- Use kubeadmin to install master server
- setup pod network on all the nodes (flannel)
- On second node, install kubeadm and join it to the cluster as a worker node

