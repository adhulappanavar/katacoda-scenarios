Download the Domain Model

`curl -L -O https://raw.githubusercontent.com/jhipster/jdl-samples/master/microservices-blog-store.jh`{{execute}}


Visualize the domain model -1 
<pre>
![Domain Architeture](/adhulappanavar/jhipster-microservice/assets/DomianArchitectureUsingJHStudio.png)
</pre>

![Domain Architeture](/adhulappanavar/jhipster-microservice/assets/DomianArchitectureUsingJHStudio.png)


Generate the source code from Domain Model
`jhipster import-jdl microservices-blog-store.jh`{{execute}}


Three new directories are created
    - gateway
    - store
    - blog

