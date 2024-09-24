# System

The contents of this directory include services and tools that are core to the Kubernetes Cluster.

All applications are deployed via ArgoCD, however, ArgoCD needs initially bootstrapped. This must be done manually with access to the target kubernetes cluster.

## Bootstrap ArgoCD & Traefik
```bash
make bootstrap
```

*Note: The `argocd/values-initial.yaml` file is used for a barebones deployment of ArgoCD.  Then ArgoCD will use the `values.yaml` file for keeping in sync with the desired state.*
