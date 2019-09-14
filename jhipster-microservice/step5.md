Create a Docker Compose file for the entire app

Build and Dockerize Blob in Terminal 2
`cd /root/microblog`{{execute T2}}

`mkdir docker-compose`{{execute T2}}

`cd  /root/microblog/docker-compose`{{execute T2}}

`jhipster docker-compose`{{execute T2}}


? Which *type* of application would you like to deploy? 
    Microservice application

? Which *type* of gateway would you like to use? 
    JHipster gateway based on Netflix Zuul

? Enter the root directory where your gateway(s) and microservices are located 
    ../

? Which applications do you want to include in your configuration? 
    Press a to select all blog, gateway, store

? Which applications do you want to use with clustered databases (only available with MongoDB and Couchbase)?
     store

? Do you want to setup monitoring for your applications ?
     No

JHipster registry detected as the service discovery and configuration provider used by your apps
? Enter the admin password used to secure the JHipster Registry 
    admin


Before running docker-compose ensure all old containers are removed to avoid orphans and port conflicts
Command to Stop and remove all Docker containers
`docker stop $(docker ps -a -q)`
`docker rm $(docker ps -a -q)`


`docker-compose up -d | gnomon`{{execute T2}}

`docker container stats $(docker container ps --format={{.Names}})`{{execute T3}}



