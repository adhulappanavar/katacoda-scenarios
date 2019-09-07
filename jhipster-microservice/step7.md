Compile the Java Microservice and Start the Microservices

`cd /root/storegateway`{{execute}}

Start Gateway  in Terminal 2
`cd /root/gateway`{{execute T2}}
`export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64/`{{execute T2}}
`./mvnw`{{execute T2}}

Start Store in Terminal 3

`cd /root/store`{{execute T3}}
`export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64/`{{execute T3}}
`./mvnw`{{execute T3}}

Start Blob in Terminal 4
`cd /root/blog`{{execute T4}}
`export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64/`{{execute T4}}
`./mvnw`{{execute T4}}