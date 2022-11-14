###################################################################################################################
#Project Kubernetes with simple backend, frontend, docker(local) and kubernetes(Minikube). Bootcamp-DIO-CloudDevOpsExperience-2022#
###################################################################################################################
#!/bin/bash

kubectl delete deployment mysql

kubectl delete deployment php

kubectl delete svc mysql-connection

kubectl delete svc php

kubectl delete pvc mysql-data

kubectl delete pv local

###################################################################################################################