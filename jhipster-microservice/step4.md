Download the Domain Model

`curl -L -O https://raw.githubusercontent.com/jhipster/jdl-samples/master/microservices-blog-store.jh`{{execute}}




![BookInfo Architecture](https://katacoda.com/courses/istio/deploy-istio-on-kubernetes/assets/bookinfo-arch.png)

Visualize the domain model -1 
!(https://github.com/adhulappanavar/katacoda-scenarios/jhipster-microservice/assests/DomianArchitectureUsingJHStudio.png)

Visualize the domain model - 2 
https://github.com/adhulappanavar/katacoda-scenarios/blob/master/jhipster-microservice/assests/DomianArchitectureUsingJHStudio.png

!(https://github.com/adhulappanavar/katacoda-scenarios/blob/master/jhipster-microservice/assests/DomianArchitectureUsingJHStudio.png)


Visualize the domain model - 3
![BookInfo Architecture](https://github.com/adhulappanavar/katacoda-scenarios/blob/master/jhipster-microservice/assests/DomianArchitectureUsingJHStudio.png)

Generate the source code from Domain Model
`jhipster import-jdl microservices-blog-store.jh`{{execute}}


Three new directories are created
    - gateway
    - store
    - blog

