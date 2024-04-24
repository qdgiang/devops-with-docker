#!/bin/bash

# get the first cli arguemtn as GitHub username name
github_username=$1
github_reponame=$2
docker_name=$3

# clone the repository
git clone "https://github.com/$1/$2.git"

# build the Dockerfile
cd $2
docker build -t $docker_name .

# push to Dockerhub
docker push $docker_name