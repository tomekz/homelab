# install traefik with helm
```
helm repo add traefik https://traefik.github.io/charts

helm install traefik traefik/traefik --values=values.yaml
```

# setup sample traefik ingress:
``
- deploy a sample app
- create a service
- create an ingress
-
```
kubectl apply -f whoami.yaml
kubectl apply -f whoami-service.yaml
kubectl apply -f whoami-ingress.yaml
```

test you can reach the service via traefik:
traefik edge router is running on port 30782 as node port service
```
curl -k https://192.168.68.57:30782
```
