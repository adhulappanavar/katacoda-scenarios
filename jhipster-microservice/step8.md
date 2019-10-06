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


3)



