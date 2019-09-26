
---- Google CLOUD -----


`gcloud container clusters create jhipster-jwt-cluster --num-nodes 6 --machine-type n1-standard-4 --scopes cloud-platform`{{execute T3}}


In case you create cluster using the Google cloud console
Connect /Point your google CLI to cluster using the following command

`gcloud container clusters get-credentials [CLUSTER_NAME]`

Google Container Engine requires the https://www.googleapis.com/auth/cloud-platform scope, so you'll need to select "Allow full access to all Cloud APIs" when you create the VM instance.

`kubectl config current-context`