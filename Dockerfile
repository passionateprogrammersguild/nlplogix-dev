FROM julia:0.3.7

MAINTAINER Michael Mann <michael.mann@nlplogix.com>

RUN apt-get update && apt-get install -y \
  curl \
  git \
  python-dev \
  software-properties-common \
  python-setuptools \
  build-essential \
  mono-complete

RUN curl -o /tmp/get-pip.py https://bootstrap.pypa.io/get-pip.py
RUN python /tmp/get-pip.py
RUN pip install deap numpy

COPY bootstrap-julia.jl /tmp/
RUN julia /tmp/bootstrap-julia.jl
