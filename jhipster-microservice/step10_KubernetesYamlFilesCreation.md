
---- Kubernetes Yaml File Creation -----

Build and Dockerize Blob in Terminal 2
`cd /root/microblog`{{execute T2}}

`mkdir k8`{{execute T2}}

`cd  /root/microblog/k8`{{execute T2}}

`jhipster kubernetes`{{execute T2}}

? Which *type* of application would you like to deploy? Microservice application

? Enter the root directory where your gateway(s) and microservices are located ../

? Which applications do you want to include in your configuration? (Press <space> to select, <a> to toggle all, <i> to invert selection)blog, gateway, store

? Do you want to setup monitoring for your applications ? No

JHipster registry detected as the service discovery and configuration provider used by your apps

? Enter the admin password used to secure the JHipster Registry admin

? What should we use for the Kubernetes namespace? jhipsterblog

? What should we use for the base Docker repository name? yourdockerhubusername

? What command should we use for push Docker image to repository? docker push

? Do you want to enable Istio? No

? Choose the Kubernetes service type for your edge services LoadBalancer - Let a Kubernetes cloud provider automatically assign an IP

Login to Docker hub by providing user name and password
`docker login`{{execute T2}}


`docker image tag blog yourdockerhubusername/blog`{{execute T2}}
`docker push yourdockerhubusername/blog`{{execute T2}}
`docker image tag gateway yourdockerhubusername/gateway`{{execute T2}}
`docker push yourdockerhubusername/gateway`{{execute T2}}
`docker image tag store yourdockerhubusername/store`{{execute T2}}
`docker push yourdockerhubusername/store`{{execute T2}}



You can deploy all your apps by running the following script:
`bash kubectl-apply.sh`{{execute T2}}

Use these commands to find your application's IP addresses:
`kubectl get svc gateway -n jhipsterblog`{{execute T2}}