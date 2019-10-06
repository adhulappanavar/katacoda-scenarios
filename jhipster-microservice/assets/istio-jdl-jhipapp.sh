
## Ensure two things in istio-jdl.jh under deployment
## deployment {
##  dockerRepositoryName "adhulappanavar"
##  ingressDomain "34.90.236.124.nip.io"
##}
# 


$ jhipster import-jdl istio-jdl.jh

WARNING! Kubernetes configuration generated, but no Jib cache found
If you forgot to generate the Docker image for this application, please run:
To generate the missing Docker image(s), please run:
  ./gradlew bootJar -Pprod jibDockerBuild in /Users/anidhula/learn/istio-jhip/store
  ./gradlew bootJar -Pprod jibDockerBuild in /Users/anidhula/learn/istio-jhip/invoice
  ./gradlew bootJar -Pprod jibDockerBuild in /Users/anidhula/learn/istio-jhip/notification
  ./gradlew bootJar -Pprod jibDockerBuild in /Users/anidhula/learn/istio-jhip/product


WARNING! You will need to push your image to a registry. If you have not done so, use the following commands to tag and push the images:
  docker image tag store adhulappanavar/store
  docker push adhulappanavar/store
  docker image tag invoice adhulappanavar/invoice
  docker push adhulappanavar/invoice
  docker image tag notification adhulappanavar/notification
  docker push adhulappanavar/notification
  docker image tag product adhulappanavar/product
  docker push adhulappanavar/product

INFO! Alternatively, you can use Jib to build and push image directly to a remote registry:
  ./gradlew bootJar -Pprod jibBuild -Djib.to.image=adhulappanavar/store in /Users/anidhula/learn/istio-jhip/store
  ./gradlew bootJar -Pprod jibBuild -Djib.to.image=adhulappanavar/invoice in /Users/anidhula/learn/istio-jhip/invoice
  ./gradlew bootJar -Pprod jibBuild -Djib.to.image=adhulappanavar/notification in /Users/anidhula/learn/istio-jhip/notification
  ./gradlew bootJar -Pprod jibBuild -Djib.to.image=adhulappanavar/product in /Users/anidhula/learn/istio-jhip/product

You can deploy all your apps by running the following script:
  bash kubectl-apply.sh

Use these commands to find your application's IP addresses:
  kubectl get svc store -n jhipster

##### -----------
###

./gradlew bootJar -Pprod jibBuild -Djib.to.image=adhulappanavar/store

            Container entrypoint set to [sh, -c, chmod +x /entrypoint.sh && sync && /entrypoint.sh]

            Built image tarball at /Users/anidhula/learn/istio-jhip/store/build/jib-image.tar
            Executing tasks:
            [==============================] 100.0% complete


            BUILD SUCCESSFUL in 6m 7s
            8 actionable tasks: 8 executed

WKMIN4455173:store anidhula$ cd ..
WKMIN4455173:istio-jhip anidhula$ cd invoice/
WKMIN4455173:invoice anidhula$ sudo ./gradlew bootJar -Pprod jibBuild -Djib.to.image=adhulappanavar/store
Password:

                        > Task :compileJava
                        Note: Hibernate JPA 2 Static-Metamodel Generator 5.3.11.Final

                        > Task :jibBuildTar
                        Setting image creation time to current time; your image may not be reproducible.

                        Containerizing application to file at '/Users/anidhula/learn/istio-jhip/invoice/build/jib-image.tar'...
                        The base image requires auth. Trying again for adoptopenjdk:11-jre-hotspot...

                        Container entrypoint set to [sh, -c, chmod +x /entrypoint.sh && sync && /entrypoint.sh]

                        Built image tarball at /Users/anidhula/learn/istio-jhip/invoice/build/jib-image.tar
                        Executing tasks:
                        [==============================] 100.0% complete


                        BUILD SUCCESSFUL in 14s
                        6 actionable tasks: 6 executed
