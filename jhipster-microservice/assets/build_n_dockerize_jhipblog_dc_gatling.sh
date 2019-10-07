PROJECT_DIR=$PWD
cd $PROJECT_DIR/blog
./mvnw -ntp -DskipTests -Pprod verify jib:dockerBuild
cd $PROJECT_DIR/store
./mvnw -ntp -DskipTests -Pprod verify jib:dockerBuild
cd $PROJECT_DIR/gateway
./mvnw -ntp -DskipTests -Pprod verify jib:dockerBuild