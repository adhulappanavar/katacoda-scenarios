Download the Domain Model

Original Domain file which uses oauth2 authentication type is at 
https://raw.githubusercontent.com/jhipster/jdl-samples/master/microservices-blog-store.jh

https://github.com/oktadeveloper/jhipster-microservices-example/blob/master/TUTORIAL.md

Create a empty working directory
`mkdir microblog && cd microblog`{{execute}}

The modified Domain file which uses JWT is at
`curl -L -O https://raw.githubusercontent.com/adhulappanavar/katacoda-scenarios/master/jhipster-microservice/assets/microservices-blog-store.jh`{{execute}}

Download the POM file to build all the microservices in one command
`curl -L -O https://raw.githubusercontent.com/adhulappanavar/katacoda-scenarios/master/jhipster-microservice/assets/pom.xml`{{execute}}


Visualize the domain model -1 

![Katacoda Logo](/anildhulappanavar/scenarios/jhipster-microservice/assets/DomianArchitectureUsingJHStudio.png)

Generate the source code from Domain Model
`jhipster import-jdl microservices-blog-store.jh`{{execute}}

In case the prompt is not responding
`stty sane`{{execute}}

You may have to press enter few times for process to continue ....

Four new directories are created
    - gateway
    - store
    - blog
    - docker-compose


More JDL files can be found at https://github.com/jhipster/jdl-samples