WKMIN4455173:invoice anidhula$ cd ..
WKMIN4455173:istio-jhip anidhula$ cd notification/
                WKMIN4455173:notification anidhula$ sudo ./gradlew bootJar -Pprod jibBuild -Djib.to.image=adhulappanavar/store

                > Task :jibBuildTar
                Setting image creation time to current time; your image may not be reproducible.

                Containerizing application to file at '/Users/anidhula/learn/istio-jhip/notification/build/jib-image.tar'...
                The base image requires auth. Trying again for adoptopenjdk:11-jre-hotspot...

                Container entrypoint set to [sh, -c, chmod +x /entrypoint.sh && sync && /entrypoint.sh]

                Built image tarball at /Users/anidhula/learn/istio-jhip/notification/build/jib-image.tar
                Executing tasks:
                [==============================] 100.0% complete


                BUILD SUCCESSFUL in 23s
                6 actionable tasks: 6 executed
WKMIN4455173:notification anidhula$ cd ..
WKMIN4455173:istio-jhip anidhula$ cd product/
            WKMIN4455173:product anidhula$ sudo ./gradlew bootJar -Pprod jibBuild -Djib.to.image=adhulappanavar/store

            > Task :compileJava
            Note: Hibernate JPA 2 Static-Metamodel Generator 5.3.11.Final

            > Task :jibBuildTar
            Setting image creation time to current time; your image may not be reproducible.

            Containerizing application to file at '/Users/anidhula/learn/istio-jhip/product/build/jib-image.tar'...
            The base image requires auth. Trying again for adoptopenjdk:11-jre-hotspot...

            Container entrypoint set to [sh, -c, chmod +x /entrypoint.sh && sync && /entrypoint.sh]

            Built image tarball at /Users/anidhula/learn/istio-jhip/product/build/jib-image.tar
            Executing tasks:
            [==============================] 100.0% complete


            BUILD SUCCESSFUL in 11s
            6 actionable tasks: 6 executed


WKMIN4455173:product anidhula$ cd ..
WKMIN4455173:istio-jhip anidhula$ ls
                invoice		istio		istio-jdl.jh	kubernetes	notification	product		store

WKMIN4455173:istio-jhip anidhula$ cd kubernetes/

WKMIN4455173:kubernetes anidhula$ ls
        README.md		istio			namespace.yml		product
        invoice			kubectl-apply.sh	notification		store
WKMIN4455173:kubernetes anidhula$ bash kubectl-apply.sh
                    namespace/jhipster created
                    namespace/jhipster labeled
                    secret/jwt-secret created
                    deployment.apps/store created
                    destinationrule.networking.istio.io/store-destinationrule created
                    gateway.networking.istio.io/store-gateway created
                    virtualservice.networking.istio.io/store-gw-virtualservice created
                    deployment.apps/store-mysql created
                    service/store-mysql created
                    service/store created
                    virtualservice.networking.istio.io/store-virtualservice created
                    deployment.apps/invoice created
                    destinationrule.networking.istio.io/invoice-destinationrule created
                    deployment.apps/invoice-mysql created
                    service/invoice-mysql created
                    service/invoice created
                    virtualservice.networking.istio.io/invoice-virtualservice created
                    secret/jwt-secret unchanged
                    secret/jwt-secret unchanged
                    deployment.apps/notification created
                    destinationrule.networking.istio.io/notification-destinationrule created
                    configmap/notification-mongodb-config created
                    configmap/notification-mongodb-init created
                    statefulset.apps/notification-mongodb created
                    service/notification-mongodb created
                    service/notification created
                    virtualservice.networking.istio.io/notification-virtualservice created
                    secret/jwt-secret unchanged
                    deployment.apps/product created
                    destinationrule.networking.istio.io/product-destinationrule created
                    deployment.apps/product-mysql created
                    service/product-mysql created
                    service/product created
                    virtualservice.networking.istio.io/product-virtualservice created
                    gateway.networking.istio.io/grafana-observability-gateway created
                    virtualservice.networking.istio.io/grafana-gw-virtualservice created
                    gateway.networking.istio.io/jaeger-observability-gateway created
                    virtualservice.networking.istio.io/jaeger-gw-virtualservice created
                    gateway.networking.istio.io/kiali-observability-gateway created
                    virtualservice.networking.istio.io/kiali-gw-virtualservice created

                    #####################################################
                    Please find the below useful endpoints,
                    Gateway - http://store.jhipster.34.89.87.211.nip.io
                    Jaeger - http://jaeger.istio-system.34.89.87.211.nip.io
                    Grafana - http://grafana.istio-system.34.89.87.211.nip.io
                    Kiali - http://kiali.istio-system.34.89.87.211.nip.io
                    #####################################################
WKMIN4455173:kubernetes anidhula$