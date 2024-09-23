.PHONY: bootstrap
bootstrap: deps namespace
	@echo "installing cert-manager"
	helm install cert-manager . -f values.yaml \
  --namespace cert-manager \
  --create-namespace \

.PHONY: deps
deps:
	@echo "Installing Dependencies"
	# helm repo add argo https://charts.jetstack.io
	helm dependency build .

.PHONY: namespace
namespace:
	kubectl create namespace cert-manager --dry-run=client -o yaml | kubectl apply -f -
