Gateway Services

Switch to Gateway Directory
`cd /root/gateway`{{execute}}

Start Docker compose keycloak
`docker-compose -f src/main/docker/keycloak.yml up -d`{{execute}}


Start docker compose jhipster registry
`docker-compose -f src/main/docker/jhipster-registry.yml up -d`{{execute}}




