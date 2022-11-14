############################################################################################################################
#Project Kubernetes with simple backend, frontend, docker and kubernetes(Minikube). Bootcamp-DIO-CloudDevOpsExperience-2022#
#by-jcqueiroz                                                                                                              #   
############################################################################################################################
#!/bin/bash

echo "Creating imagens....."

docker build -t jcqueiroz/project-backend-bootcamp-dio:1.0 backend/.
docker build -t jcqueiroz/project-database-bootcamp-dio:1.0 database/.

echo "Push the imagens created above"

docker push jcqueiroz/project-backend-bootcamp-dio:1.0 
docker push jcqueiroz/project-database-bootcamp-dio:1.0

echo "Creating cluster kubernetes services"

kubectl apply -f ./services.yaml

echo "Creating the deployments"

kubectl apply -f ./deployment.yaml

###################################################################################################################