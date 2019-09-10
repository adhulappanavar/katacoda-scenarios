Compile the Java Microservice and Start the Microservices


Build and Dockerize Gateway  in Terminal 2
`echo Welcome to Terminal 2`{{execute T2}}

`cd /root/gateway`{{execute T2}}

`pwd`{{execute T2}}

`./mvnw package -Pprod verify jib:dockerBuild`{{execute T2}}


Build and Dockerize Store in Terminal 2
`cd /root/store`{{execute T2}}

`pwd`{{execute T2}}

`./mvnw package -Pprod verify jib:dockerBuild`{{execute T2}}


Build and Dockerize Blob in Terminal 2
`cd /root/blog`{{execute T2}}

`pwd`{{execute T2}}

`./mvnw package -Pprod verify jib:dockerBuild`{{execute T2}}
