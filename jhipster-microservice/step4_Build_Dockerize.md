Compile the Java Microservice and package the Microservice in containers

Build and Dockerize Gateway, Blog and Store  in Terminal 2

`echo Welcome to Terminal 2`{{execute T2}}

`cd /root/microblog`{{execute T2}}

`pwd`{{execute T2}}

`export  JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/`{{execute T2}}



`cd blog && ./mvnw -DskipTests package -Pprod verify jib:dockerBuild && cd ..`{{execute T2}}

`cd gateway && ./mvnw -DskipTests package -Pprod verify jib:dockerBuild && cd ..`{{execute T2}}

`cd store && ./mvnw -DskipTests package -Pprod verify jib:dockerBuild && cd ..`{{execute T2}}

Have patience this will take 5-10 minutes


Skip this for now
In case you have downloaded the pom file
mvn -Pprod verify com.google.cloud.tools:jib-maven-plugin:dockerBuild
./mvnw -DskipTests package