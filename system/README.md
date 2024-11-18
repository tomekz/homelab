# System

The contents of this directory include services and tools that are core to the Kubernetes Cluster.

All applications are deployed via ArgoCD, however, ArgoCD needs initially bootstrapped. This must be done manually with access to the target kubernetes cluster.

## Bootstrap ArgoCD 
```bash
make bootstrap
```

### Applications

To deploy all applicaitons and cluster services with ArgoCD, follow the instructions in [argocd-bootstrap](./argocd/README.md).
