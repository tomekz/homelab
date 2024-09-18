.PHONY: bootstrap
bootstrap: deps namespace
	@echo "Bootstrapping ArgoCD"
	helm template -n argocd --create-namespace argocd argocd/ -f argocd/values-initial.yaml | kubectl apply -f -

.PHONY: deps
deps:
	@echo "Installing Dependencies"
	helm repo add argo https://argoproj.github.io/argo-helm
	helm dependency build argocd/

.PHONY: namespace
namespace:
	kubectl create namespace argocd --dry-run=client -o yaml | kubectl apply -f -
