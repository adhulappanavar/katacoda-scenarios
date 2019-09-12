Compile the Java Microservice and package the Microservice in containers


Build and Dockerize Gateway  in Terminal 2

`echo Welcome to Terminal 2`{{execute T2}}

`cd /root/gateway`{{execute T2}}

`pwd`{{execute T2}}

`export  JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/`{{execute T2}}

`./mvnw package -Pprod verify jib:dockerBuild | gnomon`{{execute T2}}
Have patience this will take 6-8 minutes


Build and Dockerize Store in Terminal 2

`cd /root/store`{{execute T2}}

`pwd`{{execute T2}}

`./mvnw package -Pprod verify jib:dockerBuild | gnomon`{{execute T2}}
This will take about 1-2 min


Build and Dockerize Blob in Terminal 2

`cd /root/blog`{{execute T2}}

`pwd`{{execute T2}}

`./mvnw package -Pprod verify jib:dockerBuild | gnomon`{{execute T2}}
This will take about 1-2 min
