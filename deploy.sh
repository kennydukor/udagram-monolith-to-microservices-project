# Apply env variables and secrets
kubectl apply -f aws-secret.yml
kubectl apply -f env-secret.yml
kubectl apply -f env-configmap.yml
# Deployments - Double check the Dockerhub image name and version in the deployment files
kubectl apply -f backend-feed-deployment.yml
# Do the same for other three deployment files
kubectl apply -f backend-user-deployment.yml
kubectl apply -f reverseproxy-deployment.yml
kubectl apply -f frontend-deployment.yml
# Service
kubectl apply -f backend-feed-service.yml
# Do the same for other three service files
kubectl apply -f backend-user-service.yml
kubectl apply -f reverseproxy-service.yml
kubectl apply -f frontend-service.yml