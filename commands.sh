# Commands to be executed

kubectl on ubuntu # Check this on your browser to get the installer package 

eksctl on ubuntu # Check this on your browser to get the installer package

eksctl create cluster -f clusterconfig.yaml # This command will create your cluster with the necessary addons it can take up to 30 minutes

kubectl create -f jenkins-deployment.yaml # To execute the deployment 

kubectl create -f jenkins-service.yaml # to create the service

kubectl get pods # to check if the pod is created and in a running stage

kubectl get nodes # To check if your nodes are in a running stage

kubectl get svc # to check if your service was created and it its running.

kubectl get nodes -o wide # To see more details about the nodes and the ports
