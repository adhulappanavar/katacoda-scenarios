#!/bin/bash

cd leave
./mvnw -DskipTests -Pprod verify jib:dockerBuild
cd ..

cd meeting
./mvnw -DskipTests -Pprod verify jib:dockerBuild
cd ..

cd notification
./mvnw -DskipTests -Pprod verify jib:dockerBuild
cd ..

cd organization
./mvnw -DskipTests -Pprod verify jib:dockerBuild
cd ..

cd ui
./mvnw -DskipTests -Pprod verify jib:dockerBuild
cd ..

docker image tag ui adhulappanavar/ui
docker push adhulappanavar/ui
docker image tag organization adhulappanavar/organization
docker push adhulappanavar/organization
docker image tag leave adhulappanavar/leave
docker push adhulappanavar/leave
docker image tag meeting adhulappanavar/meeting
docker push adhulappanavar/meeting
docker image tag notification adhulappanavar/notification
docker push adhulappanavar/notification
