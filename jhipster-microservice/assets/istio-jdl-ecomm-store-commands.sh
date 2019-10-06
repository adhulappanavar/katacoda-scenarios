/* Reference Blog, BVideo, Github
* https://dev.to/deepu105/how-to-set-up-java-microservices-with-istio-service-mesh-on-kubernetes-5bkn
* https://gist.github.com/deepu105/1f0663af2acdb67dd5472c4896b595cf
* https://www.youtube.com/watch?v=XHMnraI2Pg8
*/

--------------------------------------------------
**************************************************
---------------------------------------------------
Create a cluster on Google Kubernetes Engine(GKE)
--------------------------------------------------
**************************************************
---------------------------------------------------

mkdir istio-jhip

cd istio-jhip

WKMIN4455173:istio-jhip anidhula$ ls
                                                            istio-jdl.jh
WKMIN4455173:istio-jhip anidhula$ pwd
                                                        /Users/anidhula/learn/istio-jhip


WKMIN4455173:istio-jhip anidhula$ gcloud container clusters create hello-hipster     --cluster-version 1.13     --num-nodes 4     --machine-type n1-standard-2

    kubeconfig entry generated for hello-hipster.
    NAME           LOCATION        MASTER_VERSION  MASTER_IP      MACHINE_TYPE   NODE_VERSION   NUM_NODES  STATUS
    hello-hipster  europe-west2-b  1.13.10-gke.0   35.246.19.136  n1-standard-2  1.13.10-gke.0  4          RUNNING


WKMIN4455173:istio-jhip anidhula$ kubectl get nodes
        NAME                                           STATUS   ROLES    AGE   VERSION
        gke-hello-hipster-default-pool-30a993c9-7fn4   Ready    <none>   11m   v1.13.10-gke.0
        gke-hello-hipster-default-pool-30a993c9-870c   Ready    <none>   11m   v1.13.10-gke.0
        gke-hello-hipster-default-pool-30a993c9-8kv8   Ready    <none>   11m   v1.13.10-gke.0
        gke-hello-hipster-default-pool-30a993c9-vb0c   Ready    <none>   11m   v1.13.10-gke.0


--------------------------------------------------
**************************************************
---------------------------------------------------
Install and setup Istio
--------------------------------------------------
**************************************************
---------------------------------------------------

WKMIN4455173:istio-jhip anidhula$ mkdir istio
WKMIN4455173:istio-jhip anidhula$ cd istio

WKMIN4455173:istio anidhula$ export ISTIO_VERSION=1.3.0

WKMIN4455173:istio anidhula$ curl -L https://git.io/getLatestIstio | sh -
                % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                                Dload  Upload   Total   Spent    Left  Speed
                0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
                100  2802  100  2802    0     0   1616      0  0:00:01  0:00:01 --:--:-- 2736k
                Downloading istio-1.3.0 from https://github.com/istio/istio/releases/download/1.3.0/istio-1.3.0-osx.tar.gz ...  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                                Dload  Upload   Total   Spent    Left  Speed
                100   612    0   612    0     0   1275      0 --:--:-- --:--:-- --:--:--  1277
                100 35.3M  100 35.3M    0     0  4108k      0  0:00:08  0:00:08 --:--:-- 5710k
                Istio 1.3.0 Download Complete!

                Istio has been successfully downloaded into the istio-1.3.0 folder on your system.

                Next Steps:
                See https://istio.io/docs/setup/kubernetes/install/ to add Istio to your Kubernetes cluster.

                To configure the istioctl client tool for your workstation,
                add the /Users/anidhula/learn/istio-jhip/istio/istio-1.3.0/bin directory to your environment path variable with:
                    export PATH="$PATH:/Users/anidhula/learn/istio-jhip/istio/istio-1.3.0/bin"

                Begin the Istio pre-installation verification check by running:
                    istioctl verify-install

                Need more information? Visit https://istio.io/docs/setup/kubernetes/install/
                WKMIN4455173:istio anidhula$

WKMIN4455173:istio anidhula$ ln -sf istio-$ISTIO_VERSION istio

WKMIN4455173:istio anidhula$
WKMIN4455173:istio anidhula$ echo $PWD
                                                        /Users/anidhula/learn/istio-jhip/istio
WKMIN4455173:istio anidhula$

WKMIN4455173:istio anidhula$ export PATH=$PWD/istio/bin:$PATH

