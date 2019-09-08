Compile the Java Microservice and Start the Microservices


Start Gateway  in Terminal 2
`echo Welcome to Terminal 2`{{execute T2}}
`cd /root/gateway`{{execute T2}}
`pwd`{{execute T2}}
`echo Ensure that you are in directory /root/gateway`{{execute T2}}
`export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64/`{{execute T2}}
`./mvnw`{{execute T2}}

Start Store in Terminal 3
`echo Welcome to Terminal 3`{{execute T3}}
`cd /root/store`{{execute T3}}
`pwd`{{execute T3}}
`echo Ensure that you are in directory /root/root`{{execute T3}}
`export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64/`{{execute T3}}
`./mvnw`{{execute T3}}

Start Blob in Terminal 4
`echo Welcome to Terminal 4`{{execute T4}}
`cd /root/blog`{{execute T4}}
`pwd`{{execute T4}}
`echo Ensure that you are in directory /root/blog`{{execute T4}}
`export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64/`{{execute T4}}
`./mvnw`{{execute T4}}

## Generated Web Link

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com