# Test Flask App

## To build

```bash
minikube start
minikube tunnel

# build flask docker image and load into minikube
docker build -it hello-flask:latest .
minikube image load hello-flask:latest

kubectl apply -f local-pv.yaml
kubectl apply -f pv-claim.yaml

helm install postgresql-dev -f values.yaml bitnami/postgresql

kubectl apply -f deployment.yaml
```

## Postgresql

https://adamtheautomator.com/postgres-to-kubernetes/
