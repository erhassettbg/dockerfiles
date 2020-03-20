# dehydrated
This is a docker image used to run dehydrated to automatically generate SSL certificates from [LetsEncrypt](https://letsencrypt.org/). There are two Dockerfiles included:
* Dockerfile - based on the official `ubuntu:18.04` image.
* Dockerfile-rpi - based on the official `arm32v7/ubuntu:18.04` image for use on Raspberry Pi.

## Usage
This image should be used with docker-compose. An example configuration for this is given in the [docker-compose.yml](docker-compose.yml). 
Note that `<PROVIDER>` in the lexicon environment variables should be replaced with the name of the DNS provider you use. More info on providers can be found in the [lexicon repo](https://github.com/AnalogJ/lexicon). 
Also note that `docker-compose.yml` sets up a volume in `/opt/dehydrated/config`. This location should contain a file called `domains.txt` populated with the domain(s) you need to generate certificates for.
