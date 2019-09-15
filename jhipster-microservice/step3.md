Download the Domain Model

Original Domain file which uses oauth2 authentication type is at 
https://raw.githubusercontent.com/jhipster/jdl-samples/master/microservices-blog-store.jh

Create a empty working directory
`mkdir microblog && cd microblog`{{execute}}

The modified Domain file which uses JWT is at
`curl -L -O https://raw.githubusercontent.com/adhulappanavar/katacoda-scenarios/master/jhipster-microservice/assets/microservices-blog-store.jh`{{execute}}

Download the POM file to build all the microservices in one command
`curl -L -O https://raw.githubusercontent.com/adhulappanavar/katacoda-scenarios/master/jhipster-microservice/assets/pom.xml`{{execute}}


Visualize the domain model -1 
<pre>
![Katacoda Logo](/anildhulappanavar/scenarios/jhipster-microservice/assets/DomianArchitectureUsingJHStudio.png)
</pre>

![Katacoda Logo](/anildhulappanavar/scenarios/jhipster-microservice/assets/DomianArchitectureUsingJHStudio.png)

Generate the source code from Domain Model
`jhipster import-jdl microservices-blog-store.jh`{{execute}}

You may have to press enter few times for process to continue ....

Four new directories are created
    - gateway
    - store
    - blog
    - docker-compose

