
cd /Users/anidhula/learn/recording/jhip_blog_k8/blog
./mvnw -ntp -DskipTests -Pprod verify jib:dockerBuild 

cd /Users/anidhula/learn/recording/jhip_blog_k8/gateway
./mvnw -ntp -DskipTests -Pprod verify jib:dockerBuild 

cd /Users/anidhula/learn/recording/jhip_blog_k8/store
./mvnw -ntp -DskipTests -Pprod verify jib:dockerBuild 



docker image tag blog adhulappanavar/blog
docker push adhulappanavar/blog
docker image tag gateway adhulappanavar/gateway
docker push adhulappanavar/gateway
docker image tag store adhulappanavar/store
docker push adhulappanavar/store