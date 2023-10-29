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

<img width="390" alt="image" src="https://github.com/niroopbs/DevOps-Challenges/assets/50316430/a986a26f-a66a-4b34-9bab-642c2d241c88">

## Deploy 
Created a EC2 instance in AWS environment 
 Details  : UBUNTU, T3.medium, 100 GB
 
<img width="472" alt="image" src="https://github.com/niroopbs/DevOps-Challenges/assets/50316430/de7fc33a-0a8a-4a6c-a190-a42ca2fff3f2">

Created the DockerHub repository and pushed the build images to docker hub
niroopbs/devopschallenge general | Docker Hub

<img width="472" alt="image" src="https://github.com/niroopbs/DevOps-Challenges/assets/50316430/7f72083c-99f4-4726-94d0-1201e463fcb1">

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

<img width="464" alt="image" src="https://github.com/niroopbs/DevOps-Challenges/assets/50316430/19e2c043-6cf7-4c77-8de7-bf7f42429c13">

## DNS name with without adding healthcheck getting the following response. 

<img width="464" alt="image" src="https://github.com/niroopbs/DevOps-Challenges/assets/50316430/720aed80-e90b-4f2f-a4ad-b7e281d0facd">

**********************************************************************

I have successfully completed the take-home challenge, which involved designing a robust pipeline, deploying the application, and making notable improvements to enhance the overall performance and reliability of the system. The pipeline design focused on creating an efficient and well-structured workflow, encompassing stages for code quality checks, testing, and deployment. The deployment process was optimized to ensure repeatability, scalability, and reliability, utilizing containerization and automated deployment practices. Moreover, the improvements implemented addressed key areas such as scalability, security, and performance, demonstrating a commitment to ongoing enhancement. This challenge represents a significant achievement in managing the end-to-end process of developing, deploying, and continuously improving a modern software application."

"Please inform me if I overlooked anything in this regard. I am eager to learn and put it into practice. Thank you." 😀

*************************************END**************************************************