WKMIN4455173:istio anidhula$ ls -la
                        total 0
                        drwxr-xr-x  4 anidhula  LL\Domain Users  128 Sep 28 09:25 .
                        drwxr-xr-x  5 anidhula  LL\Domain Users  160 Sep 28 09:24 ..
                        lrwxr-xr-x  1 anidhula  LL\Domain Users   11 Sep 28 09:25 istio -> istio-1.3.0
                        drwxr-xr-x  9 anidhula  LL\Domain Users  288 Sep 12 03:27 istio-1.3.0
WKMIN4455173:istio anidhula$

#----- ************** -----------
#First, create a role binding on the Kubernetes cluster for Istio.
#----- ************** -----------

WKMIN4455173:istio anidhula$ gcloud config get-value core/account
cloudsaplbg@gmail.com

WKMIN4455173:istio anidhula$ kubectl create clusterrolebinding cluster-admin-binding \
>   --clusterrole=cluster-admin \
>   --user="$(gcloud config get-value core/account)"

                clusterrolebinding.rbac.authorization.k8s.io/cluster-admin-binding created

WKMIN4455173:istio anidhula$ kubectl create namespace istio-system
                                    namespace/istio-system created

WKMIN4455173:istio-1.3.0 anidhula$ pwd
                        /Users/anidhula/learn/istio-jhip/istio/istio-1.3.0

WKMIN4455173:istio-1.3.0 anidhula$ ls
        LICENSE		README.md	bin		install		istio.VERSION	samples		tools

# Install the Istio CRDs
WKMIN4455173:istio-1.3.0 anidhula$ helm template install/kubernetes/helm/istio-init --name istio-init --namespace istio-system | kubectl apply -f -
                            configmap/istio-crd-10 created
                            configmap/istio-crd-11 created
                            configmap/istio-crd-12 created
                            serviceaccount/istio-init-service-account created
                            clusterrole.rbac.authorization.k8s.io/istio-init-istio-system created
                            clusterrolebinding.rbac.authorization.k8s.io/istio-init-admin-role-binding-istio-system created
                            job.batch/istio-init-crd-10-1.3.0 created
                            job.batch/istio-init-crd-11-1.3.0 created
                            job.batch/istio-init-crd-12-1.3.0 created

# Run this to verify all CRDs are installed. It should output 23 for this version of Istio.
WKMIN4455173:istio-1.3.0 anidhula$ kubectl get crds | grep 'istio.io\|certmanager.k8s.io' | wc -l
      23

# Install the Istio demo set up so that we get Grafana, Jaeger & Kiali set up as well.
# For production, use the Istio default setup. Refer https://istio.io/docs/setup/kubernetes/install/helm/

