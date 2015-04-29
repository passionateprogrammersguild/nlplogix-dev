FROM ubuntu:14.04

MAINTAINER Michael Mann <michael.mann@nlplogix.com>

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:staticfloat/juliareleases
RUN add-apt-repository -y ppa:staticfloat/julia-deps
RUN apt-get update
RUN apt-get install -y julia

RUN julia -e 'Pkg.add("NumericExtensions");Pkg.add("JSON");Pkg.add("MNIST");Pkg.add("HTTPClient");Pkg.add("Datetime");Pkg.add("StatsBase");Pkg.add("Codecs");Pkg.add("DataFrames");Pkg.add("HDF5");Pkg.add("Gadfly");Pkg.add("PyCall");Pkg.update()'


RUN add-apt-repository -y ppa:fkrull/deadsnakes
RUN apt-get clean && apt-get update

RUN apt-get install -y \
  python-setuptools \
  build-essential
