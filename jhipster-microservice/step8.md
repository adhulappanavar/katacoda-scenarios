Misc Commands

In case ue encounter error 

1) ERROR IN ADDING add-apt-repository
sudo: add-apt-repository: command not found
sudo apt-get install software-properties-common


2) Google Cloud VM for using Docker and Docker Compose
https://cloud.google.com/community/tutorials/docker-compose-on-container-optimized-os

Create a new Compute Engine instance using the Container-Optimized OS stable image.

Open the Google Cloud Platform console.
Create a new Compute Engine instance.
Select the desired Zone, such as "us-central1-f".
Select the desired Machine type, such as "micro" (f1-micro).
Change the Boot disk to "Container-Optimized OS stable".
Check the box to allow HTTP traffic in the Firewall section.
Click the Create button to create the Compute Engine instance.

Download and run the Docker Compose image. Check the tags for Docker Compose to use the latest version.

docker run docker/compose:1.24.0 version

The docker run ... docker/compose:1.24.0 up command is equivalent to running the docker-compose up command on systems where Docker Compose is installed by the usual method. So that you don't have to remember or type this long command, create an alias for it.

Add a docker-compose alias to your shell configuration file, e.g. .bashrc.

echo alias docker-compose="'"'docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:$PWD" \
    -w="$PWD" \
    docker/compose:1.24.0'"'" >> ~/.bashrc
Reload the Bash configuration.

source ~/.bashrc
Change back to the sample directory if you aren't already there.


docker-compose 
You should be able to view Docker Compose help



---- Google CLOUD -----
gcloud auth login

gcloud config set compute/region europe-west2
gcloud config set compute/region europe-west2
gcloud config set compute/zone europe-west2-b

gcloud config list
[compute]
region = europe-west2
zone = europe-west2-b
[core]
account = cloudsaplbg@gmail.com
disable_usage_reporting = True
project = internal-investment-206615

gcloud container clusters create hello-java-cluster --num-nodes 2 --machine-type n1-standard-1

gcloud container clusters create jhipster-jwt-cluster --num-nodes 4 --machine-type n1-standard-1 --scopes cloud-platform

Google Container Engine requires the https://www.googleapis.com/auth/cloud-platform scope, so you'll need to select "Allow full access to all Cloud APIs" when you create the VM instance.


9528350109

gcloud container clusters get-credentials jhipster-jwt-cluster --zone europe-west2-b --project internal-investment-206615 && kubectl port-forward $(kubectl get pod --selector="app=blog" --output jsonpath='{.items[0].metadata.name}' 8080:8081

gcloud container clusters get-credentials jhipster-jwt-cluster --zone europe-west2-b --project internal-investment-206615
kubectl get pod --selector="app=blog" --output jsonpath='{.items[0].metadata.name}'
kubectl port-forward blog-6cb794b54d-twxs4 8080:8081


kubectl config current-context
gcloud container clusters get-credentials [CLUSTER_NAME]


iterm has issues after running jhipster import-jdl command
to resolve it tye stty sane ( even though you may ot see the command)
post that it will work normally

https://askubuntu.com/questions/441744/pressing-enter-produces-m-instead-of-a-newline