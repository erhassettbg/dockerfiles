# jenkins
This docker image is used to run jenkins with DooD (Docker outside of Docker) capabilites.

## Usage
Simply run
`docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker -p 80:8080 erhassettbg/jenkins`
to use this image.
Ports can be changed as desired.

Jenkins plugins are installed from plugins.txt. If you'd like to change the plugins installed, fork/clone this repo and build the docker image yourself.