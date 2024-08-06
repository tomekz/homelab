# Homelab Configuration
This GitLab project contains the configuration files and scripts for managing my homelab infrastructure. The homelab consists of three physical Dell OptiPlex servers running a Kubernetes cluster.
## Overview
The purpose of this project is to provide a centralized repository for all configuration files, scripts, and documentation related to the setup and maintenance of the homelab. This includes Kubernetes manifests, Helm charts, Ansible playbooks, and any other relevant configuration files.
## Infrastructure
- **Servers**: 3 x Dell OptiPlex
- **Cluster**: Kubernetes
## Repository Structure
```
.
├── ansible/                # Ansible playbooks for server provisioning and configuration
├── kubernetes/             # Kubernetes manifests and Helm charts
│   ├── deployments/        # Deployment configurations
│   ├── services/           # Service definitions
│   ├── configmaps/         # ConfigMap definitions
│   └── secrets/            # Secret definitions
├── scripts/                # Utility scripts for various tasks
├── docs/                   # Documentation
└── README.md               # Project overview and instructions
```
## Getting Started
### Prerequisites
- **Ansible**: Used for provisioning and configuring the servers.
- **kubectl**: Command-line tool for interacting with the Kubernetes cluster.
- **Helm**: Package manager for Kubernetes.
### Initial Setup
1. **Clone the Repository**:
   ```sh
   git clone https://gitlab.com/yourusername/homelab-config.git
   cd homelab-config
   ```
2. **Provision Servers**:
   Use the Ansible playbooks to provision and configure the Dell OptiPlex servers.
   ```sh
   ansible-playbook ansible/provision.yml
   ```
3. **Deploy Kubernetes Resources**:
   Apply the Kubernetes manifests to set up the cluster.
   ```sh
   kubectl apply -f kubernetes/deployments/
   kubectl apply -f kubernetes/services/
   ```

## TODO

[todo](TODO.md)
