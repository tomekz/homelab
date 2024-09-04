# 0 Bootsrap servers

The goal of this stage is to provision underlying infrastructure to deploy a Kubernetes cluster. 
This includes setting up the physical servers, configuring the network, and installing the necessary software.

### Prerequisites

- **Ansible**: Used for provisioning and configuring the servers.
- **kubectl**: Command-line tool for interacting with the Kubernetes cluster.
- **Helm**: Package manager for Kubernetes.

## servers 

The homelab consists of three Dell OptiPlex servers, each with the following specifications:

- Dell Optiplex 7040 Desktop PC Mini
- Intel Core i5-6400T, 
- 8GB DDR4 RAM 
- 240GB SSD

## network configuration

The servers are connected to a local network switch with a static IP address assigned to each one.
There is no public IP address assigned to the servers, so they are not directly accessible from the internet.
A cloudflare tunnel is used to expose services to the internet instead

## provision servers

All servers are grouped under an ansible inventory file and ansible playbooks are used to provision and configure the servers.
Use the Ansible playbooks to provision and configure the Dell OptiPlex servers.
```sh
ansible-playbook ansible/provision.yml
```
