# Test Flask App

## To build

```bash
minikube start
minikube tunnel

kubectl apply -f local-pv.yaml
kubectl apply -f pv-claim.yaml

helm install postgresql-dev -f values.yaml bitnami/postgresql

kubectl apply -f deployment.yaml
```

## Postgresql

https://adamtheautomator.com/postgres-to-kubernetes/
