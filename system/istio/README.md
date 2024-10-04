Deploying of istio is handled using [helmfile](https://helmfile.readthedocs.io/en/latest/)

1. initialize helmfile

```bash
helmfile init
```

2. Preview the deployment


```bash
helmfile diff -e homelab
```

3. Deploy the helmcharts

```bash
helmfile apply -e homelab
```
