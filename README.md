# docker-registry

## get pipework

git clone https://github.com/jpetazzo/pipework.git

sudo echo '
{
  "registry-mirrors": [
    "https://docker.mirrors.ustc.edu.cn/",
    "https://registry.docker-cn.com"
  ],
  "insecure-registries": [
    "192.168.82.253:5000"
  ]
}
' > /etc/docker/daemon.json
sudo systemctl restart docker
