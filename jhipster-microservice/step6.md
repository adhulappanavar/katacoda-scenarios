## Generated Web Link

It will take about 5 mins for the app to come up

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com

GATLING TESTING

Download Gatling zip file and unzip in the root folder
`cd /root`{{execute T2}}

`curl -L -O https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/3.2.1/gatling-charts-highcharts-bundle-3.2.1-bundle.zip`{{execute T2}}

`mv gatling-charts-highcharts-bundle-3.2.1-bundle.zip gatling.zip`{{execute T2}}

Set the GATLING HOME (without bin)

`export GATLING_HOME=/root/gatling`{{execute T2}}
`cd /root/blog`{{execute T2}}

The simulation files reside in the following directory
`ls src/test/gatling/user-files/simulations/`{{execute T2}}

Execute the simulation
`$GATLING_HOME/bin/gatling.sh -sf src/test/gatling`{{execute T2}}



Stop and remove all Docker containers
`docker stop $(docker ps -a -q)`
`docker rm $(docker ps -a -q)`


Remove all Docker Images
`docker rmi $(docker images -a -q)`

Checking Docker container logs
`docker container logs --tail 1 3f840a82aabe`
