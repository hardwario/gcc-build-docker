# Overview

Docker for build application written in c or cpp and testing

## Example
```
docker run --rm -it -v `pwd`:/builds hardwario/gcc-build:latest make 
```

## Workdir
* /builds

## Environment
* LC_ALL=C.UTF-8
* LANG=C.UTF-8

## Additional packages
* build-essential 
* make 
* cmake 
* python3 
* python3-pip 
* python3-venv 
* ruby 
* ruby-dev 
* rubygems
* sudo 
* zip 
* curl 
* wget 
* git

## PIP3 packages
* PyYAML 
* requests 
* jsonschema 
* deepdiff

## Gem packages
* fpm

## Local build
```
docker build -t gcc-build .
```


