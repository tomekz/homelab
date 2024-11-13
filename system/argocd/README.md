get initial admin password

```
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```

boostrap apps
```
argocd app create apps \
    --dest-namespace argocd \
    --dest-server https://kubernetes.default.svc \
    --repo https://github.com/tomekz/homelab.git \
    --path system/argocd/bootstrap
argocd app sync apps  
```
