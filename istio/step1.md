To start, launch the Kubernetes cluster. This will launch a two-node Kubernetes cluster with one master and one node.

`launch.sh`{{execute}}

#### Health Check

Once started, you can get the status of the cluster with `kubectl cluster-info`{{execute}}

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