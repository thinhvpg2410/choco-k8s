cluster-up:
	kind create cluster --name choco --config kind-config.yaml

cluster-down:
	kind delete cluster --name choco

apply-base:
	kubectl apply -f k8s/base/

logs-api:
	kubectl logs -n choco -l app=api --tail=100 -f