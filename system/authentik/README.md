# Create the secrets necessary for Authentik

Use the tpl files and replace values
```
cp authentik_secrets.env.tpl authentik_secrets.env
cp postgresql_secrets.env.tpl postgresql_secrets.env
```

Create the sealed secret
```bash
# Authentik
k create secret generic -n authentik --from-env-file=authentik_secrets.env authentik-secret --dry-run=client -o yaml | kubeseal --controller-namespace=sealed-secrets --controller-name=sealed-secrets -w templates/authentik-secret.yaml

# Postgresql
k create secret generic -n authentik --from-env-file=postgresql_secrets.env postgresql-secret --dry-run=client -o yaml | kubeseal --controller-namespace=sealed-secrets --controller-name=sealed-secrets -w templates/postgresql-secret.yaml
```
