To start, launch the Kubernetes cluster. This will launch a two-node Kubernetes cluster with one master and one node.

`launch.sh`{{execute}}

#### Health Check

Once started, you can get the status of the cluster with `kubectl cluster-info`{{execute}}

#### Tools Check

1. Java 
`java -version`{{execute}}

2. Node, NPM
`node -v`{{execute}}
`npm -v`{{execute}}

3. Docker
`docker -v`{{execute}}

4. Kubernetes
`kubectl version`{{execute}}

5. Istio Version
`istioctl version`{{execute}}

6. Jhipster
`jhipster --version`{{execute}}


#### Sample output

`master $ java -version
openjdk version "1.8.0_212"
OpenJDK Runtime Environment (build 1.8.0_212-8u212-b03-0ubuntu1.16.04.1-b03)
OpenJDK 64-Bit Server VM (build 25.212-b03, mixed mode)

master $ node -v
v8.16.0
master $ npm -v
6.4.1

master $ docker -v
Docker version 18.09.5, build e8ff056

master $ kubectl version
Client Version: version.Info{Major:"1", Minor:"14", GitVersion:"v1.14.0", GitCommit:"641856db18352033a0d96dbc99153fa3b27298e5", GitTreeState:"clean", BuildDate:"2019-03-25T15:53:57Z", GoVersion:"go1.12.1", Compiler:"gc", Platform:"linux/amd64"}
Server Version: version.Info{Major:"1", Minor:"14", GitVersion:"v1.14.0", GitCommit:"641856db18352033a0d96dbc99153fa3b27298e5", GitTreeState:"clean", BuildDate:"2019-03-25T15:45:25Z", GoVersion:"go1.12.1", Compiler:"gc", Platform:"linux/amd64"}


master $ istioctl version
istioctl: command not found

master $ jhipster --version
INFO! Using JHipster version installed globally
6.3.1
master $`