WKMIN4455173:istio-1.3.0 anidhula$ helm template install/kubernetes/helm/istio --name istio --namespace istio-system \
>     --values install/kubernetes/helm/istio/values-istio-demo.yaml | kubectl apply -f -
                    poddisruptionbudget.policy/istio-galley created
                    poddisruptionbudget.policy/istio-egressgateway created
                    poddisruptionbudget.policy/istio-ingressgateway created
                    poddisruptionbudget.policy/istio-policy created
                    poddisruptionbudget.policy/istio-telemetry created
                    poddisruptionbudget.policy/istio-pilot created
                    poddisruptionbudget.policy/istio-sidecar-injector created
                    secret/kiali created
                    configmap/istio-galley-configuration created
                    configmap/istio-grafana-custom-resources created
                    configmap/istio-grafana-configuration-dashboards-citadel-dashboard created
                    configmap/istio-grafana-configuration-dashboards-galley-dashboard created
                    configmap/istio-grafana-configuration-dashboards-istio-mesh-dashboard created
                    configmap/istio-grafana-configuration-dashboards-istio-performance-dashboard created
                    configmap/istio-grafana-configuration-dashboards-istio-service-dashboard created
                    configmap/istio-grafana-configuration-dashboards-istio-workload-dashboard created
                    configmap/istio-grafana-configuration-dashboards-mixer-dashboard created
                    configmap/istio-grafana-configuration-dashboards-pilot-dashboard created
                    configmap/istio-grafana created
                    configmap/kiali created
                    configmap/prometheus created
                    configmap/istio-security-custom-resources created
                    configmap/istio created
                    configmap/istio-sidecar-injector created
                    serviceaccount/istio-galley-service-account created
                    serviceaccount/istio-egressgateway-service-account created
                    serviceaccount/istio-ingressgateway-service-account created
                    serviceaccount/istio-grafana-post-install-account created
                    clusterrole.rbac.authorization.k8s.io/istio-grafana-post-install-istio-system created
                    clusterrolebinding.rbac.authorization.k8s.io/istio-grafana-post-install-role-binding-istio-system created
                    job.batch/istio-grafana-post-install-1.3.0 created
                    serviceaccount/kiali-service-account created
                    serviceaccount/istio-mixer-service-account created
                    serviceaccount/istio-pilot-service-account created
                    serviceaccount/prometheus created
                    serviceaccount/istio-cleanup-secrets-service-account created
                    clusterrole.rbac.authorization.k8s.io/istio-cleanup-secrets-istio-system created
                    clusterrolebinding.rbac.authorization.k8s.io/istio-cleanup-secrets-istio-system created
                    job.batch/istio-cleanup-secrets-1.3.0 created
                    serviceaccount/istio-security-post-install-account created
                    clusterrole.rbac.authorization.k8s.io/istio-security-post-install-istio-system created
                    clusterrolebinding.rbac.authorization.k8s.io/istio-security-post-install-role-binding-istio-system created
                    job.batch/istio-security-post-install-1.3.0 created
                    serviceaccount/istio-citadel-service-account created
                    serviceaccount/istio-sidecar-injector-service-account created
                    serviceaccount/istio-multi created
                    clusterrole.rbac.authorization.k8s.io/istio-galley-istio-system created
                    clusterrole.rbac.authorization.k8s.io/kiali created
                    clusterrole.rbac.authorization.k8s.io/kiali-viewer created
                    clusterrole.rbac.authorization.k8s.io/istio-mixer-istio-system created
                    clusterrole.rbac.authorization.k8s.io/istio-pilot-istio-system created
                    clusterrole.rbac.authorization.k8s.io/prometheus-istio-system created
                    clusterrole.rbac.authorization.k8s.io/istio-citadel-istio-system created
                    clusterrole.rbac.authorization.k8s.io/istio-sidecar-injector-istio-system created
                    clusterrole.rbac.authorization.k8s.io/istio-reader created
                    clusterrolebinding.rbac.authorization.k8s.io/istio-galley-admin-role-binding-istio-system created
                    clusterrolebinding.rbac.authorization.k8s.io/istio-kiali-admin-role-binding-istio-system created
                    clusterrolebinding.rbac.authorization.k8s.io/istio-mixer-admin-role-binding-istio-system created
                    clusterrolebinding.rbac.authorization.k8s.io/istio-pilot-istio-system created
                    clusterrolebinding.rbac.authorization.k8s.io/prometheus-istio-system created
                    clusterrolebinding.rbac.authorization.k8s.io/istio-citadel-istio-system created
                    clusterrolebinding.rbac.authorization.k8s.io/istio-sidecar-injector-admin-role-binding-istio-system created
                    clusterrolebinding.rbac.authorization.k8s.io/istio-multi created
                    role.rbac.authorization.k8s.io/istio-ingressgateway-sds created
                    rolebinding.rbac.authorization.k8s.io/istio-ingressgateway-sds created
                    service/istio-galley created
                    service/istio-egressgateway created
                    service/istio-ingressgateway created
                    service/grafana created
                    service/kiali created
                    service/istio-policy created
                    service/istio-telemetry created
                    service/istio-pilot created
                    service/prometheus created
                    service/istio-citadel created
                    service/istio-sidecar-injector created
                    deployment.apps/istio-galley created
                    deployment.apps/istio-egressgateway created
                    deployment.apps/istio-ingressgateway created
                    deployment.apps/grafana created
                    deployment.apps/kiali created
                    deployment.apps/istio-policy created
                    deployment.apps/istio-telemetry created
                    deployment.apps/istio-pilot created
                    deployment.apps/prometheus created
                    deployment.apps/istio-citadel created
                    deployment.apps/istio-sidecar-injector created
                    deployment.apps/istio-tracing created
                    service/jaeger-query created
                    service/jaeger-collector created
                    service/jaeger-agent created
                    service/zipkin created
                    service/tracing created
                    mutatingwebhookconfiguration.admissionregistration.k8s.io/istio-sidecar-injector created
                    attributemanifest.config.istio.io/istioproxy created
                    attributemanifest.config.istio.io/kubernetes created
                    handler.config.istio.io/stdio created
                    instance.config.istio.io/accesslog created
                    instance.config.istio.io/tcpaccesslog created
                    rule.config.istio.io/stdio created
                    rule.config.istio.io/stdiotcp created
                    instance.config.istio.io/requestcount created
                    instance.config.istio.io/requestduration created
                    instance.config.istio.io/requestsize created
                    instance.config.istio.io/responsesize created
                    instance.config.istio.io/tcpbytesent created
                    instance.config.istio.io/tcpbytereceived created
                    instance.config.istio.io/tcpconnectionsopened created
                    instance.config.istio.io/tcpconnectionsclosed created
                    handler.config.istio.io/prometheus created
                    rule.config.istio.io/promhttp created
                    rule.config.istio.io/promtcp created
                    rule.config.istio.io/promtcpconnectionopen created
                    rule.config.istio.io/promtcpconnectionclosed created
                    handler.config.istio.io/kubernetesenv created
                    rule.config.istio.io/kubeattrgenrulerule created
                    rule.config.istio.io/tcpkubeattrgenrulerule created
                    instance.config.istio.io/attributes created
                    destinationrule.networking.istio.io/istio-policy created
                    destinationrule.networking.istio.io/istio-telemetry created
