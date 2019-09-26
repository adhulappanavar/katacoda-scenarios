
---- Google CLOUD -----

Note : PLease replace xxx with your gmail id and yyy with your billable google cloud account project name

`mkdir /root/gcloudcli`{{execute T3}}
`cd /root/gcloudcli`{{execute T3}}


Install Google Cloud CLI
`curl -L -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-264.0.0-linux-x86_64.tar.gz`{{execute T3}}

`tar -xvf google-cloud-sdk-264.0.0-linux-x86_64.tar.gz`{{execute T3}}

`source /root/.bashrc`{{execute T3}}

Install Kubcetl
`curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/linux/amd64/kubectl`{{execute T3}}

`chmod +x ./kubectl`{{execute T3}}

`sudo mv ./kubectl /usr/local/bin/kubectl`{{execute T3}}


`gcloud init`{{execute T3}}

`gcloud config set project yyyy`{{execute T3}}

`gcloud auth login`{{execute T3}}

`gcloud config set compute/region europe-west2`{{execute T3}}

`gcloud config set compute/zone europe-west2-b`{{execute T3}}

`gcloud config list`{{execute T3}}

`
[compute]
region = europe-west2
zone = europe-west2-b
[core]
account = xxxx@gmail.com
disable_usage_reporting = True
project = yyy
`

