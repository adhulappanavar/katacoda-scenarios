Download the Domain Model

`curl -L -O https://raw.githubusercontent.com/jhipster/jdl-samples/master/microservices-blog-store.jh`{{execute}}

Visualize the domain model 
![BookInfo Architecture](https://github.com/adhulappanavar/katacoda-scenarios/blob/master/jhipster-microservice/assests/Domian%20Architecture%20Using%20JH%20Studio.png)


![BookInfo Architecture](https://katacoda.com/courses/istio/deploy-istio-on-kubernetes/assets/bookinfo-arch.png)

![BookInfo Architecture](https://github.com/adhulappanavar/katacoda-scenarios/tree/master/jhipster-microservice/assests/DomianArchitectureUsingJHStudio.png)

Generate the source code from Domain Model
`jhipster import-jdl microservices-blog-store.jh`{{execute}}


Three new directories are created
    - gateway
    - store
    - blog

