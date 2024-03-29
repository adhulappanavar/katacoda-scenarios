ssh root@host01 "git clone https://github.com/adhulappanavar/katacoda-scenarios.git; mv katacoda-scenarios/istio/assets/ istio; rm -rf katacoda-scenarios"
ssh root@host01 "sed -i 's/\$HOST_IP/[[HOST_IP]]/g' istio/all.yaml; sed -i 's/\$HOST_IP/[[HOST_IP]]/g' istio/istio.yaml; sed -i 's/\$HOST_IP/[[HOST_IP]]/g' istio/istio-auth.yaml; sed -i 's/\$HOST_IP/[[HOST_IP]]/g' istio/addons/grafana.yaml; sed -i 's/\$HOST_IP/[[HOST_IP]]/g' istio/addons/zipkin.yaml; sed -i 's/\$HOST_IP/[[HOST_IP]]/g' istio/addons/servicegraph.yaml"
ssh root@host01 "npm install -g generator-jhipster"
