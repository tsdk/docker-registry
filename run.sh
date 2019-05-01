#!/bin/bash

docker run \
    --name docker-hub \
    -d \
    -p 5000:5000 \
    -v ~/src/docker-registry:/var/lib/registry \
    --restart always \
    docker.mirrors.ustc.edu.cn/library/registry

#get pipework
#git clone https://github.com/jpetazzo/pipework.git
docker=docker-hub
ip=192.168.82.253
gw=192.168.82.2
sudo env "PATH=$PATH" pipework br0 $docker $ip/24@$gw
echo "docker exec -it $docker sh"
