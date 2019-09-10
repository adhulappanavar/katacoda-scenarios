Create a Docker Compose file for the entire app

Build and Dockerize Blob in Terminal 2
`cd /root`{{execute T2}}

`mkdir docker-compose`{{execute T2}}

`jhipster docker-compose`{{execute T2}}

`docker-compose up`{{execute T2}}


`docker container stats $(docker container ps --format={{.Names}})`{{execute T2}}



