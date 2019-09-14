Compile the Java Microservice and package the Microservice in containers

Build and Dockerize Gateway, Blog and Store  in Terminal 2

`echo Welcome to Terminal 2`{{execute T2}}

`cd /root/microblog`{{execute T2}}

`pwd`{{execute T2}}

`export  JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/`{{execute T2}}

`mvn -Pprod verify com.google.cloud.tools:jib-maven-plugin:dockerBuild`{{execute T2}}

Have patience this will take 5-10 minutes