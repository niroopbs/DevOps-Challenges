# http_server
A dead simple Ruby web server.
Serves on port 80.
/healthcheck path returns "OK"
All other paths return "Well, hello there!"

`$ ruby webserver.rb`


## Take Home Challenge

## GitHub link
niroopbs/DevOps-Challenges: DevOps Challenges (github.com)

## Modules 
1. Pipeline design 
2. Deploy 
3. Improvements 

## Pipeline design 
Github actions allows developers to create workflow that automate the building, testing and deployment of their code. In order to create a GitHub Actions workflow, I have defined the workflow as a YAML file in a specific folder structure. The folder path for GitHub Actions workflows is .github/workflows/, and each workflow is defined in a separate YAML file with a descriptive name




## Deploy 
Created a EC2 instance in AWS environment 
 Details  : UBUNTU, T3.medium, 100 GB

Created the DockerHub repository and pushed the build images to docker hub
niroopbs/devopschallenge general | Docker Hub




## Connected via ssh and ran the following commands to install microk8’s

sudo snap install microk8s --classic
microk8s status --wait-ready
microk8s enable dns
Microk8s enable ingress
helm create deployment
microk8s helm install ./deployment
microk8s kubectl get pods
microk8s kubectl get all --all-namespaces 

## Helm Deployment
Pushed the Helm chart to the repo to maintain the deployment files. 
niroopbs/helmchart: helmchart for ruby app (github.com)
 sudo microk8s helm upgrade devops ./deployment
To update on something for deployment change the value.yaml and run helm upgrade command 

 ## Improvements 
Security -
Availability - 
Reliability- 
Observability.-



## Output :-

/healthcheck path returns "OK"
All other paths return "Well, hello there!"

## DNS name with adding “healthcheck” getting the following response. 


## DNS name with without adding healthcheck getting the following response. 




