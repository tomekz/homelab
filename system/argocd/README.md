get initial admin password

```
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```

First we need to make sure that we can run Argo CD with subpath (ie /argocd). For this we have used install.yaml from argocd project as is

```
kubectl apply -k ./ -n argocd --wait=true
```
