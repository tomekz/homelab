```
kubectl create namespace metallb

helm repo add metallb https://metallb.github.io/metallb
helm install metallb metallb/metallb --version 0.14.8 --namespace=metallb

```
