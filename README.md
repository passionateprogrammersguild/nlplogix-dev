# nlplogix-dev
Docker file for NLP Logix development environment on based on [julia 0.3.7](https://registry.hub.docker.com/u/library/julia/ "Dockerhub official julia repo")

## Prose
This container includes the julia language and supporting packages, mono, python language, dev tools, and supporting python machine learning packages.

The purpose of this container is to provide a quick environment to get going.  What will be needed which I believe is outside the scope of the Dockerfile is setting up the Dropbox volume, the home volume as root, and a volume to mount the source code.

## Volume Mounts
All volume mounts will happen through the docker run command as follows:

    docker run -it -v /home/mmann2943/nlp:/nlp -v /home/mmann2943/:/root -v

The example above will mount the nlp folder from the host to /nlp in the docker container.  In my case the nlp folder is where all of our source code lives.

My home directory was also mounted into the container as /root.  The reason for this is when you start up a docker container you are running as root inside the container.

This approach supports Dropbox as dropbox is mounted into the home directory of the logged in user.
