
---- Google CLOUD -----

Note : PLease replace xxx with your gmail id and yyy with your billable google cloud account project name

Install Google Cloud CLI
`curl -L -O google-cloud-sdk-264.0.0-linux-x86_64.tar.gz`{{execute T3}}

`tar -xvf google-cloud-sdk-264.0.0-linux-x86_64.tar.gz`{{execute T3}}

`./google-cloud-sdk/install.sh`{{execute T3}}

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
