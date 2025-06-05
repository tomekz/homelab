apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: sealed-secrets
  namespace: argocd
spec:
  destination:
    namespace: authentik
    server: {{ .Values.spec.destination.server }}
  project: default
  syncPolicy:
    automated: {}
  source:
    path: system/sealed-secrets
    plugin:
      env:
        - name: HELMFILE_ENV
          value: homelab
        - name: HELMFILE_RELEASE_LABEL
          value: release=sealed-secrets
      name: helmfilev2
    repoURL: https://github.com/tomekz/homelab
    targetRevision: HEAD

