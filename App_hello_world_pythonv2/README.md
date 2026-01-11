# App_hello_world_python

Running python web app following these steps

1. Containerization: Building Docker image from Docker file

2. Provisioning Kubenetes cluster usign Terraform

3. Kubernetes: Running the application on Kubernetes cluster by writing deployment,service, ingress yaml file and accessing the application through public accessible hostname by mapping ALB address to hostname.

5. Using Helm chart to run Kubernetes using the latest Github action runner id whenever a new version of image is uploaded to docker hub.

6. Implementing CI using Github actions and CD using ArgoCD by automatically taking latest image tag version from helm chart

