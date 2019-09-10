Download the Domain Model

`curl -L -O //raw.githubusercontent.com/jhipster/jdl-samples/master/microservices-blog-store.jh`{{execute}}

`curl -L -O https://raw.githubusercontent.com/adhulappanavar/katacoda-scenarios/master/jhipster-microservice/assets/microservices-blog-store.jh`{{execute}}


Visualize the domain model -1 
<pre>
![Domain Architeture](/adhulappanavar/jhipster-microservice/assets/DomianArchitectureUsingJHStudio.png)
</pre>

![Domain Architeture](/adhulappanavar/jhipster-microservice/assets/DomianArchitectureUsingJHStudio.png)


Generate the source code from Domain Model
`jhipster import-jdl microservices-blog-store.jh`{{execute}}

You may have to press enter few times for process to continue ....

Three new directories are created
    - gateway
    - store
    - blog

