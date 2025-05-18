apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: kube-prometheus-stack
  namespace: argocd
spec:
  destination:
    namespace: monitoring
    server: {{ .Values.spec.destination.server }}
  project: default
  syncPolicy:
    automated: {}
  source:
    path: system/monitoring
    plugin:
      env:
        - name: HELMFILE_ENV
          value: homelab
        - name: HELMFILE_RELEASE_LABEL
          value: release=kube-prometheus-stack
      name: helmfilev2
    repoURL: https://github.com/tomekz/homelab
    targetRevision: HEAD
---
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: metrics-server
  namespace: argocd
spec:
  destination:
    namespace: monitoring
    server: {{ .Values.spec.destination.server }}
  project: default
  syncPolicy:
    automated: {}
  source:
    path: system/monitoring
    plugin:
      env:
        - name: HELMFILE_ENV
          value: homelab
        - name: HELMFILE_RELEASE_LABEL
          value: release=metrics-server
      name: helmfilev2
    repoURL: https://github.com/tomekz/homelab
    targetRevision: HEAD
---
apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: monitoring-resources
  namespace: argocd
spec:
  destination:
    namespace: monitoring
    server: {{ .Values.spec.destination.server }}
  project: default
  syncPolicy:
    automated: {}
  source:
    path: system/monitoring
    plugin:
      env:
        - name: HELMFILE_ENV
          value: homelab
        - name: HELMFILE_RELEASE_LABEL
          value: release=monitoring
      name: helmfilev2
    repoURL: https://github.com/tomekz/homelab
    targetRevision: HEAD
