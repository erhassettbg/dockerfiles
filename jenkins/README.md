# jenkins
This docker image is used to run jenkins with DooD (Docker outside of Docker) capabilites.

## Usage
Simply run the following to use this image.
```
docker run -d --name jenkins \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(which docker):/usr/bin/docker \
  -p 80:8080 \
  erhassettbg/jenkins
```

Ports can be changed as desired.
To mount docker-machine to the container, add `-v $(which docker-machine):/usr/local/bin/docker-machine`.
The jenkins home data directory can also be mounted by adding `-v <Local_Volume>:/var/jenkins_home`.
