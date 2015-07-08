#!/bin/bash

docker run -it -v ${NLP_PROJECT_FOLDER}:/projects -v ${HOME}:/${USER} -v ${HOME}:/root nlplogix/dev bash 

exit 0