WKMIN4455173:istio-1.3.0 anidhula$

WKMIN4455173:istio-1.3.0 anidhula$ kubectl get pods -n istio-system
            NAME                                      READY   STATUS      RESTARTS   AGE
            grafana-575c7c4784-8nbbd                  1/1     Running     0          14m
            istio-citadel-6867795889-s2zrm            1/1     Running     0          14m
            istio-cleanup-secrets-1.3.0-rm9b8         0/1     Completed   0          14m
            istio-egressgateway-798f99865-8scp7       1/1     Running     0          14m
            istio-galley-677bf9cff7-8tcfg             1/1     Running     0          14m
            istio-grafana-post-install-1.3.0-gt9k4    0/1     Completed   0          14m
            istio-ingressgateway-7575ff6478-zp6g4     1/1     Running     0          14m
            istio-init-crd-10-1.3.0-tmt5r             0/1     Completed   0          18m
            istio-init-crd-11-1.3.0-md4d2             0/1     Completed   0          18m
            istio-init-crd-12-1.3.0-g7mwm             0/1     Completed   0          18m
            istio-pilot-6594689797-dppgq              2/2     Running     0          14m
            istio-policy-57d4c4f876-x8vpl             2/2     Running     3          14m
            istio-security-post-install-1.3.0-kh7k5   0/1     Completed   0          14m
            istio-sidecar-injector-6dcc9f86b-crj6h    1/1     Running     0          14m
            istio-telemetry-784d7b676b-2m7n2          2/2     Running     3          14m
            istio-tracing-8456d6548f-zch5q            1/1     Running     0          14m
            kiali-7dd44f7696-f667j                    1/1     Running     0          14m
            prometheus-5679cb4dcd-sbqxh               1/1     Running     0          14m

WKMIN4455173:istio-1.3.0 anidhula$ kubectl get svc istio-ingressgateway -n istio-system
                NAME                   TYPE           CLUSTER-IP      EXTERNAL-IP    PORT(S)                                                                                                                                      AGE
                istio-ingressgateway   LoadBalancer   10.11.245.188   34.89.87.211   15020:31116/TCP,80:31380/TCP,443:31390/TCP,31400:31400/TCP,15029:30116/TCP,15030:31149/TCP,15031:30877/TCP,15032:31546/TCP,15443:31264/TCP   15m


#The external IP is very important here, let us save this to an environment variable so that we can use it in further commands.
WKMIN4455173:istio-1.3.0 anidhula$ export \
>   INGRESS_IP=$(kubectl -n istio-system get svc \
>   istio-ingressgateway \
>   -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
WKMIN4455173:istio-1.3.0 anidhula$
WKMIN4455173:istio-1.3.0 anidhula$ echo $INGRESS_IP
                    34.89.87.211
WKMIN4455173:istio-1.3.0 anidhula$

## -----
Now our Kubernetes cluster is ready for Istio. 🎉
## -----------
